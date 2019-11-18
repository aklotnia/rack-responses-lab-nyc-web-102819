class Application

    def call(env)
        new_call = Rack::Response.new
        hour_now = Time.now.hour

        if hour_now < 12
            new_call.write "Good Morning!"
        else
            new_call.write "Good Afternoon!"
        end

    new_call.finish
    end

end
