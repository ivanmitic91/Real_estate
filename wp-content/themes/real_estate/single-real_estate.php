<?php
get_header();
?>
<div class="events">

    <?php
    while (have_posts()) {

        the_post(); ?>

        <form action="functions.php" method="POST">

            <div class="form-group">
                <label for="">Edit title</label>
                <input type="text" value='<?php the_title(); ?>' class="form-control" name="my_title" id="">
            </div>
            <div class="form-group">
                <label for="">Edit subtitle</label>
                <input type="text" value='<?php echo get_field('subtitle'); ?>' class="form-control" name="my_subtitle" id="">
            </div>
            <div class="form-group">
                <label class="sr-only" for="inputName">Hidden input label</label>
                <input type="hidden" name="my_id" value='<?php echo get_the_ID() ?>'>
            </div>

            <?php wp_nonce_field('update_' . $_POST['my_id']); ?>

            <button type="submit" class="btn btn-primary">Update</button>

        </form>

    <?php  }

    get_footer();
    ?>
</div>