/*
 * ====================================================================
 * growp
 * @package  growp
 * @author   GrowGroup.Inc <info@grow-group.jp>
 * @license  MIT Licence
 * ====================================================================
 */

(function ($) {
    var growApp = function () {

    };

    /************************
    * please insert your code
    *************************/
    growApp.prototype.myCode = function () {

    }

    $(function () {
        var app = new growApp();
        app.myCode();
    });
})(jQuery);

(function($){

	// フォーム2重送信防止
	$(function () {
		var mw_wp_form_button_no_click = true;
		$('.mw_wp_form button[type="submit"]').click(function () {
			var formElement = $(this).closest('form')[0];
			if (formElement && formElement.checkValidity && !formElement.checkValidity()) {
				return;
			}
			if (mw_wp_form_button_no_click) {
				mw_wp_form_button_no_click = false;
			} else {
				$(this).prop('disabled', true);
			}
		});
	});

	// ハンバーガーメニュー
	$(function () {
		let state = false;
		let pos;
		$('.js-slidebar-button').click(function () {
			if (state == false) {
				pos = $(window).scrollTop();
				$('body').addClass('is-fixed').css({'top': -pos});
				state = true;
			} else {
				$('body').removeClass('is-fixed').css({'top': 0});
				window.scrollTo(0, pos);
				state = false;
			}
		});
	});
})(jQuery)
