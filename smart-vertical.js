// Generated by CoffeeScript 1.3.3
(function() {

  window.generate_vertical_class = function(dom_name) {
    var el, rest, style, width;
    if (dom_name == null) {
      dom_name = 'vertical';
    }
    el = document.getElementsByClassName(dom_name)[0];
    rest = el.clientHeight / 2;
    width = el.clientWidth - rest;
    style = document.createElement("style");
    style.type = "text/css";
    style.innerHTML = ".vertical {\n  -webkit-transform: rotate(90deg);\n  -webkit-transform-origin: 0px;\n  margin-top: -" + rest + "px;\n  margin-left: " + rest + "px;\n  margin-right: -" + width + "px;\n  margin-bottom: " + width + "px;\n}";
    return document.getElementsByTagName("head")[0].appendChild(style);
  };

}).call(this);
