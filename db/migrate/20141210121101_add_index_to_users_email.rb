class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :users,:email,unique:true  #为users表中的email列建立索引,并保证唯一性.
  end
end
