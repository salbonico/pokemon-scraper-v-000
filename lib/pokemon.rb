class Pokemon

attr_accessor :name, :type, :db, :id

def initialize(id:,name:,type:,db:)
@id = id
@name = name
@type = type
@db = db
end

def save
@db.execute("insert into pokemon (name,type) values (?,?)",@name,@type)

end


end
