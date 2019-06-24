<?php
/*
Plugin Name: Smart Slider 3
Plugin URI: https://smartslider3.com/
Description: The perfect all-in-one responsive slider solution for WordPress.
Version: 3.3.3
Author: Nextend
Author URI: http://nextendweb.com
License: GPLv3 or later
License URI: http://www.gnu.org/licenses/gpl-3.0.html
 */

if (!class_exists('SmartSlider3', true)) {

    add_action('plugins_loaded', 'smart_slider_3_plugins_loaded', 30);

    function smart_slider_3_plugins_loaded() {

        define('N2PRO', 0);
        define('N2SSPRO', 0);
        define('N2GSAP', 0);

        define('NEXTEND_SMARTSLIDER_3__FILE__', __FILE__);
        define('NEXTEND_SMARTSLIDER_3', dirname(__FILE__) . DIRECTORY_SEPARATOR);
        define('NEXTEND_SMARTSLIDER_3_URL_PATH', 'smart-slider-3');
        define('NEXTEND_SMARTSLIDER_3_BASENAME', plugin_basename(__FILE__));

        require_once dirname(NEXTEND_SMARTSLIDER_3__FILE__) . DIRECTORY_SEPARATOR . 'includes/smartslider3.php';

        add_filter("plugin_action_links_" . plugin_basename(__FILE__), 'N2_SMARTSLIDER_3_UPGRADE_TO_PRO');
        function N2_SMARTSLIDER_3_UPGRADE_TO_PRO($links) {

            if (function_exists('is_plugin_active') && !is_plugin_active('ml-slider-pro/ml-slider-pro.php')) {
                $links[] = '<a href="' . N2SS3::getProUrlPricing() . '" target="_blank">' . "Go Pro" . '</a>';
            }

            return $links;
        }

        N2Pluggable::addAction('animationFramework', 'N2AssetsPredefined::custom_animation_framework');
    }
}