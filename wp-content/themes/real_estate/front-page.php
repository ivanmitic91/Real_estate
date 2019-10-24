<?php get_header();

$real_estate_events = new WP_Query(array(

    'posts_per_page' => -1,
    'post_type' => 'real_estate',

));
?>

<div class="events">
    <?php
    while ($real_estate_events->have_posts()) {

        $real_estate_events->the_post();  ?>

        <div class="event-summary">

            <div>
                <h3><?php the_title(); ?></h3>
                <h4><?php echo get_field('subtitle'); ?></h4>
                <?php

                    $image = get_field('image');
                    if (!empty($image)) : ?>
                    <img class="image-size" src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                <?php endif; ?>


                <p><?php
                        echo get_the_content();
                        ?> </p>

                <?php

                    if ($post->post_author == $current_user->ID || current_user_can('administrator')) : ?>

                    <p><a class='btn btn-primary' href="<?php the_permalink(); ?>" class="nu gray">Edit</a></p>

                <?php endif; ?>

            </div>
        </div>


        <p>Location: <?php the_terms(get_the_ID(), 'location'); ?> Type: <?php the_terms(get_the_ID(), 'type'); ?><?php ?></p>
        <hr><br><br>

    <?php } ?>

</div>

<?php
get_footer(); ?>