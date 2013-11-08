class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.integer :survey_id
  		t.text		:q_content
  		t.string  :file
  		t.timestamps
  	end
  end
end
