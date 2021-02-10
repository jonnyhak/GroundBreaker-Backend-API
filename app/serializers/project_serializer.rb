
class ProjectSerializer < ActiveModel::Serializers 
    # attributes :id, :developer_name, :location, :total_capital_needed, :minimum_investment, :projected_roi
    
    # has_many :investments
    # has_many :users, through: :investments
    

    # # current projects investment
    # def users
    #    self.object.investments.map do |investment|
    #     {username: investment.user.username}
    #    end
        
    # end

end