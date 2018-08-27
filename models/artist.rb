require_relative('../db/sql_runner.rb')

class Artist
  attr_reader :id
  attr_accessor :first_name, :last_name, :bio

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name'] if options['last_name']
    @bio = options['bio']
  end

  def save
    sql = "INSERT INTO artists
    (first_name, last_name, bio)
    VALUES
    ($1, $2, $3)
    RETURNING id"
    values = [@first_name, @last_name, @bio]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def edit
    sql = "UPDATE artists
    SET (first_name, last_name, bio) =
    ($1, $2, $3)
    WHERE id = $4"
    values = [@first_name, @last_name, @bio, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = "DELETE FROM artists
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = "SELECT * FROM artists"
    values = []
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |artist| Artist.new( artist ) }
  end

  def self.delete_all
    sql = "DELETE FROM artists"
    values = []
    SqlRunner.run(sql, values)
  end

end
