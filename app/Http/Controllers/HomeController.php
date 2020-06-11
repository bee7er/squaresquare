<?php

namespace App\Http\Controllers;

use Illuminate\Auth\Guard;

use App\Notice;
use App\Resource;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
	/**
	 * The Guard implementation.
	 *
	 * @var Guard
	 */
	protected $auth;

	/**
	 * Create a new filter instance.
	 *
	 * @param  Guard  $auth
	 * @return void
	 */
	public function __construct(Guard $auth)
	{
		$this->auth = $auth;
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		$resources = Resource::select(
			array(
				'resources.id',
				'resources.name',
				'resources.description',
				'resources.titleThumb',
				'resources.thumb',
				'resources.useThumbHover',
				'resources.url',
				'resources.type',
				'resources.seq',
				'resources.deleted_at'
			)
		)
			->orderBy("resources.seq")
			->limit(999)->get();

		if ($resources->count() > 0) {
			// Grab the first entry, it is the title entry
			$titleResource = $resources->shift();
			if (null == $titleResource->titleThumb) {
				$titleResource->titleThumb = $titleResource->thumb;
				$titleResource->titleHover = str_replace('th.', 'hv.', $titleResource->thumb);
			} else {
				$titleResource->titleHover = str_replace('tl.', 'tlhv.', $titleResource->titleThumb);
			}
			// Derive the hover title image for each remaining entry and add it to the object
			foreach ($resources as &$resource) {
				$resource->hover = str_replace('th.', 'hv.', $resource->thumb);
				// If we are to use the hover then generate the necessary HTML
				$resource->hoverActions = '';
				if ($resource->useThumbHover) {
					$resource->hoverActions = sprintf('onmouseover="this.src=\'%s\'" onmouseout="this.src=\'%s\'"',
						$resource->hover, $resource->thumb);
				}
				// Check if the thumb is in fact a video
				if (false !== strpos($resource->thumb, '.mp4')) {
					$resource->video = $resource->thumb;
				}
			}

			// Make sure we have an even number of entries, which is a factor of 3
			$count = $resources->count();

			$first = null;
			$useImage = 0;
			while (($count % 3) !== 0) {
				$use = clone($resources->get($useImage));
				$use['id'] = (9999 + $useImage);        // Dummy unique id
				$resources = $resources->merge([$use]);
				$count = $resources->count();
				$useImage++;
			}
		}

		$notices = Notice::select(
			array(
				'notices.id',
				'notices.seq',
				'notices.notice',
				'notices.url',
				'notices.deleted_at'
			)
		)
			->orderBy("notices.seq")
			->limit(999)->get();

		$loggedIn = false;
		if ($this->auth->check()) {
			$loggedIn = true;
		}

		return view('pages.home', compact('resources', 'titleResource', 'notices', 'loggedIn'));
	}

}
