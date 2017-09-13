class Item
  @@list = []
  attr_reader :id
  attr_accessor :name, :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
    @id = @@list.length + 1
  end

  def self.rank()
    @@list.sort_by! {|item| item.rank}
  end

  # def self.find(id)
  #   item_id = id.to_i()
  #   @@list.each do |item|
  #     if item.id == item_id
  #       return item
  #     end
  #   end
  # end


  def self.all()
    @@list
  end

  def self.find(id)
    @@list[id - 1]
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

end

# p item1 = Item.new("tacos")
# p item2 = Item.new("BBQ")
# p item2 = Item.new("pizza")
