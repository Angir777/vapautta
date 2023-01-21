<section>
    <div class="row page-content">
        <div class="col-xl-1"></div>
        <div class="col-xl-10">
            <div class="mt-3 mb-3">
                <?php the_content(); ?>
            </div>
        </div>
        <div class="col-xl-1"></div>
    </div>
</section>
<section class="row">
    <div class="col-xl-1"></div>
    <div class="col-xl-10">
        <div class="row">
            <?php

            $args = [
                'post_type' => 'realizations',
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