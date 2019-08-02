class Volunteer
  attr_accessor :name, :project_id, :id
end

def initialize(attributes)
  @name = attributes.fetch(:name)
  @project_id = attributes.fetch(:project_id)
  @id = attributes.fetch(:id)

  def == volunteer_to_compare
    if volunteer_to_compare != nil
      (self.name == volunteer_to_compare.name) && (self.project_id == volunteer_to_compare.project_id)
    else
      false
    end
  end 
