require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
binding.pry 
    if req.path=="/<Item Name>"
      resp.write Item.price
    elsif
      req.path !="/<Item Name>"
      resp.write "Route not found"
      resp.status = 404
    else
      resp.write "Item not found"
      resp.status = 400
    end

    resp.finish
  end
end
