@RegistrationWizard = React.createClass
  displayName: 'RegistrationWizard'

  render: ->
    <div className="registration-wizard">
      <div className="overlay">
        <div className="registration-content">
          <h1>Become an URBO Member</h1>
        </div>
      </div>
    </div>

$(document).on 'registration:begin', (e) ->
  React.render <RegistrationWizard/>, document.getElementById 'registration-container'