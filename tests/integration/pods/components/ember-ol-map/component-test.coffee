`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent '/ember-ol-map', 'Integration | Component | ember ol map', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{ember-ol-map}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#ember-ol-map}}
      template block text
    {{/ember-ol-map}}
  """

  assert.equal @$().text().trim(), 'template block text'
