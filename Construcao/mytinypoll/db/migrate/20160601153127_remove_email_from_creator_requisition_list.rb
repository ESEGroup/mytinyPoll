class RemoveEmailFromCreatorRequisitionList < ActiveRecord::Migration
  def change
    remove_column :creator_requisition_lists, :email, :string
  end
end
