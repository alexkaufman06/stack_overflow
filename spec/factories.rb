FactoryGirl.define do
  factory(:question) do
    title("What is a route?")
    date("03/23/1988")
    question("Seriously, what is a route?")
  end

  factory(:user) do
    email("1")
    password("1")
  end
end
