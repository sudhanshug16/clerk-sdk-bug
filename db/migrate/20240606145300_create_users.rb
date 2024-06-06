class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

  User.create([
    { name: 'User 1' },
    { name: 'User 2' },
    { name: 'User 3' },
    { name: 'User 4' },
    { name: 'User 5' },
    { name: 'User 6' },
    { name: 'User 7' },
    { name: 'User 8' },
    { name: 'User 9' },
    { name: 'User 10' }
  ])
  end
end
