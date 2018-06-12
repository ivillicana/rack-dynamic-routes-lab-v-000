class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items\//)
      item_name = req.path.split(/items\//).last
      item = item.
      if Item.all.include? item
        resp.write ""
      else

      end
    else
      resp.status = 404
      resp.write
    end
  end
end
