class CreatePossibleAnswers < ActiveRecord::Migration
  def change
  	create_table :possible_answers do |t|
  		t.integer :question_id
  		t.string :a_content
  		t.timestamps
  	end
  end
end
