﻿function showMenu() {
    window.scrollTo(0, 0);

    let value = document.getElementById("divMenu").className;
    if (value.includes('is-close')) {
        document.getElementById("divMenu").className = 'menu is-open';
        disableScroll();
    } else {
        document.getElementById("divMenu").className = 'menu is-close';
        enableScroll();
    }
}

function disableScroll() {
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,

        window.onscroll = function () {
            window.scrollTo(scrollLeft, scrollTop);
        };
}

function enableScroll() {
    window.onscroll = function () { };
}

function subMenu() {
    let value = document.getElementById("submenu").className;
    if (value.includes('submenu-hide')) {
        document.getElementById("submenu").className = 'submenu-open';
        document.getElementById('icon').className = 'fas fa-angle-down';

    } else {
        document.getElementById("submenu").className = 'submenu-hide';
        document.getElementById('icon').className = 'fas fa-angle-right';
    }
}