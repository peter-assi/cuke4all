class AbstractPerson < ActiveRecord::Base
  set_inheritance_column "dtype"
  set_table_name "abstract_person"  
end
