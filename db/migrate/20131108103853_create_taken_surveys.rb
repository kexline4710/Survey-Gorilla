class CreateTakenSurveys < ActiveRecord::Migration
  def change
  	create_table :taken_surveys do |t|
  		t.integer :user_id
  		t.boolean :completion, default: false
  		t.integer :survey_id
  		t.timestamps
  	end
  end
end
