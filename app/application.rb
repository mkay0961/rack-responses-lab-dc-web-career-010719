class Application

  def call(env)
    resp = Rack::Response.new



    time1 = Time.now

    time = time1.hour
    resp.write("The time1 is #{time1}, #{time}")
    puts "The time1 is #{time1}, #{time}"

    if time >= 12
      resp.write "Good Afternoon!"
    elsif time < 12
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
