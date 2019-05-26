require 'pry' 

class Pokemon
  
  attr_accessor :name, :type, :db #:hp
  attr_reader :id
  
  def initialize(name:, type:, id: nil, db:)#, hp: nil)
    @name = name
    @type = type
    @id = id
    @db = db
    #@hp = hp
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type)
    VALUES(?,?);
    SQL
     db.execute(sql, name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten  #<--returns a nested array b4
    name = pokemon[1] 
    type = pokemon[2]
    Pokemon.new(name: name, type: type, id: id, db: db) 
  end
  
#   def alter_hp(hp, db)
#     db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", hp, id)
#   end
  end
