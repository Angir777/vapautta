<?php $banner = get_field('banner'); ?>
<section class="row">
    <div class="col-xl-1"></div>
    <div class="col-xl-6">
        <div class="w-section-one-left">
            <div class="w-section-one-text">
                <h1><?php echo $banner['heading'] ?></h1>
                <p class="pt-3 pb-3"><?php echo $banner['subheading'] ?></p>
                <a href="<?php echo $banner['button']['url'] ?>" class="btn btn-primary w-button" title="<?php echo $banner['button']['text'] ?>"><?php echo $banner['button']['text'] ?></a>
            </div>
        </div>
    </div>
    <div class="col-xl-5 w-section-one-right">
        <div class="w-image"></div>
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/dist/img/w-photo.png" alt="image" class="w-image-small">
    </div>
</section>

<?php $section_1 = get_field('section_1'); ?>
<section class="row mt-4">
    <div class="col-xl-1"></div>
    <div class="col-xl-10 w-page-content">
        <h2><?php echo $section_1['heading'] ?></h2>
        <div class="row">
            <div class="col-xl-6 w-text">
                <p><?php echo $section_1['column_1']['text'] ?></p>
            </div>
            <div class="col-xl-6 w-text">
                <p><?php echo $section_1['column_2']['text'] ?></p>
                <a href="<?php echo $section_1['column_2']['button']['url'] ?>" class="btn btn-primary w-button float-end" title="<?php echo $section_1['column_2']['button']['text'] ?>"><?php echo $section_1['column_2']['button']['text'] ?></a>
            </div>
        </div>
    </div>
    <div class="col-xl-1"></div>
</section>

<?php $section_2 = get_field('section_2'); ?>
<section class="row">
    <div class="col-xl-1"></div>
    <div class="col-xl-10 w-page-content">
        <h2><?php echo $section_2['heading'] ?></h2>
        <p class="w-text"><?php echo $section_2['text'] ?></p>
        <div class="row">
            <?php $offer_banner = get_field('offer_banner'); ?>
            <?php

            $args = [
                'post_type' => $offer_banner,
            ];

            $query = new WP_Query($args);

            ?>
            <?php if($query->have_posts()) : ?>
            <?php while($query->have_posts()) : $query->the_post(); ?>
                <div class="col-md-6 col-xl-4">
                    <a href="<?php echo get_the_permalink() ?>" title="<?php echo get_the_title(); ?>">
                        <div class="w-offer-image" style="background-image: url(<?php echo get_the_post_thumbnail_url(get_the_ID(), 'full'); ?>);">
                            <div class="w-offer-name"><h3><?php echo get_the_title(); ?></h3></div>
                        </div>
                        <div class="row w-offer-link">
                            <div class="col-xl-10 w-offer-description">
                                <?php
                                    $post_string = get_post_field('post_content', $post_id);
                                    $post_lead = substr($post_string,0,200);
                                    echo $post_lead . ' [...]'; 
                                ?>
                            </div>
                            <div class="col-xl-2">
                                <div class="w-offer-arrow">
                                    <i class="fas fa-arrow-down"></i>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            <?php endwhile;  ?>
            <?php else: wp_reset_query(); ?>
                <div class="col"></div>
            <?php endif;  ?>
        </div>
    </div>
    <div class="col-xl-1"></div>
</section>