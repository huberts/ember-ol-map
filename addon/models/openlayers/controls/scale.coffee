ol.control.Scale = (opt_options) ->
  options = opt_options || {}
  className = options.className || "ol-map-scale"
  element = $("<div>").addClass(className).get(0)
  render = options.render || ol.control.Scale.render

  ol.control.Control.call @,
    element: element,
    render: render
    target: options.target

ol.inherits ol.control.Scale, ol.control.Control

ol.control.Scale.render = ->
  for scale in @getMap().scales
    if @getMap().getView().getResolution()==scale.resolution
      $(@element).html("skala = 1:" + scale.scale)

`export default ol.control.Scale`
