<?php 
    if (is_front_page()) {
        $active_class = '';
    } else {
        $active_class = 'w-page';
    }
    include get_template_directory() . '/template-parts/options/options.php';
?>
<header class="row fixed-top <?php echo $active_class; ?>">
    <div class="col-xl-1 w-left"></div>
    <div class="col-xl-6 w-left ps-3 pe-4">
        <div class="row p-0">
            <div class="col-6 col-sm-6 col-lg-2 col-xl-2 w-pm-0">
                <a class="navbar-brand w-pm-0" href="<?php echo home_url(); ?>" title=""> 
                    <?php
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
                        if ( has_custom_logo() ) {
                            echo '<img src="' . esc_url( $logo[0] ) . '" alt="' . get_bloginfo( 'name' ) . '" class="w-logo">';
                        } else {
                            $company = explode(" ", $nazwa_firmy_12);
                            echo '<span class="w-logo-text">' . $company[0] . '<br><b>' . $company[1] . '</b></span>';
                        }
                    ?>
                </a>
            </div>
            <div class="col-6 col-sm-6 col-lg-10 col-xl-9">
                <div class="row">
                    <div class="col-sm-12 col-lg-4 col-xl-4 w-nav-lang">
                        <ul class="polylang-menu">
                            <?php pll_the_languages();?>
                        </ul>     
                    </div>
                    <div class="col-sm-12 col-lg-8 col-xl-8 w-nav-contact">
                        <div class="row">
                            <div class="col-sm-12 col-lg-6 col-xl-6">
                                <span><i class="fas fa-phone-alt"></i> <a href="tel:<?php echo $telefon_1_0 ?>" title=""><?php echo $telefon_1_0 ?></a></span>
                            </div>
                            <div class="col-sm-12 col-lg-6 col-xl-6">
                                <span><i class="fas fa-paper-plane"></i> <a href="mailto:<?php echo $email_2 ?>" title=""><?php echo $email_2 ?></a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-12 col-xl-1"></div>
        </div>
        <div class="row">
            <div class="col-xl-2"></div>
            <div class="col-xl-9">
                <nav class="navbar navbar-expand-lg navbar-light w-pm-0">
                    <div class="container-fluid w-pm-0">
                        <div class="navbar-brand"></div>
                        <button class="navbar-toggler m-1" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <?php 
                                wp_nav_menu(array(
                                    "theme_location" => "header-menu",
                                    "container" => "",
                                    "menu_class" => "navbar-nav ms-auto mb-2 mb-lg-0",
                                    "walker" => new My_Walker_Nav_Menu(),
                                    "my_menu_li_class" => "nav-item",
                                    "my_menu_a_class" => "nav-link"
                                ));
                            ?>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="col-lg-12 col-xl-1"></div>
        </div>
    </div>
    <div class="col-xl-5 w-right">
        <div class="row">
            <div class="col w-social-icons">
                <span class="ps-2"><a href="<?php echo $instagram_url_3 ?>" title="" target="_blank" rel="nofollow"><i class="fab fa-instagram"></i></a></span>
                <span class="ps-3"><a href="<?php echo $facebook_url_5 ?>" title="" target="_blank" rel="nofollow"><i class="fab fa-facebook-f"></i></a></span>
            </div>
        </div>    
    </div>
</header>
<section id="backToTop" class="show"></section>