require 'rspec'

def post_to_slack(message)
  url = "https://launch-academy.slack.com/api/chat.postMessage"
  data = {
    "token" => <token to gain access to your team>,
    "channel" => <token to specify the slack channel to post to>,
    "text" => message
  }

  HTTPClient.new.post(url, data)
end
