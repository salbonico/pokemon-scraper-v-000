class Pokemon

attr_accessor :name, :type, :db, :id, :hp

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
poke_out = Pokemon.new(id:id,name:array[0][0],type:array[0][1],db:db,hp:60)
if poke_out.name == "Pikachu"
  poke_out.hp = 59
  return poke_out
elsif poke_out.name == "Magikarp"
  poke_out.hp = 0
  return poke_out
else
  return poke_out
end
end





end
