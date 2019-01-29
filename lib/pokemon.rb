class Pokemon

attr_accessor :name, :type, :db, :id, :hp

def initialize(id:,name:,type:,db:,hp:60)
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
array = db.execute("select pokemon.name,pokemon.type,pokemon.hp from pokemon where pokemon.id = ?;",1)
poke_out = Pokemon.new(id:id,name:array[0][0],type:array[0][1],db:db,hp:array[0][2])
return poke_out
end

def alter_hp(hp,db)

db.execute("UPDATE pokemon SET hp=? WHERE id=?;",hp,self.id)
end


end
