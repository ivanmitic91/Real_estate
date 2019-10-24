<div class="events">
    <?php
    while (have_posts()) : the_post(); ?>
        <h1><?php the_title(); ?></h1>
        <h2><?php echo get_field('subtitle'); ?></h2>
        <?php

            $image = get_field('image');
            if (!empty($image)) : ?>
            <img class="image-size" src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
        <?php endif; ?>

        <p><?php

                echo get_the_content();
                ?> </p>
        <hr><br><br>


    <?php endwhile; ?>
</div>