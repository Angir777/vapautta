			<footer class="w-mt-5">
			    <?php get_template_part('template-parts/footer/site-footer'); ?>
			</footer>

		</div>

        <script src="<?php echo get_stylesheet_directory_uri(); ?>/dist/js/jquery-3.6.0.min.js"></script>
        <script src="<?php echo get_stylesheet_directory_uri(); ?>/dist/js/bootstrap.min.js"></script>
        <script src="<?php echo get_stylesheet_directory_uri(); ?>/dist/js/fancybox.min.js"></script>
        <script src="<?php echo get_stylesheet_directory_uri(); ?>/dist/js/scroll-detector.js"></script>

        <?php wp_footer(); ?>

        <script>
            // back to top
			$(function () {
	            var btn = $('#backToTop');
	            $(window).scroll(function() {
	              if ($(window).scrollTop() > 300) {
	                btn.addClass('show');
	              } else {
	                btn.removeClass('show');
	              }
	            });
	            btn.on('click', function(e) {
	              e.preventDefault();
	              $('html, body').animate({scrollTop:0}, '300');
	            });
            })
        </script>
    </body>
</html>