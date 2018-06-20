class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = []

    @@items << Item.new("Figs", 34.2)
    @@items << Item.new("Pears", 0.99)

    if req.path=="/<Item Name>"
      if @@items.each do |item|
        item == "/<Item Name"
        resp.write item.price
      else
        resp.write "Item not found"
        resp.status = 400
      end
    else
      req.path !="/<Item Name>"
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
