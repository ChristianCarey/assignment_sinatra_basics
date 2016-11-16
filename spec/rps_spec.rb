require 'sinatra_basics'

describe "get /rps" do
  it "renders the input template" do
    get("/rps")
    expect(last_response).to be_ok
    expect(last_response.body).to include("<h1>Rock paper scissors</h1>")
  end
end

describe "post /rps" do
  it "renders the output template" do
    params = {
      choice: "rock"
    }
    post "/rps", params
    expect(last_response).to be_ok
    expect(last_response.body).to include("<h3>You ")
  end
end
