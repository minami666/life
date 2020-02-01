class CreateSpends < ActiveRecord::Migration[6.0]
  def change
    create_table :spends do |t|
		t.integer :house,default: 0
		t.integer :foods,default: 0
		t.integer :traffic,default: 0
		t.integer :infra,default: 0
		t.integer :expendables,default: 0
		t.integer :hoby,default: 0
		t.integer :friends,default: 0
		t.integer :books,default: 0
		t.integer :medical,default: 0
		t.integer :etc,default: 0
		t.timestamps
    end
  end
end
