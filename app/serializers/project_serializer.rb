
class ProjectSerializer < ActiveModel::Serializer 
    has_many :investments
    has_many :users, through: :investments
    
    attributes :id, :developer_name, :location, :total_capital_needed, :minimum_investment, :projected_roi

end