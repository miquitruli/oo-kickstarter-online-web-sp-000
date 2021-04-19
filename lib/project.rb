class Project #has many
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(back)
    @backers<<back
    backer.back_project(self)
  end
end
