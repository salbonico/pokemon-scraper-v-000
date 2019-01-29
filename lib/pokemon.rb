class Pokemon

attr_accessor :name, :type, :db, :id

def initialize(id:,name:,type:,db:)
@id = id
@name = name
@type = type
@db = db
end

def self.save(name, type, db)
db.execute("insert into pokemon (name,type) values (?,?)",name,type)
end


def self.find(id, db)
array = db.execute("select pokemon.name,pokemon.type from pokemon where pokemon.id = ?;",1)
name = array[0]
type = array[1]
binding.pry
Pokemon.new(id:id,name:array[0][0],type:array[0][1],db:db)
end


end
