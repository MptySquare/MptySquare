Meteor.startup ( ->
  Meteor.Mailgun.config(
    username: 'maurop123@gmai.com'
    password: 'Shoez,.117'
  )
)

Meteor.methods(
  sendEmail: (field) ->
    check([field.to, field.from, field.subject, field.text, field.html], [String])

    this.unblock()

    Meteor.Mailgun.send({
      to: field.to
      from: field.from
      subject: field.subject
      text: field.text
      html: field.html
    })
    console.log('email sent')
)
