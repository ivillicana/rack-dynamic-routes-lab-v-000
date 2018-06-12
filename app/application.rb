class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items\//)
      item_name = req.path.split(/items\//).last

      if Item.all.include? item
        resp.write "hi"
      else
        resp.status = 400
      end
    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end
end
