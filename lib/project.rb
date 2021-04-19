class Project #has many
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers<<backer
    backer.back_project(self)
  end
end
