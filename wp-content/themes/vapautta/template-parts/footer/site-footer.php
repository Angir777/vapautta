<?php 
    include get_template_directory() . '/template-parts/options/options.php';
?>
<div class="row pb-5 w-footer-info">
    <div class="col-xl-12 p-5 d-flex justify-content-center">
        <i class="fab fa-instagram pe-3 w-insta-logo"></i> <span class="w-insta-nick"><a href="<?php echo $instagram_url_3; ?>" title="" target="_blank" rel="nofollow">@<?php echo $instagram_4; ?></a></span>
    </div>
    <?php /*
    <div class="col-xl-12 pb-5 ps-0 pe-0 text-center">
        <?php echo do_shortcode("[instagram-feed]"); ?>
    </div>
    */ ?>
    <div class="col-xl-12">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-1"></div>
                <div class="col-md-12 col-xl-10 pt-4 mx-auto">
                    <div class="w-text-logo-white mb-4">
                        <?php
                            $company = explode(" ", $nazwa_firmy_7);
                            echo $company[0] . '<br><b>' . $company[1] . '</b>';
                        ?>
                    </div>
                </div>
                <div class="col-xl-1"></div>
            </div>
            <div class="row">
                <div class="col-xl-1"></div>
                <div class="col-md-12 col-xl-4 mx-auto mb-4">
                    <p class="w-footer-about">
                        <?php 
                            if (pll_current_language() == 'pl' ) {
                                echo $opis_firmy_pl_8;
                            } else {
                                echo $opis_firmy_de_9;
                            }
                        ?>
                    </p>
                </div>
                
                <div class="col-md-4 col-xl-2 mx-auto mb-4">
                    <p class="w-footer-text">
                        <?php echo $nazwa_firmy_7; ?><br>
                        <?php echo $imi_i_nazwisko_10; ?><br>
                        <?php echo $adres_11; ?><br>
                        <?php echo $kod_pocztowy_12; ?><br><br>
                        <?php echo $nip_13; ?>
                    </p>
                </div>
                <div class="col-md-4 col-xl-2 mx-auto mb-4">
                    <p class="w-footer-text">
                        <?php echo $telefon_1_0; ?><br>
                        <?php echo $telefon_2_1; ?><br>
                        <?php echo $email_2; ?>
                    </p>
                </div>
                <div class="col-md-4 col-xl-2 mx-auto mb-md-0 mb-4 w-menu-footer">
                    <?php 
                        wp_nav_menu(array(
                            "theme_location" => "footer1-menu",
                            "container" => "",
                            "menu_class" => "nav-footer1"
                        ));
                    ?>
                </div>
                <div class="col-xl-1"></div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <a href="<?php echo $mapa_url_6; ?>" class="w-pm-0" title="" target="_blank" rel="nofollow">
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/dist/img/footer-map.jpg" alt="mapa">
    </a>
</div>
<div class="row w-footer-links pt-4 pb-2">
    <div class="col-lg-1"></div>
    <div class="col-lg-8 w-links-left">
        <span class="pe-3"><?php echo $nazwa_firmy_7; ?> <?php echo date("Y"); ?></span> |
        <?php 
            wp_nav_menu(array(
                "theme_location" => "footer2-menu",
                "container" => "",
                "menu_class" => "nav-footer2"
            ));
        ?>
    </div>
    <div class="col-lg-2 w-links-right">
        <span class="ps-2"><a href="<?php echo $instagram_url_3; ?>" title="" target="_blank" rel="nofollow"><i class="fab fa-instagram"></i></a></span>
        <span class="ps-3"><a href="<?php echo $facebook_url_5; ?>" title="" target="_blank" rel="nofollow"><i class="fab fa-facebook-f"></i></a></span>
    </div>
    <div class="col-lg-1"></div>
</div>
<div class="row">
    <div class="col p-4 d-flex justify-content-center">
        <p class="mb-0">Made with love to create websites!</p>
    </div>
</div>