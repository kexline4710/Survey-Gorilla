class CreateSurveys < ActiveRecord::Migration
  def change
  	create_table :surveys do |t|
  		t.string  :title
  		t.integer :user_id
  		t.string  :file
  		t.timestamps 
  	end
  	 add_index(:surveys, [:user_id, :survey_id], :unique => true)
  end
end
