(function ($) {
    var _main = {
        init: function () {
            this._setup();
            this._bind();
        },
        /*----------------------------
         * Setup Default Info
         ---------------------------*/
        _setup: function () {
            var _ag = $.getBrowser();
            if (_ag == "ie7" || _ag == "ie8" || _ag == "ie9") {
                if ($('.main-cont').length == 1) {
                    $('body').addClass('low');
                }
            }
            $('body').attr('data-agent', $.getBrowser());
            ($.getOs() === "android" || $.getOs() === "ios") ? $('body').attr('data-mobile', 'Y') : $('body').attr('data-mobile', 'N')
        },
        _bind: function () {
            window.isRolling = true;
            var _self = this;
            var _fp = $('.main-cont');
            _fp.fullpage({
                verticalCentered: false,
                navigation: true,
                slidesNavigation: true,
                anchors: ['sec1', 'sec2', 'sec3', 'sec4', 'sec5', 'sec6', 'sec7'],
                onLeave: function (anchorLink, idx) {
                    /*slider motion*/
                    _self._motion("before", idx);
                    if (idx != 6) {
                        $('.nav li').eq(idx - 1).addClass('on').siblings('li').removeClass('on');
                    } else {
                        $('.nav li').removeClass('on');
                    }
                },
                afterLoad: function (anchorLink, idx) {
                    _self._motion("after", idx);

                },
                onSlideLeave: function (anchorLink, index, slideIndex, direction) {
                    $('.s' + index).find('.slide').find('.col-1').hide();
                },
                afterSlideLoad: function (anchorLink, index, slideIndex, direction) {
                    /*slider motion*/
                    if (index === 1) {//망고소개
                        if (slideIndex === 0) {
                            $('.content-wrap').eq(index - 1).removeClass('swap-arrow');
                        } else {
                            $('.content-wrap').eq(index - 1).addClass('swap-arrow');
                        }

                    }
                    var _t = $('.s' + index).find('.slide').eq(slideIndex).find('.col-1');
                    _t.fadeIn('fast');
                },
                easingcss3: 'cubic-bezier(0.175, 0.885, 0.320, 1.275)'
            });
            //#footer
            $('.s7 .util').siblingsClass();
            $('.s7 .util a.link').bind('click', function (event) {
                event.preventDefault();
                var _idx = $(this).parents('li').index();
                var _iCnt = $('.s7 .info ul.info-cont');
                var _iCntLi = _iCnt.find('li');
                if (_idx === 0) {//회사소개
                    _iCnt.hide();
                    $('#fp-nav li').eq(0).find('a').trigger('click');
                } else if (_idx === 1) {//이용약관
                    _iCnt.show();
                    _iCntLi.hide().eq(0).show();
                } else if (_idx === 2) {//개인정보취급방침
                    _iCntLi.hide().eq(1).show();
                } else if (_idx === 3) {//찾아오시는길
                    _iCnt.show();
                    _iCntLi.hide().eq(2).show();
                } else if (_idx === 4) {//조사의뢰
                    _iCnt.show();
                    _iCntLi.hide().eq(3).show();
                }
            });
        },
        _motion: function (type, idx) {
            //  return false;
            var _t = $('.s' + idx);
            var _col = _t.find('.col-1');
            var _time = 450;
            if (type === "before") {
                _col.hide();
            } else if (type === "after") {
                _col.slideDown(_time, function () {
                });
                if (window.myItv != null) {
                    clearInterval(window.myItv);
                    window.myItv = null;
                }
            }
        },
        end: function () {
        }
    };
    $(document).ready(function () {
        _main.init();
    });
})($);
