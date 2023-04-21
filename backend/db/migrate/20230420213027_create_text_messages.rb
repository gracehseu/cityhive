class CreateTextMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :text_messages do |t|
      t.string :cookie
      t.string :content
      t.string :phoneNumber
      t.timestamps
    end
  end
end
