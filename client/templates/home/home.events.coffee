Template.home.events(
  'submit #clientForm': (e)->
    e.preventDefault()
    console.log '#clientformsubmit'
    modal = $( $(e.target).parents('.modal')[0])
    
    email =
      to: "<Mauro> maurop123@gmail.com"
      from: "<MptySquare Contact> postmaster@mptysquare.com"
      subject: "MptySquare Contact: #{modal.find('#subject').val()}"
      text: "<#{modal.find('#name').val()}> #{modal.find('#email').val()} says...\n\n #{modal.find('#message').val()}"
      html: ""
    console.log email
    Meteor.call('sendEmail', email)
    modal.closeModal()
    return false
)
