
This is the code for Russell's website.

This version is Homestead / Vagrant

To run locally in Chrome:

    http://squaresquare.test

    http://squaresquare.test/auth/login

    with betheridge@gmail.com / Cando

Use GIT.

Mysql:

    use the vagrant ssh command line:
	
		mysql -uroot -psecret
		
	GRANT ALL ON russ_201910.* TO russ@'localhost' IDENTIFIED BY 'Canopy84';
	GRANT ALL ON russ_20200607.* TO russ@'localhost' IDENTIFIED BY 'Canopy84';



20200216

    Update to armstrong from armstrong teaser

    Description=I'm very excited to release the teaser trailer of my short film, Armstrong - currently in production! Follow me on twitter or instagram for the latest updates.

    url=https://player.vimeo.com/video/290440803

#***************** update containers
    update resources set title='armstrong', name='armstrong', description='I\'m very excited to release my short film, Armstrong.', url='https://player.vimeo.com/video/388448718' where id=14;


    templates, id=26

    =====================

#***************** update templates
    update templates set container='<body style="background-color: #001b8f;" /><style>.template-credits-label{color: #00daff;
    }</style>
        <div
    class="template-details-title">#TITLE#</div>

    <div id="video-panel" class="row template-row-container">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 video-frame-container">
                <iframe id="video-frame" class="video-frame" src="#URL#" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            </div>
        </div>



    <div class="row template-row-container template-sub-container">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">
                #DESCRIPTION#
            </div>
        </div>


    <!-- Start of new tags for changes 20200216 -->

    <div class="row template-row-container template-sub-container">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">
                    here is some new text
                </div>
            </div>



    <div class="row template-row-container template-sub-container">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">
                    <img src="../img/stills/divingStill.jpg" width="100%">
                </div>
            </div>


    <!-- End of changes 20200216 -->


        <div class="template-credits-title">credits</div>

        <div class="row template-credits-row-container">

          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <div class="template-credits-label">Director</div><div class="template-credits-text">Russ Etheridge</div>

            <div class="template-credits-label">Writers</div>
     <div
            class="template-credits-text">Ayndrilla Singharay</div>
    <div class="template-credits-text">Russ Etheridge</div>

            <div class="template-credits-label">Production</div>
     <div
            class="template-credits-text">SquareSquare</div>
          </div>

            <div class="template-credits-label">Sound</div>
     <div
            class="template-credits-text">Mutant Jukebox</div>
          </div>

        </div>
        </div>' where id=26;



        =========================