module Item
  def add_item(item)
    self.items << item
  end

  def remove_item(item)
    self.items.delete(item)
  end
end
