require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/item')

get('/') do
  @list = Item.all()

  erb(:list)
end

post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name, rank)
  item.save()
  item.update()
  @list = Item.sort()


  erb(:list)
end
