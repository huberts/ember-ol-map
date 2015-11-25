`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent '/ember-gi-map', 'Integration | Component | ember gi map', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{ember-gi-map}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#ember-gi-map}}
      template block text
    {{/ember-gi-map}}
  """

  assert.equal @$().text().trim(), 'template block text'
