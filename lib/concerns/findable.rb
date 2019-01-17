module Concerns::Findable
  def self.find_by_name(name)
    self.all.find do |element|
      element.name == name
    end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
