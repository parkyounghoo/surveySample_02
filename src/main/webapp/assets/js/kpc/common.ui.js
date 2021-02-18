(function ($, core) {
    "use strict";
    var _opts, _vars, _self;
    core.define("ui.Common", {
        config: {
            speed: 800,
            easing: "easeInOutQuint"
        },
        init: function () {
            _self = this;
            this.opts = this.opts || {};
            this.opts = _opts = $.extend(null, this.config);
            _opts = this.opts;
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
                    _self._ieSetupFunc();
                }
            }
            $('body').attr('data-agent', $.getBrowser());
            ($.getOs() === "android" || $.getOs() === "ios") ? $('body').attr('data-mobile', 'Y') : $('body').attr('data-mobile', 'N');
            //서브페이지수정
            if ($('body.sub').length === 1) {
                var _no = $('#head_img').val();
                var _img = '/src/images/sub' + _no + '.jpg';
                var _txt = $('#head_txt').val();
                _no = (_no || 1);
                _txt = (_txt || '망고패널');
                $('.head-wrap').css('background-image', "url(" + _img + ")");
                $('.head-wrap .title>h1').html(_txt);
            }
        },
        /*----------------------------
         * Binding Event
         ---------------------------*/
        _bind: function () {
            var _self = this;
            var _isOpen = false;
            var _nav = $('.nav');
            $('.nav .d1').siblingsClass();
            $('.util .menu').bind('click', function (event) {
                event.stopPropagation();
                event.preventDefault();
                _isOpen = !_isOpen;

                if (_isOpen) {
                    _nav.show();
                } else {
                    _nav.hide();
                    _nav.find('.d1').removeClass('on');
                }
            });
            $('.nav').bind('click', function (event) {
               event.stopPropagation();
            });

            $('.nav .d1 ul li a').bind('click', function (event) {

                _isOpen = false;
                _nav.hide();
            });
            $('.nav').bind('mouseleave', function (event) {
                // _nav.hide();
            });
            //패밀리사이트
            $('#family_site').bind('change',function(event){
               event.preventDefault();
                var _val=$(this).val();
				if (_val=="FAMILY SITE") {
				} else {
                window.open(_val);
				}
            });
            $(window).bind('click', function (event) {
                // event.preventDefault();
                var _chk = $('.nav').is(':visible');
                if (_chk) {
                    _isOpen = false;
                    _nav.hide();
                }
            });
            /*setInterval*/
            var _iNum=0;
            var _itv=setInterval(function(){
                _iNum=_iNum+1;
                if(_iNum>=300){
                    clearInterval(_itv);
                    _itv=null;
                };
                var _h = $(window).height();
                $('.content').css('height', _h);
            },100);
        },
        /*----------------------------
         * 	 Aside navigation
         ---------------------------*/
        _asideToggle: function (isOpen) {
            var _side = $('.aside');
            var _targetX = ( $('body').attr('data-mobile') === "Y") ? '-322px' : '-322px';
            var _x = (isOpen) ? 0 : _targetX;
            _side.toggleClass('on');
            (isOpen) ? _side.attr('data-open', 'open') : _side.attr('data-open', 'close');
            _side.stop().animate({'right': _x}, 450, 'easeOutExpo');
        },
        /*----------------------------
         * 	 ie7~ie9
         ---------------------------*/
        _ieSetupFunc: function () {
            $('body').addClass('low');
            var _idx = 0;
            var _limit = 100;
            var _id = setInterval(function () {
                _idx = _idx + 1;
                if (_idx >= _limit) {
                    clearInterval(_id);
                    _id = null;
                }
                var _h = $(window).height();
                $('.content').css('height', _h);
            }, 100);
            $(window).bind('resize', function (event) {
                var _h = $(this).height();
            }).trigger('resize');

        },
        end: function () {
        }
    });
    $(document).ready(function () {
        var _common = new ui.Common();
    });
})(jQuery, window[CORE]);