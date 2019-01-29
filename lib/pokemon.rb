class Pokemon

attr_accessor :name, :type, :db, :id :hp

def initialize(id:,name:,type:,db:,hp:)
@id = id
@name = name
@type = type
@hp = hp 
@db = db
end

def self.save(name, type, db)
db.execute("insert into pokemon (name,type) values (?,?)",name,type)
end


def self.find(id, db)
array = db.execute("select pokemon.name,pokemon.type from pokemon where pokemon.id = ?;",1)
Pokemon.new(id:id,name:array[0][0],type:array[0][1],db:db)
end





end
