require_relative('../db/sql_runner.rb')

class Exhibit

  attr_reader :id
  attr_accessor :artist_id, :title, :category, :link

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
    @title = options['title']
    @category = options['category']
    @link = options['link']
  end

  def save
    sql = "INSERT INTO exhibits
    (artist_id, title, category, link)
    VALUES
    ($1, $2, $3, $4)
    RETURNING id"
    values = [@artist_id, @title, @category, @link]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def edit
    sql = "UPDATE exhibits
    SET (artist_id, title, category, link) =
    ($1, $2, $3, $4)
    WHERE id = ($5)"
    values = [@artist_id, @title, @category, @link, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = "DELETE FROM exhibits
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = "SELECT * FROM exhibits"
    values = []
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |exhibit| Exhibit.new( exhibit ) }
  end

  def self.delete_all
    sql = "DELETE FROM exhibits"
    values = []
    SqlRunner.run(sql, values)
  end

end
