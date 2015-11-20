`import Ember from 'ember'`

Application = Ember.Controller.extend
  extent: [174755, 664665, 208882, 685765]
  layers: [
    {
      url: "http://hubert.systherm-info.pl/mapserver/swinoujscie-vista"
      name: "obreby"
    }
  ]

`export default Application`
