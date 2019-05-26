require 'pry' 

class Pokemon
  
<<<<<<< HEAD
  attr_accessor :name, :type, :db #:hp
  attr_reader :id
  
  def initialize(name:, type:, id: nil, db:)#, hp: nil)
=======
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(name:, type:, id: nil, db:)
>>>>>>> 84fc67e7773d4f0826896feb28ad8736003b2a1b
    @name = name
    @type = type
    @id = id
    @db = db
<<<<<<< HEAD
    #@hp = hp
=======
>>>>>>> 84fc67e7773d4f0826896feb28ad8736003b2a1b
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type)
    VALUES(?,?);
    SQL
     db.execute(sql, name, type)
  end

  def self.find(id, db)
<<<<<<< HEAD
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten  #<--returns a nested array b4
    name = pokemon[1] 
    type = pokemon[2]
    Pokemon.new(name: name, type: type, id: id, db: db) 
  end
  
#   def alter_hp(hp, db)
#     db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", hp, id)
#   end
  end
=======
     sql = <<-SQL
      SELECT * FROM pokemon WHERE id = ?, id;
    SQL
     pokemon = db.execute(sql, id)
     pokemon.name[1] 
     pokemon.type[2]
     
     Pokemon.new(name, type, id, db)
  end
end
>>>>>>> 84fc67e7773d4f0826896feb28ad8736003b2a1b
