#  Smart Vertical

window.generate_vertical_class = (dom_name = 'vertical') ->
  # base element
  el = document.getElementsByClassName(dom_name)[0]
  rest = el.clientHeight / 2
  width = el.clientWidth - rest

  style = document.createElement("style")
  style.type = "text/css"
  style.innerHTML = """
                        .vertical {
                          -moz-transform: rotate(90deg);
                          -moz-transform-origin: 0px;
                          -webkit-transform: rotate(90deg);
                          -webkit-transform-origin: 0px;
                          transform: rotate(90deg);
                          transform-origin: 0px;
                          margin-top: -#{rest}px;
                          margin-left: #{rest}px;
                          margin-right: -#{width}px;
                          margin-bottom: #{width}px;
                        }
                    """


  document.getElementsByTagName("head")[0].appendChild style