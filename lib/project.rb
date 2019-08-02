class Project
  attr_accessor :title
  attr_reader :id

  def initialize (attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def self.all
    returned_projects = DB.exec("SELECT * FROM projects ORDER BY title;")
    titles = []
    returned_projects.each do |project|
      title = project.fetch("title")
      id = project.fetch("id").to_i
      titles.push(Project.new({:title => title, :id => id}))
    end
    titles
  end

  def save
    result = DB.exec("INSERT INTO projects (title)
    VALUES ('#{@title}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  def ==(title_to_compare)
    self.title == title_to_compare.title
  end

  def self.clear
    DB.exec("DELETE FROM * projects")
  end

  def self.find(id)
    project = DB.exec("SELECT * FROM projects WHERE id = #{id};").first
    title = project.fetch("title")
    id = project.fetch("id").to_i
    Project.new({:title => title, :id => id})
  end
end
