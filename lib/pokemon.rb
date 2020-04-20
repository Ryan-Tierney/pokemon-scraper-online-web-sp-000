class Pokemon 
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
  end 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type) 
  end 
    
<<<<<<< HEAD
  def self.find(id, db)
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten 
    Pokemon.new(id: found_pokemon[0], name: found_pokemon[1], type: found_pokemon[2], db: db)
=======
  def self.find(name, type)
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten 
    binding.pry
>>>>>>> d401815d2d0e3dac176e8f5d7082e4a77cf86067
  end 
end 