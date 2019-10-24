<?php get_header(); ?>
<div class="container container--narrow page-section">

    <?php

    while (have_posts()) {

        the_post(); ?>

        <h3><?php the_title(); ?></h3>

        <?php the_content(); ?>

        <p><b>Published by:</b> <?php the_author(); ?> <b>&nbsp;On:</b> <?php the_time('F j, Y g:i a'); ?></p>
        <hr><br><br>

    <?php  } ?>



</div>

<?php get_footer(); ?>