<?php


class N2WordpressAssetInjector {

    private static $nextend_js = '';
    private static $nextend_css = '';

    public static function init() {

        add_action('wp_print_scripts', 'N2WordpressAssetInjector::injectCSSComment');

        if (is_admin()) {
            add_action('admin_init', 'N2WordpressAssetInjector::outputStart', 3000);
        }

        add_action('template_redirect', 'N2WordpressAssetInjector::outputStart', 10000);


        add_action('shutdown', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);
        add_action('pp_end_html', 'N2WordpressAssetInjector::closeOutputBuffers', -10000); // ProPhoto 6 theme
        add_action('headway_html_close', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);
        add_action('after_setup_theme', 'N2WordpressAssetInjector::after_setup_theme');
    }

    public static function after_setup_theme() {

        /**
         * Gantry 4 improvement to use the inbuilt output filter
         */
        if (defined('GANTRY_VERSION') && version_compare(GANTRY_VERSION, '4.0.0', '>=') && version_compare(GANTRY_VERSION, '5.0.0', '<')) {
            remove_action('template_redirect', 'N2WordpressAssetInjector::outputStart', 10000);

            remove_action('shutdown', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);
            remove_action('pp_end_html', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);
            remove_action('headway_html_close', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);

            add_filter('gantry_before_render_output', 'N2WordpressAssetInjector::platformRenderEnd');
        }

        /**
         * thrive-visual-editor fix as it use the template_redirect filter on priority 9 to display another template.
         */
        if (function_exists('tcb_custom_editable_content')) {
            remove_action('template_redirect', 'N2WordpressAssetInjector::outputStart', 10000);
            remove_action('shutdown', 'N2WordpressAssetInjector::closeOutputBuffers', -10000);
            add_action('template_redirect', 'N2WordpressAssetInjector::outputStart', 8);
            add_action('shutdown', 'N2WordpressAssetInjector::closeOutputBuffers', -8);
        }
    }

    public static function outputStart() {
        static $started = false;
        if (!$started) {
            $started = true;

            ob_start("N2WordpressAssetInjector::platformRenderEnd");
        }
    }

    public static function closeOutputBuffers() {
        $handlers = ob_list_handlers();
        if (in_array('N2WordpressAssetInjector::platformRenderEnd', $handlers)) {
            for ($i = count($handlers) - 1; $i >= 0; $i--) {
                ob_end_flush();
                if ($handlers[$i] === 'N2WordpressAssetInjector::platformRenderEnd') {
                    break;
                }
            }
        }
    }

    public static function platformRenderEnd($buffer) {
        self::finalizeCssJs();

        if (self::$nextend_css != '' && strpos($buffer, '<!--n2css-->') !== false) {
            $buffer = str_replace('<!--n2css-->', self::$nextend_css, $buffer);

            self::$nextend_css = '';
        }

        if (self::$nextend_css != '' || self::$nextend_js != '') {
            $parts = preg_split('/<\/head[\s]*>/', $buffer, 2);

            return implode(self::$nextend_css . self::$nextend_js . '</head>', $parts);
        }

        return $buffer;
    }

    public static function finalizeCssJs() {
        static $finalized = false;
        if (!$finalized) {
            $finalized = true;

            if (defined('N2LIBRARY')) {
                if (class_exists('N2AssetsManager')) {
                    self::$nextend_css = N2AssetsManager::getCSS();
                }

                if (class_exists('N2AssetsManager')) {
                    self::$nextend_js = N2AssetsManager::getJs();
                }

            }
        }

        return true;
    }

    public static function injectCSSComment() {
        static $once;
        if (!$once) {
            echo "<!--n2css-->";
            $once = true;
        }
    }
}

N2WordpressAssetInjector::init();