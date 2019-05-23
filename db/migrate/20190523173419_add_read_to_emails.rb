class AddReadToEmails < ActiveRecord::Migration[5.2]
  def change
  	    change_table :emails do |t|
      t.boolean :read, :default => false
  end
end
end
