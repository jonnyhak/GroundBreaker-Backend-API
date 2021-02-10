
class UserSerializer < ActiveModel::Serializers 
    
    # has_many :investments
    # has_many :projects, through: :investments 
    
    # attributes :id, :username, :password

    # def projects 
    #     self.object.investments.map do |investment|
    #         {
    #             investment_id: investment.id,
    #             project_id: investment.project.id,
    #             developer_name: investment.project.developer_name,
    #             location: investment.project.location,
    #             total_capital_needed: investment.project.total_capital_needed,
    #             minimum_investment: investment.project.minimum_investment,
    #             projected_roi: investment.project.projected_roi,
    #             date: investment.date

    #         }
    #     end

    # end


end 