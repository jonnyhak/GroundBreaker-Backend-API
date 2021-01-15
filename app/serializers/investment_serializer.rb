
class InvestmentSerializer < ActiveModel::Serializer 
    attributes :id, :date, :amount, :user, :project 

    def user 
        {
            user_id: self.object.user.id,
            username: self.object.user.username 
        }
    end

    def project 
        {
            project_id: self.object.project.id,
            developer_name: self.object.project.developer_name,
            location: self.object.project.location,
            total_capital_needed: self.object.project.total_capital_needed,
            minimum_investment: self.object.project.minimum_investment,
            projected_roi: self.object.project.projected_roi
    
        }


    end

end