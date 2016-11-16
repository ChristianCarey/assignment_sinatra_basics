require 'angry_boss'

describe "get /boss" do
  it "renders the input template" do
    get("/boss")
    expect(last_response).to be_ok
    expect(last_response.body).to include("<h1>Your Boss is Angry</h1>")
  end
end

describe "post /boss" do
  it "renders the output template" do
    params = {
      speech: "test"
    }
    post "/boss", params
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include("<h3>\"WHAT DO YOU MEAN, 'TEST'???? YOU'RE FIRED!!\"</h3>")
  end
end
