describe "#post_to_slack(message)" do
  it "calls the HTTPClient library with the right message" do
    http_client = double
    url = "your url"
    data = {
      "token" => "your token",
      "channel" => "your channel",
      "text" => "hi there"
    }
    allow(HTTPClient).to receive(:new).and_return(http_client)
    allow(http_client).to receive(:post).with(url, data).and_return(200)

    expect(post_to_slack("hi there")).to eq 200
  end
end
