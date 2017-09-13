class Item
  @@list = []
  attr_reader :id
  attr_accessor :name, :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
    @id = @@list.length + 1
  end

  def self.rank
    @@list.sort_by! {|item| item.rank}
  end

  # def self.find()
  #   @@list.all? do |item|
  #    item.name == item.self
  #       return item
  #     end
  #   end
  # end

  def self.find(id) #class methods
    @@list[id - 1]
  end

  def self.all
    @@list
  end

  def save # justt method :)
    if @@list.all? do |item| #
      item.name != self.name and self.rank != "" and self.name != ""
    end
      @@list.push(self)
    end
  end

  def update
    @@list.each do |item|
      if item.name == self.name
        item.rank = self.rank
      end
    end
  end

  def self.clear
    @@list = []
  end

end

# p item1 = Item.new("tacos")
# p item2 = Item.new("BBQ")
# p item2 = Item.new("pizza")
