<section>
    <div class="row page-content">
        <div class="col-xl-1"></div>
        <div class="col-xl-10">
            <div class="mt-3 mb-3">
                <?php $headings = get_field('headings'); ?>
                <h2 class="w-mb-4"><small><?php echo $headings['heading_1'] ?> / </small><?php echo $headings['heading_2'] ?></h2>
                <?php the_content(); ?>
            </div>
        </div>
        <div class="col-xl-1"></div>
    </div>
</section>