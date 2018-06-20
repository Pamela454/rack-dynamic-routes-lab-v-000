require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = []

    @@items << Item.new("Figs", 34.2)
    @@items << Item.new("Pears", 0.99)
#binding.pry
    if req.path=="/items/"
      i_name = req.path.split("/items/").last
      if @@items.each do |item|
        item.name == "i_name"
        resp.write item.price
      end
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end
end
