class Application 

  def call(env)
    resp = Rack::Response.new
    clock = Time.now
    now = clock.to_a
    hour = now[2]
     if hour < 12
       resp.write "The time is ""#{clock}."
       resp.write "Good Morning!"
     else
       resp.write "The time is ""#{clock}."
       resp.write "Good Afternoon!"
     end
     resp.finish
  end

end 
