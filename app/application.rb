require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = ["Figs",3.42]

    if req.path=="/<Item Name>"
      if
        resp.write item.price
      elsif
        resp.write "Item not found"
        resp.status = 400
    else
      req.path !="/<Item Name>"
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
