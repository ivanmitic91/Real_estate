<?php

function real_estate_files()
{

    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css');

    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array('jquery'));

    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');

    wp_enqueue_style('font_awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

    wp_enqueue_style('real_estate_main_styles', get_stylesheet_uri(), NULL, 1.0);
}

add_action('wp_enqueue_scripts', 'real_estate_files');


function add_location_taxonomy_to_real_estates()
{
    $labels = array(
        'name'               => 'Locations',
        'singular_name'      => 'Location',
        'search_items'       => 'Search Locations',
        'all_items'          => 'All Locations',
        'update_item'        => 'Update Location',
        'edit_item'          => 'Edit Location',
        'add_new_item'       => 'Add New Location',
        'new_item_name'      => 'New Location Name',
        'menu_name'          => 'Location'
    );

    $args = array(
        'labels'            => $labels,
        'hierarchical'      => false,
        'show_ui'           => true,
        'how_in_nav_menus'  => true,
        'public'            => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'location', 'with_front' => false)
    );

    register_taxonomy('location', 'real_estate', $args);
}
add_action('init', 'add_location_taxonomy_to_real_estates');


function add_type_taxonomy_to_real_estates()
{
    $labels = array(
        'name'               => 'Types',
        'singular_name'      => 'Type',
        'search_items'       => 'Search Types',
        'all_items'          => 'All Types',
        'update_item'        => 'Update Type',
        'edit_item'          => 'Edit Type',
        'add_new_item'       => 'Add New Type',
        'new_item_name'      => 'New Type Name',
        'menu_name'          => 'Type'
    );

    $args = array(
        'labels'            => $labels,
        'hierarchical'      => false,
        'show_ui'           => true,
        'how_in_nav_menus'  => true,
        'public'            => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array('slug' => 'type', 'with_front' => false)
    );

    register_taxonomy('type', 'real_estate', $args);
}
add_action('init', 'add_type_taxonomy_to_real_estates');


function searchfilter($query)
{

    if ($query->is_search && !is_admin()) {

        $query->set('post_type', array('real_estate'));
    }

    return $query;
}

add_filter('pre_get_posts', 'searchfilter');


// update 

if (isset($_POST['my_title']) or isset($_POST['my_subtitle'])) {

    $my_post = array(
        'ID'           => htmlspecialchars($_POST['my_id']),
        'post_title'   => htmlspecialchars($_POST['my_title']),
    );
    update_field('subtitle', htmlspecialchars($_POST['my_subtitle']), $my_post['ID']);
    wp_update_post($my_post);

    $url = home_url('/');
    wp_redirect($url);
    exit;
}
