
This is the code for Russell's website.

This version is Homestead / Vagrant

To run locally in Chrome:

    http://russ.test

    http://russ.test/auth/login

    with betheridge@gmail.com / Cando

Use GIT

    Setting the remore to use SSH
    git remote set-url origin git@github.com:bee7er/squaresquare.git

Mysql:

    use the vagrant ssh command line:
	
		mysql -uroot -psecret
		
	GRANT ALL ON russ_201910.* TO russ@'localhost' IDENTIFIED BY 'Canopy84';
	GRANT ALL ON russ_20200607.* TO russ@'localhost' IDENTIFIED BY 'Canopy84';

# 20200622 Switched on Let's Encrypt and added the https redirect in .htaccess
# 20200809 There was a delayed redirect to russetheridge.com in the app layout, but Russ
   
    requested that it redirect immediately so I placed a 301 in the .htaccess for the site

    We no longer need this as squaresquare domain has gone

    # Redirect 301 / https://russetheridge.com/

# Change to be done 2021/09/30

    Add a new menu option Tutorials after work

    New section entitled Tutorials initially above blog

    Try adding a new Resource called *Tutorials

    The contents allow a hash tag in the title

    Use the hashtag to group contents

    Each hashtag appears as a title (centred) to a section within the Tutorials block

    The contents are a thumb nail (small and left aligned) and description (centred)

Webpack

    For packaging up the js and css resources in Laravel

    Look at webpack.mix.js

    We run the compilation of these with node:

        npm -v      # to see which version is installed

        # Run install of all the dependencies defined in package.json
        # Note that this adds thousands of files to the project
        # To stop these from being indexed go to PhpStorm | Preferences | Project | Directories and exclude node_modules

        npm install

        # To run the compile, as shown in the package.json file, run:

        npm run development

        # or

        npm run dev