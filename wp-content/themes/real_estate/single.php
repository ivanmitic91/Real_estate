<?php
get_header();

?>
<div class="events">

    <?php

    while (have_posts()) {

        the_post(); ?>

        <h2><?php the_title(); ?></h2>

        <?php the_content(); ?>

    <?php  }

    get_footer();

    ?>
</div>