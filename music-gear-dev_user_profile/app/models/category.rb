class Category < ActiveRecord::Base
  serialize :parent_list, JSON
  serialize :immediate_parent_list, JSON
  validates_uniqueness_of :name

  def self.generate_parent_list
    records=all
    records.each do|record|
      immediate_parents= record.immediate_parent_list
      immediate_parents.each do|immediate_parent|
        record.parent_list= (record.parent_list.nil? ? [] : record.parent_list) | find(immediate_parent).parent_list | [immediate_parent]
      end
      record.save
    end
  end

  def self.get_name_from_parent_list
    records=all
    updated_records=[]
    records.each do|record|
      parent_name_list=[]
      immediate_parent_name_list=[]
      record_store=record.attributes
      record.immediate_parent_list.each do|id|
        immediate_parent_name_list << Category.find(id).name
      end
      record.parent_list.each do|id|
        parent_name_list << Category.find(id).name
      end
      record_store["immediate_parent_name_list"]=immediate_parent_name_list
      record_store["parent_name_list"]=parent_name_list
      updated_records<<record_store
    end
    updated_records
  end

  def self.search(search)
    if search
      where("name Like ?","%#{search}%")
    else
      all
    end
  end
end