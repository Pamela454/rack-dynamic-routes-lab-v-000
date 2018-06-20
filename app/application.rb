class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = []

    @@items << Item.new("Figs", 34.2)
    @@items << Item.new("Pears", 0.99)

    if req.path.match=="items/<Item Name>"
      if @@items.each do |item|
        item == "items/<Item Name"
        resp.write item.price
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
