if (typeof window.n2SSIframeLoader != "function") {
    (function ($) {
        var frames = [],
            clientHeight = 0;
        var eventMethod = window.addEventListener ? "addEventListener" : "attachEvent";
        window[eventMethod](eventMethod == "attachEvent" ? "onmessage" : "message", function (e) {
            var sourceFrame = false;
            for (var i = 0; i < frames.length; i++) {
                if (e.source == (frames[i].contentWindow || frames[i].contentDocument)) {
                    sourceFrame = frames[i];
                }
            }
            if (sourceFrame) {
                var data = e[e.message ? "message" : "data"];

                switch (data["key"]) {
                    case "ready":
                        clientHeight = document.documentElement.clientHeight || document.body.clientHeight;
                        $(sourceFrame).removeData();
                        (sourceFrame.contentWindow || sourceFrame.contentDocument).postMessage({
                            key: "ackReady",
                            clientHeight: clientHeight
                        }, "*");
                        break;
                    case "resize":
                        var $sourceFrame = $(sourceFrame);

                        if (data.fullPage) {
                            var resizeFP = $.proxy(function (iframeWindow) {
                                if (clientHeight != document.documentElement.clientHeight || document.body.clientHeight) {
                                    clientHeight = document.documentElement.clientHeight || document.body.clientHeight;
                                    iframeWindow.postMessage({
                                        key: "update",
                                        clientHeight: clientHeight
                                    }, "*");
                                }
                            }, this, (sourceFrame.contentWindow || sourceFrame.contentDocument));
                            if ($sourceFrame.data("fullpage") != data.fullPage) {
                                $sourceFrame.data("fullpage", data.fullPage);
                                resizeFP();
                                $(window).on("resize", resizeFP);
                            }
                        }
                        $sourceFrame.css({
                            height: data.height
                        });

                        if (data.forceFull && $sourceFrame.data("forcefull") != data.forceFull) {
                            $sourceFrame.data("forcefull", data.forceFull);

                            var $container = $('body');
                            $container.css("overflow-x", "hidden");
                            var resizeFF = function () {
                                var customWidth = 0,
                                    adjustLeftOffset = 0;
                                var $fullWidthTo = $('.fl-responsive-preview .fl-builder-content');
                                if ($fullWidthTo.length) {
                                    customWidth = $fullWidthTo.width();
                                    adjustLeftOffset = $fullWidthTo.offset().left;
                                }

                                var windowWidth = customWidth > 0 ? customWidth : (document.body.clientWidth || document.documentElement.clientWidth),
                                    outerEl = $sourceFrame.parent(),
                                    outerElBoundingRect = outerEl[0].getBoundingClientRect(),
                                    outerElOffset,
                                    isRTL = $("html").attr("dir") == "rtl";
                                if (isRTL) {
                                    outerElOffset = windowWidth - (outerElBoundingRect.left + outerEl.outerWidth());
                                } else {
                                    outerElOffset = outerElBoundingRect.left;
                                }
                                $sourceFrame.css(isRTL ? 'marginRight' : 'marginLeft', -outerElOffset - parseInt(outerEl.css('paddingLeft')) - parseInt(outerEl.css('borderLeftWidth')) + adjustLeftOffset)
                                    .css("maxWidth", "none")
                                    .width(windowWidth);
                            };
                            resizeFF();
                            $(window).on("resize", resizeFF);

                        }
                        break;
                }
            }
        });
        window.n2SSIframeLoader = function (iframe) {
            frames.push(iframe);
        }
    })(jQuery);
}