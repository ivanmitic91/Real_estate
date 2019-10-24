<?php

function real_estate_post_types()
{
    $labels = array(
        'name'                => __('Real Estate'),
        'singular_name'       => __('Real Estate'),
        'menu_name'           => __('Real Estate'),
        'all_items'           => __('All'),
        'add_new_item'        => __('Add New Item'),
        'add_new'             => __('Add New'),
        'edit_item'           => __('Edit Item'),
        'update_item'         => __('Update Item'),
        'search_items'        => __('Search Item'),
        'not_found'           => __('Not Found'),
        'not_found_in_trash'  => __('Not found in Trash')
    );
    $args = array(
        'labels'              => $labels,
        'public'              => true,
        'menu_icon' => 'dashicons-building',
        'hierarchical'        => false,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'has_archive'         => true,
        'rewrite'           => array('slug' => 'estate', 'with_front' => true)

    );
    register_post_type('real_estate', $args);
}


add_action('init', 'real_estate_post_types');
