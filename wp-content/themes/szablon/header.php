<!doctype html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ); ?>">
        <meta name="author" content="Błażej Skrzypniak">
        <meta name="robots" content="index, follow">
        <meta name="googlebot" content="index, follow">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="theme-color" content="#fff">
        
        <title>
            <?php 
                if (is_front_page()) {
                    echo bloginfo('name');
                } else {
                    echo get_the_title(); echo ' · '; echo bloginfo('name'); 
                }
            ?>
        </title>
        
        <link href="<?php echo get_stylesheet_directory_uri(); ?>/dist/css/reset.css" rel="stylesheet">
        <link href="<?php echo get_stylesheet_directory_uri(); ?>/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo get_stylesheet_directory_uri(); ?>/dist/css/fancybox.min.css" rel="stylesheet">
        <link href="<?php echo get_stylesheet_directory_uri(); ?>/style.css" rel="stylesheet">
        
        <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com" rel="preconnect">
        <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bitter:wght@600&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
        
        <?php wp_head(); ?>
    </head>
    <body>
        <div class="container-fluid">
    	   <?php get_template_part( 'template-parts/header/site-header' ); ?>