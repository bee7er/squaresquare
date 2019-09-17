-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2019 at 08:29 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `russethe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL,
  `position` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `user_id_edited` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `position`, `name`, `lang_code`, `user_id`, `user_id_edited`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'English', 'gb', NULL, NULL, '2016-10-16 12:04:38', '2016-10-16 12:04:38', NULL),
(2, NULL, 'Српски', 'rs', NULL, NULL, '2016-10-16 12:04:38', '2016-10-16 12:04:38', NULL),
(3, NULL, 'Bosanski', 'ba', NULL, NULL, '2016-10-16 12:04:38', '2016-10-16 12:04:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_18_195027_create_languages_table', 1),
('2016_07_09_131600_create_templates_table', 1),
('2016_07_09_131700_create_resources_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) unsigned NOT NULL,
  `seq` decimal(5,2) unsigned DEFAULT '0.00',
  `notice` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `seq`, `notice`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1.00, 'Spitfire Olympops interview xx xxx xx xxx xx yyyy yy yyyyyy y y yy y', 'https://www.stashmedia.tv/skateboarding-spider-takes-bathroom-stash-magazine/', '2018-09-16 10:15:00', '2018-09-16 10:15:00', NULL),
(2, 2.00, 'Lecture in Progress interview', 'http://www.russelletheridge.com', '2018-09-16 09:20:57', '2018-09-16 09:35:12', NULL),
(3, 3.00, '.net Magazibe feature', NULL, '2018-09-23 15:38:40', '2018-09-23 09:38:54', NULL),
(4, 4.00, 'Olympops on Motionographer', NULL, '2018-09-23 09:39:35', '2018-09-23 09:39:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `id` int(10) unsigned NOT NULL,
  `type` enum('video','gif','image') COLLATE utf8_unicode_ci NOT NULL,
  `seq` decimal(5,2) unsigned DEFAULT '0.00',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_a` text COLLATE utf8_unicode_ci,
  `content_b` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `type`, `seq`, `title`, `name`, `description`, `content_a`, `content_b`, `image`, `thumb`, `url`, `template_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'video', 2.00, 'olympops', 'olympops', '<p>A few months before the Rio Olympics 2016, Animade tasked me with creating some fun animations in celebration of the events.</p>\r\n<p>Every great idea starts with a great pun and Olympops was no exception. Many gems were suggested that unfortunately didn''t make it, such as ''Olympigs'' and ''Old Limb Pics''. Tom, Ed and I thrashed through possible concepts before settling on squeeze and pump actioned balloons on the verge of popping.</p>\r\n<p>They were originally released as a series of looping animations which you can watch below. Then, as a final send-off we released the full edit which you can sit back and enjoy above.</p>\r\n<p>Sound kindly provided by the incredible award-winning Mutant Jukebox.</p>', NULL, NULL, '', 'olympops_th.jpg', 'https://player.vimeo.com/video/205363016', 13, '2017-02-17 11:19:20', '2017-02-17 11:19:20', NULL),
(2, 'video', 11.00, 'blocks', 'blocks', '<p>This started as an animation technique I created for some unused client work. I decided to develop it into a fun character exploration.</p><p>I asked Sherv from Mutant Jukebox to knock up some sounds and he came back with an awesome little jingle that made it feel like the intro to a kids'' show. It inspired me to add in the title screen at the end.</p><p>If you are a TV producer looking for the next Morph or OOglies, look no further!</p><p>Below are some fun concept photos I made using toy wooden blocks.</p>\r\n', NULL, NULL, '', 'blocks_th.jpg', 'https://player.vimeo\r\n.com/video/202748408', 15, '2017-02-17 11:19:20', '2017-02-17 11:19:20', NULL),
(3, 'video', 3.00, 'weetabix - on the go', 'weetabix-onthego', '<p>A series of quick morning cheats I designed and directed for Weetabix while at Animade. This collection of breakfast busting shorts was used as a supporting social media campaign for their main live action TV ad.</p><p>They tasked us with creating a series of skits and comic strips inspired by aeroplane safety cards. I knocked up some designs and worked with them to develop 15 morning cheat scenarios. Above is a selection of my favourites and below are some of the comic strips.</p>', '', '', '', 'weetabix_th.jpg', 'https://player.vimeo.com/video/205356654', 16, '2016-10-16 12:47:36', '2016-10-16 12:47:36', NULL),
(4, 'video', 4.00, 'bricklane.com', 'bricklane', 'A fun short explaining Bricklane.com property management''s interesting new\r\nproperty based ISA.', NULL, NULL, '', 'bricklane_th.jpg', 'https://player.vimeo.com/video/205358831', 17, '2017-02-17 11:19:20', '2017-02-17 11:19:20', NULL),
(5, 'video', 5.00, 'good hand', 'goodhand', '<p>Good hand, nice hand...</p><p>Have a look at a little edit with sound\r\nbelow!</p><p>Audio kindly provided by my very own brother and sound whizz, Ben Etheridge.</p>', NULL, NULL, '', 'goodHand_th.jpg', 'https://player.vimeo.com/video/208469076', 18, '2017-02-17 11:19:20', '2017-02-17 11:19:20', NULL),
(6, 'video', 6.00, 'train squeeze', 'trainsqueeze', '<p>A series of seriously squeezey moments we can all relate to.</p><p>This little loop inspired by my London commute packed a serious punch for me on social media, perhaps down to it’s sheer universality. Shortly after its release it became one of my most viral successes on Twitter with nearly 1000 likes and hundreds of re-tweets before getting picked up by TimeOut London and receiving over 200k views on their Facebook page.</p><p>The follow-up to the Train Squeeze loop, the Escalator Squeeze loop, also attracted a hefty amount of social media attention, perhaps most impressively being viewed over 1.3 million times on Instagram!</p><p>More coming soon ;o)</p>', NULL, NULL, '', 'trainSqueeze_th.jpg', 'https://player.vimeo.com/video/161372781', 19, '2017-02-17 11:19:20', '2017-02-17 11:19:20', NULL),
(7, 'video', 8.00, 'propz', 'propz', '<p>My feline-vision-aid contribution to the Propz series.</p>', '<p>My valentines-shoe contribution to the Propz series.\r\n</p><p>Check out the rest of the amazing weirdness featuring some of Animade''s top talent over on their vimeo page.\r\n(<a href="https://vimeo.com/channels/propz" target="_blank">https://vimeo.com/channels/propz</a>)\r\n</p>\r\n', '', '', 'propzBinoculars_th.jpg', 'https://player.vimeo\r\n.com/video/122770363', 20, '2016-10-16 12:47:36', '2016-10-16 12:47:36', NULL),
(8, 'video', 7.00, 'bathroom boarder', 'bathroomboarder', 'A little arachnid in my bathroom.', 'Hello from content A', 'Hello from content B', '', 'bathroomBoarder_th.jpg', 'https://player.vimeo\r\n.com/video/161502476', 14, '2016-10-16 12:47:36', '2017-02-17 17:20:36', NULL),
(9, 'video', 9.00, 'gifs for fun', 'gifsforfun', '', '', '', '', 'gifsMisc_th.jpg', 'https://player.vimeo.com/video/145770435', 21, '2016-10-16 12:47:36', '2016-10-16 12:47:36', NULL),
(10, 'video', 10.00, 'the lion', 'thelion', '<p>This project is an award winning animated music video for US based band Escapist Papers. My role was compositor while working closely with the director and main animator on the project, the talented Peter Baynton.</p><p>The animation is a mixture of photographed cardboard cutouts and hand drawn animation composited in After Effects. The main challenge for me on this job was to create the sense that the animation is being filmed in a miniature puppet set. This involved working with an array of cardboard textures and developing a convincing lighting setup. A sense of depth was created through the use of an elaborate shadow set-up and the whole piece was brought together with a pleasing grade.</p>', '<p>AWARDS\r\n</p><p>\r\nBritish Animation Awards, UK 2014<br />\r\nPublic Choice Best Music Video\r\n</p><p>\r\nCrystal Palace International Film Festival, UK 2013<br />\r\nBest Animation\r\n</p><p>\r\nCrystal Palace International Film Festival, UK 2013<br />\r\nBest Music Video\r\n</p><p>\r\nAnnecy International Festival of Animation, France 2013<br />\r\nSpecial Jury Award, Commissioned Films<br />\r\nAnnecy 2013\r\n</p><p>\r\nScreenings:<br />\r\nEdinburgh Fringe Festival 26th June 2013</p>', '', '', 'lion_th.jpg', 'https://player.vimeo.com/video/60453523', 22, '2016-10-16 12:47:36', '2016-10-16 12:47:36', NULL),
(11, 'video', 0.00, 'robbie williams – take the crown', 'robbiewilliams–takethecrown', '<p>Promo for Robbie Williams''s ''Take the Crown'' album release.\r\n</p><p>\r\nThis project was a video to promote Robbie Williams''s ''Take the Crown'' album release. All created in Cinema 4D\r\nand After Effects using 3D scans of Robbie Williams''s head.</p>', '', '', '', 'robbieWilliams_th.jpg', 'http://player\r\n.vimeo.com/video/69224915', 23, '2016-10-16 12:47:36', '2016-10-16 12:47:36', '2018-09-08 13:40:00'),
(12, 'video', 12.00, 'motion design reel', 'motiondesignreel', 'Motion Design showreel from various freelance jobs.', '', '', '', 'motionReel_th.jpg', 'https://player.vimeo.com/video/104406081', 24, '2016-10-16 12:47:36', '2016-10-16 12:47:36', NULL),
(13, 'video', 1.00, 'pirates', 'pirates', 'Teaser for k-pop artist Grizzly''s upcoming EP titled ''ISLAND''.', '', '', '', 'pirates_th.jpg', 'https://player.vimeo.com/video/261834033', 25, '2018-08-25 12:12:00', '2018-08-25 12:12:00', NULL),
(14, 'video', 0.50, 'armstrong teaser', 'armstrong teaser', 'I''m very excited to release the teaser trailer of my short film, Armstrong - currently in production! Follow me on twitter or instagram for the latest updates.', '', '', '', 'armstrong_th.png', 'https://player.vimeo.com/video/290440803', 26, '2019-02-09 14:25:00', '2019-02-09 14:25:00', NULL),
(15, 'video', 0.75, 'MTV', 'MTV ident', 'I was commissioned by MTV to design and direct one of their famous animated idents. The theme was "Energetic". Definitely a privilege to be alongside so many other talented animators going all the way back to the 80s.', '', '', '', 'mtv_th.jpg', 'https://player.vimeo.com/video/346356625', 27, '2019-09-17 09:39:00', '2019-09-17 09:39:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `container`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 'Olympops', '<body style="background-color: #ff0076;" /><style>.template-credits-label{color: #ff0076;}</style>\n    <div class="template-details-title">#TITLE#</div>\n    <div\r\nid="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n<div class="template-row-container">\r\n        <div class="row">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/1.OlympopRings_400sq_EZ.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/2.Diving_400sq_EZ.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/3.Javelin_400sq.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/4.weightLift_400sq.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/5.Wrestling_400sq_EZ.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/6.VuvuReboot_400sq.gif">\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/divingStill.jpg" width="100%" />\r\n        </div>\r\n    </div>\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Director</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n            <div class="template-credits-label">Production</div>\n            <div class="template-credits-text">Animade</div>\n            <div class="template-credits-label">Sound</div>\n            <div class="template-credits-text">Mutant Jukebox</div>\n        </div>\n    </div>', '2017-02-17 11:09:28', '2017-02-17 11:09:28', NULL),
(14, 'Bathroom boarder', '<body style="background-color: #25d7d1;" /><style>.template-credits-label{color: #25d7d1;}</style>\n    <div class="template-details-title">#TITLE#</div>\n    <div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            <img src="#BASE_URL#img/gifs/grindGIF_400x400.gif" width="100%" />\n        </div>\n    </div>\n\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Direction</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n            <div class="template-credits-label">Production</div>\n            <div class="template-credits-text">Animade</div>\n            <div class="template-credits-label">Sound</div>\n            <div class="template-credits-text">Mutant Jukebox</div>\n        </div>\n    </div>', '2017-02-17 11:09:28', '2017-02-17 11:09:28', NULL),
(15, 'Blocks', '<body style="background-color: #f7dd00;" /><style>.template-credits-label{color: #f7dd00;}</style>\n\r\n<div\r\nclass="template-details-title">#TITLE#</div>\n    <div\r\nid="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/1.muscles_01.jpg" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/2.blockyasaur_01.jpg" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/3.belly_01.jpg" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Director</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n   <div class="template-credits-label">Sound</div>\n            <div class="template-credits-text">Mutant Jukebox</div>\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(16, 'Weetabix', '<body style="background-color: #4d82b4;" /><style>.template-credits-label{color: #4d82b4;}</style>\n\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\n    <div\r\nid="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/1.catchTrain.png" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/2.spaceDance.png" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Design and Direction</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n   <div class="template-credits-label">Production</div>\n            <div class="template-credits-text">Animade</div>\n   <div class="template-credits-label">Agency</div>\n            <div class="template-credits-text">Cake</div>\n   <div\r\n    class="template-credits-label">Client</div>\n            <div class="template-credits-text">Weetabix</div>\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(17, 'Bricklane.com', '<body style="background-color: #3b9240;" /><style>.template-credits-label{color: #3b9240;\r\n}</style>\n    <div\r\nclass="template-details-title">#TITLE#</div>\n    <div\r\nid="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n    <div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n\r\n    <div class="template-credits-label">Direction</div>\n<div class="template-credits-text">Russ\r\n    Etheridge</div>\n\r\n    <div class="template-credits-label">Design</div>\n<div class="template-credits-text">Russ\r\n    Etheridge<br />Tom Judd</div>\n\r\n       <div class="template-credits-label">Production</div>\n <div class="template-credits-text">Animade</div>\n\r\n       <div class="template-credits-label">Client</div>\n <div class="template-credits-text">Bricklane.com</div>\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(18, 'Good hand', '<body style="background-color: #00ffbb;" /><style>.template-credits-label{color: #00ffbb;\r\n}</style>\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n\r\n<div class="template-row-container">\r\n        <div class="row">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_gooFlop_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_handGoo_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_magicBox_BOTTOM_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_magicBox_TOP_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_thingWalk_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_gooFlop_400px.gif">\r\n        </div>\r\n    </div>\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n\r\n    <div class="template-credits-label">Design and Direction</div>\n<div\r\n    class="template-credits-text">Russ\r\n    Etheridge</div>\n\r\n    <div class="template-credits-label">Sound</div>\n<div class="template-credits-text">Ben\r\n    Etheridge</div>\n       </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(19, 'Squeeze', '<body style="background-color: #0028ab;" /><style>.template-credits-label{color: #0028ab;}</style>\n\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="https://player.vimeo.com/video/200832260/" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/gifs/1.trainSqueeze_450x450.gif" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/gifs/2.EscalatorSqueeze_04_450sq_EZ.gif" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n        <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/3.peepsStill.jpg" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Design and Direction</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n   <div class="template-credits-label">Production</div>\n            <div class="template-credits-text">Animade</div>\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(20, 'Propz', '<body style="background-color: #1c968a;" /><style>.template-credits-label{color: #1c968a;}</style>\n\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame-1" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame-2" class="video-frame" src="https://player.vimeo.com/video/119444475/" frameborder="0" webkitallowfullscreen mozallowfullscreen\n            allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n #CONTENT_A#\n        </div>\n    </div>\n\n\r\n\r\n    <div class="template-credits-title">credits</div>\n    <div class="row template-credits-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n            <div class="template-credits-label">Director</div>\n            <div class="template-credits-text">Russ Etheridge</div>\n   <div class="template-credits-label">Production</div>\n            <div class="template-credits-text">Animade</div>\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(21, 'Gifs for Fun', '<body style="background-color: #00daff;" /><style>.template-credits-label{color: #00daff;\r\n}</style>\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n\r\n<div class="template-row-container">\r\n        <div class="row">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/1.gf_bike_10_500x500.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/2.gf_chipWaffle_02_400.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/3.gf_pistachios_400sq.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/4.gf_blizzard_01.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/5.gf_fringe_031.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/6.gf_tents_scene_10_500x500.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/1.trainSqueeze_450x450.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/2.EscalatorSqueeze_04_450sq_EZ.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_gooFlop_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_handGoo_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_magicBox_BOTTOM_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_magicBox_TOP_400px.gif">\r\n            <img class="details-work-image col-xs-12 col-sm-6 col-md-6 col-lg-4" src="../img/gifs/gh_thingWalk_400px.gif">\r\n            <img class="details-work-image hidden-xs col-sm-6 col-md-6 col-lg-4" src="../img/gifs/1.gf_bike_10_500x500.gif">\r\n            <img class="details-work-image hidden-xs hidden-sm hidden-md col-lg-4" src="../img/gifs/2.gf_chipWaffle_02_400.gif">\r\n        </div>\r\n    </div>\r\n\r\n        <div class="hidden-xs col-sm-12 hidden-md hidden-lg header-block">\r\n\r\n    </div>\r\n\r\n', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(22, 'The Lion', '<body style="background-color: #cf6689;" /><style>.template-credits-label{color: #cf6689;}</style>\n\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n\r\n    <div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            <img src="../img/stills/lionRhinoStill.jpg" width="100%" />\r\n        </div>\r\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n #CONTENT_A#\n        </div>\n    </div>\n\n\r\n\r\n    <div class="template-credits-title">credits</div>\n\r\n    <div class="row template-credits-row-container">\n\r\n      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n\r\n        <div class="template-credits-label">Director</div><div class="template-credits-text">Peter Baynton</div>\n\r\n        <div class="template-credits-label">Animation</div>\n <div class="template-credits-text">PeterBaynton<br>Tim McCourt<br>Laura Nailor</div>\n\r\n        <div class="template-credits-label">Compositing, Grading and Finishing</div>\n <div\r\n        class="template-credits-text">Russ Etheridge</div>\n\r\n        <div class="template-credits-label">Music</div>\n <div\r\n        class="template-credits-text">Benjamin Scheuer</div>\n\r\n      </div>\n\r\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(23, 'Robbie Williams', '<body style="background-color: #00daff;" /><style>.template-credits-label{color: #00daff;\r\n}</style>\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>\n\n\r\n\r\n    <div class="template-credits-title">credits</div>\n\r\n    <div class="row template-credits-row-container">\n\r\n      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\n\r\n        <div class="template-credits-label">Design</div><div class="template-credits-text">Ros Urien</div>\n\r\n        <div class="template-credits-label">Animation</div>\n <div class="template-credits-text">Russ Etheridge</div>\n\r\n        <div class="template-credits-label">Client</div>\n <div\r\n        class="template-credits-text">Robbie Williams</div>\n\r\n      </div>\n\r\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(24, 'Motion Design Reel 2014', '<body style="background-color: #f7dd00;" /><style>.template-credits-label{color:\r\n#f7dd00;}</style>\n    <div\r\nclass="template-details-title">#TITLE#</div>\n\r\n<div id="video-panel" class="row template-row-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\n        </div>\n    </div>\n\n\r\n\r\n<div class="row template-row-container template-sub-container">\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\n            #DESCRIPTION#\n        </div>\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(25, 'Pirates', '<body style="background-color: #ff0d35;" /><style>.template-credits-label{color: #00daff;\r\n}</style>\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\r\n\r\n<div id="video-panel" class="row template-row-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">\r\n            <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n<div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            #DESCRIPTION#\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n    <div class="template-credits-title">credits</div>\r\n\r\n    <div class="row template-credits-row-container">\r\n\r\n      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\r\n\r\n        <div class="template-credits-label">Director</div><div class="template-credits-text">Russ Etheridge</div>\r\n\r\n        <div class="template-credits-label">Music</div>\r\n <div\r\n        class="template-credits-text">Grizzly</div>\r\n\r\n        <div class="template-credits-label">Production</div>\r\n <div\r\n        class="template-credits-text">EGO Entertainment</div>\r\n      </div>\r\n\r\n    </div>', '2017-02-23 11:09:28', '2017-02-23 11:09:28', NULL),
(26, 'Armstrong', '<body style="background-color: #001b8f;" /><style>.template-credits-label{color: #00daff;\r\n}</style>\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\r\n\r\n<div id="video-panel" class="row template-row-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container" >\r\n            <iframe id="video-frame" class="video-frame"  src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n<div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            #DESCRIPTION#\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n    <div class="template-credits-title">credits</div>\r\n\r\n    <div class="row template-credits-row-container">\r\n\r\n      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\r\n\r\n        <div class="template-credits-label">Director</div><div class="template-credits-text">Russ Etheridge</div>\r\n\r\n        <div class="template-credits-label">Writers</div>\r\n <div\r\n        class="template-credits-text">Ayndrilla Singharay</div>\r\n<div class="template-credits-text">Russ Etheridge</div>\r\n\r\n        <div class="template-credits-label">Production</div>\r\n <div\r\n        class="template-credits-text">SquareSquare</div>\r\n      </div>\r\n\r\n        <div class="template-credits-label">Sound</div>\r\n <div\r\n        class="template-credits-text">Mutant Jukebox</div>\r\n      </div>\r\n\r\n    </div>', '2019-02-09 14:16:28', '2019-02-09 14:16:28', NULL),
(27, 'MTV', '<body style="background-color: #ff5e00;" /><style>.template-credits-label{color: #00daff;\r\n}</style>\r\n    <div\r\nclass="template-details-title">#TITLE#</div>\r\n\r\n<div id="video-panel" class="row template-row-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container" >\r\n            <iframe id="video-frame" class="video-frame"  src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n<div class="row template-row-container template-sub-container">\r\n        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">\r\n            #DESCRIPTION#\r\n        </div>\r\n    </div>\r\n\r\n\r\n\r\n    <div class="template-credits-title">credits</div>\r\n\r\n    <div class="row template-credits-row-container">\r\n\r\n      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">\r\n\r\n        <div class="template-credits-label">Director &amp; Designer</div><div class="template-credits-text">Russ Etheridge</div>\r\n\r\n        <div class="template-credits-label">Animation Production</div>\r\n <div\r\n        class="template-credits-text">SquareSquare</div>\r\n        <div class="template-credits-label">Audio Production</div>\r\n <div\r\n        class="template-credits-text">Mutant Jukebox</div>\r\n      </div>\r\n\r\n        <div class="template-credits-label">Client</div>\r\n <div\r\n        class="template-credits-text">MTV International</div>\r\n      </div>\r\n\r\n    </div>', '2019-09-17 09:33:00', '2019-09-17 09:33:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `confirmation_code`, `confirmed`, `admin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brian', 'brian', 'betheridge@gmail.com', '$2y$10$I5coxELkOeXrr7O1L/CIQu3iDmyPOWtYh9zgt49mtaHWxy..l5np.', 'dcd443e19e4b041168dfb5e83a52d64e', 1, 1, 'XHWdCTKEo19Ul3jdRB7lscIayw3vM50mi19aM1wNVCbCbrosVzRkPVWDnfJ3', '2016-07-17 13:51:04', '2018-09-23 10:23:07', NULL),
(2, 'Russ', 'russ', 'contact@russelletheridge.com', '$2y$10$X5bx1fN65trumkmfohKVrO4bG74vMqwvjU7XoRXoYzF1BwcDWZgC6', '460a2c34e121cde19a6f7e1032db472e', 1, 1, NULL, '2016-07-17 13:51:05', '2018-09-16 12:14:33', NULL),
(3, 'Test User', 'test_user', 'user@user.com', '$2y$10$kfbDKLFLt3izY/P7L7Cjj.5Pnx.p2X..bO2fJNUaGX7MZ/5KTU/XK', '49b09443042a2611da1db89544b6d4c6', 1, 0, NULL, '2016-07-17 13:51:05', '2016-07-17 13:51:05', NULL),
(4, 'SethAgostini', '', 'angelos@gitmail.ovh', '$2y$10$FW32uld.03lfT4Q/txmMW.mGgDZnVdMiXaZ02L1mvBXadP4NSWqDy', '', 0, 0, NULL, '2017-04-06 13:53:15', '2017-04-06 13:53:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_lang_code_unique` (`lang_code`),
  ADD KEY `languages_user_id_foreign` (`user_id`),
  ADD KEY `languages_user_id_edited_foreign` (`user_id_edited`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resources_template_id_foreign` (`template_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_user_id_edited_foreign` FOREIGN KEY (`user_id_edited`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
