class CreateAnswersUsers < ActiveRecord::Migration
  def change
  	create_table :answers_users do |t|
  		t.integer :user_id
  		t.integer :possible_answer_id
  		t.timestamps
  	end
  end
end
