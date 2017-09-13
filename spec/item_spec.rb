require('rspec')
require('item')

describe("Item") do
  before() do
    Item.clear()
  end
  describe(".all") do
    it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe(".rank") do
    it("sorts items by rank") do
      item = Item.new("kittens", [3])
      item.save()
      item2 = Item.new("bubbles", [5])
      item2.save()
      item_test = Item.rank()
      expect(item_test).to(eq(Item.all()))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Item.new("tacos", [1])
      item.save()
      expect(Item.all()).to(eq([item]))
    end
  end

  describe(".clear") do
  it("clears all items from the list") do
    item = Item.new("tacos", [1])
    item.save()
    Item.clear()
    expect(Item.all()).to(eq([]))
    end
  end

  describe("#id") do
   it("increments an id by 1 each time a new item is added") do
     item = Item.new("tacos", [2])
     item.save()
     item2 = Item.new("pizza", [1])
     item2.save()
     expect(item.id()).to(eq(1))
     expect(item2.id()).to(eq(2))
   end
 end

  describe(".find") do
    it("finds an item based on its id") do
      item = Item.new("tacos", [1])
      item.save()
      item2 = Item.new("pizza", [2])
      item2.save()
      expect(Item.find(1)).to(eq(item))
      expect(Item.find(2)).to(eq(item2))
    end
  end

end
