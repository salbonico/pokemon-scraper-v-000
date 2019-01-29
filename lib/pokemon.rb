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

Pokemon.new(db.execute("select pokemon.name,pokemon.type from pokemon where pokemon.id = ?;",1))
end


end
