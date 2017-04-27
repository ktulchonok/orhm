// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require fancybox
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
function expand(id) {
    var blocks = {
        din_expo: 'expo',
        din_edition: 'edition'
    };
    if (document.getElementById(id).style.display === "none" || document.getElementById(id).style.display === "") {
        document.getElementById(id).style.display = id === 'din_expo' ?
            "flex" : "block";
        for (var block in blocks) {
            if (block !== id) {
                document.getElementById(block).style.display = "none";
            }
        }
        $('#' + blocks[id]).addClass("current");
        $('#dinam_block_sp li').each(function () {
            if (this.id && this.id !== blocks[id]) $(this).removeClass("current");
        });
    }
}
// window.onload = function () {
//
//     'use strict';
//
//     var Viewer = window.Viewer;
//     var console = window.console || { log: function () {} };
//     var pictures = document.getElementById('images');
//     var toggles = document.querySelector('.docs-toggles');
//     var buttons = document.querySelector('.docs-buttons');
//     var options = {
//         title: false,
//         rotatable: false,
//         scalable: false,
//         fullscreen: false,
//         // inline: true,
//         url: 'data-original',
//         build: function (e) {
//             console.log(e.type);
//         },
//         built:  function (e) {
//             console.log(e.type);
//         },
//         show:  function (e) {
//             console.log(e.type);
//         },
//         shown:  function (e) {
//             console.log(e.type);
//         },
//         hide:  function (e) {
//             console.log(e.type);
//         },
//         hidden:  function (e) {
//             console.log(e.type);
//         },
//         view:  function (e) {
//             console.log(e.type, e.detail.index);
//         },
//         viewed:  function (e) {
//             console.log(e.type, e.detail.index);
//             // this.viewer.zoomTo(1).rotateTo(180);
//         }
//     };
//     var viewer;
//
//     function toggleButtons(mode) {
//         var targets;
//         var target;
//         var length;
//         var i;
//
//         if (/modal|inline|none/.test(mode)) {
//             targets = buttons.querySelectorAll('button[data-enable]');
//
//             for (i = 0, length = targets.length; i < length; i++) {
//                 target = targets[i];
//                 target.disabled = true;
//
//                 if (String(target.getAttribute('data-enable')).indexOf(mode) > -1) {
//                     target.disabled = false;
//                 }
//             }
//         }
//     }
//
//     function addEventListener(element, type, handler) {
//         if (element.addEventListener) {
//             element.addEventListener(type, handler, false);
//         } else if (element.attachEvent) {
//             element.attachEvent('on' + type, handler);
//         }
//     }
//
//     addEventListener(pictures, 'build', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'built', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'show', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'shown', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'hide', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'hidden', function (e) {
//         console.log(e.type);
//     });
//     addEventListener(pictures, 'view', function (e) {
//         console.log(e.type, e.detail.index);
//     });
//     addEventListener(pictures, 'viewed', function (e) {
//         console.log(e.type, e.detail.index);
//     });
//     viewer = new Viewer(pictures, options);
//
//     toggleButtons(options.inline ? 'inline' : 'modal');
//
//     toggles.onchange = function (event) {
//         var e = event || window.event;
//         var input = e.target || e.srcElement;
//         var name;
//
//         if (viewer) {
//             name = input.getAttribute('name');
//             options[name] = name === 'inline' ? JSON.parse(input.getAttribute('data-value')) : input.checked;
//             viewer.destroy();
//             viewer = new Viewer(pictures, options);
//             toggleButtons(options.inline ? 'inline' : 'modal');
//         }
//     };
//
//     buttons.onclick = function (event) {
//         var e = event || window.event;
//         var button = e.target || e.srcElement;
//         var method = button.getAttribute('data-method');
//         var target = button.getAttribute('data-target');
//         var args = JSON.parse(button.getAttribute('data-arguments')) || [];
//
//         if (viewer && method) {
//             if (target) {
//                 viewer[method](target.value);
//             } else {
//                 viewer[method](args[0], args[1]);
//             }
//
//             switch (method) {
//                 case 'scaleX':
//                 case 'scaleY':
//                     args[0] = -args[0];
//                     break;
//
//                 case 'destroy':
//                     viewer = null;
//                     toggleButtons('none');
//                     break;
//             }
//         }
//     };
//
// };

$(document).on("ready page:change", function () {
    $(".fancybox").fancybox({
        parent: "body",
        'titlePosition': 'inside'
    });
    $(function () {
        $('body').popover({
            selector: "[rel=popover]",
            trigger: "hover",
            placement: "left"
        });
    });
});



