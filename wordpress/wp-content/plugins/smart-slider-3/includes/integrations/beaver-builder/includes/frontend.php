<?php
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}
if(is_numeric($settings->sliderid)) {
	echo do_shortcode( '[smartslider3 slider=' . $settings->sliderid . ']' );
} else {
	echo do_shortcode( '[smartslider3 alias="' . $settings->sliderid . '"]' );
}