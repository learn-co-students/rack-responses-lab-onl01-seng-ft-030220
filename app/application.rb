class Application
  def call(env)
    response = Rack::Response.new

    current_time = Time.now.strftime("%H %M").delete(" ").to_i

    if current_time < 1200
      response.write("Good Morning!")
    else
      response.write("Good Afternoon!")
    end

    response.finish
  end
end
