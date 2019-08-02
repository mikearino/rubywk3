class Project
  attr_accessor :title
  attr_reader :id

  def initialize (attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_titles = DB.exec("SELECT * FROM projects ORDER BY title;")
    titles = []
    returned_projects.each do |project|
      title = project.fetch("name")
      id = project.fetch("id").to_i
      titles.push(Project.new({:title => title, :id => id}))
    end
    titles
  end

end
