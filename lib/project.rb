class Project #has many
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers<<backer
    project = Backer.back_project(project)
    project << self
  end
end
