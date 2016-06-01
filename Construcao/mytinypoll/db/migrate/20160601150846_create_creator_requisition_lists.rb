class CreateCreatorRequisitionLists < ActiveRecord::Migration
  def change
    create_table :creator_requisition_lists do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
