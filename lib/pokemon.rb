class Pokemon

attr_accessor :name, :type, :db, :id

def initialize(id:,name:,type:,db)
@id = id
@name = name
@type = type
@db = db

end


end
