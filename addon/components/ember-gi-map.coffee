`import Ember from 'ember'`
`import layout from '../templates/components/ember-gi-map'`

EmberGiMapComponent = Ember.Component.extend
  layout: layout
  classNames: ["panel", "panel-default", "ember-gi-map-component"]

  actions:
    zoomChanged: (zoomFlag) ->
      switch zoomFlag
        when "+" then @incrementProperty "zoomLevel"
        when "-" then @decrementProperty "zoomLevel"
        else @set "zoomLevel", -1

`export default EmberGiMapComponent`
