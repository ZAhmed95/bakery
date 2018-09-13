require 'sendgrid-ruby'

class SGMail
  # includes SendGrid mixin code
  include SendGrid

  def initialize(from, to, catalog)
    from = Email.new(email: from)
    to = Email.new(email: to)
    subject = "Zia's Bakery Catalog"
    content = Content.new(
      type: 'text/html',
      value: catalog
    )

    # create mail object with from, subject, to and content
    mail = Mail.new(from, subject, to, content)

    # sets up the api key
    sg = SendGrid::API.new(
      api_key: ENV["SENDGRID_API_KEY"]
    )

    # sends the email
    response = sg.client.mail._('send').post(request_body: mail.to_json)
  end

end