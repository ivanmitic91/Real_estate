<!DOCTYPE html>
<html lang="en">

<head>
    <?php wp_head(); ?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <header class="site-header">

        <div class="site-description">
            <h1><?php echo bloginfo('name') ?></h1>
            <h2><?php echo bloginfo('description') ?></h2>
        </div>

        <div class="header-search float-right">
            <?php get_search_form(); ?>
        </div>
        <nav>
            <ul class="nav">
                <?php

                if (!is_page()) : ?>
                    <li>
                        <a class='link' href="<?php echo site_url(); ?>">Home</a>
                    </li>

                <?php elseif (!is_page('blog')) :  ?>

                    <li>
                        <a class='link' href="<?php echo site_url('blog'); ?>">Read our posts here</a>
                    </li>


                <?php endif; ?>
                <hr>
            </ul>
        </nav>
    </header>