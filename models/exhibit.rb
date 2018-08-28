require_relative('../db/sql_runner.rb')

class Exhibit

  attr_reader :id
  attr_accessor :artist_id, :title, :category, :date_made, :link

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
    @title = options['title']
    @category = options['category']
    @date_made = options['date_made']
    @link = options['link']
  end

  def save
    sql = "INSERT INTO exhibits
    (artist_id, title, category, date_made, link)
    VALUES
    ($1, $2, $3, $4, $5)
    RETURNING id"
    values = [@artist_id, @title, @category, @date_made, @link]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def edit
    sql = "UPDATE exhibits
    SET (artist_id, title, category, date_made, link) =
    ($1, $2, $3, $4, $5)
    WHERE id = ($6)"
    values = [@artist_id, @title, @category, @date_made, @link, @id]
    SqlRunner.run(sql, values)
  end

  def artist
    sql = "SELECT * FROM artists
    WHERE id = $1"
    values = [@artist_id]
    returned_array = SqlRunner.run(sql, values)
    return Artist.new( returned_array[0] )
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

  def self.find(id)
    sql = "SELECT * FROM exhibits
    WHERE id = $1"
    values = [id]
    returned_array = SqlRunner.run(sql, values)
    return Exhibit.new( returned_array.first )
  end

  def self.find_by_category(category)
    sql = "SELECT * FROM exhibits
    WHERE category = $1"
    values = [category]
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |exhibit| Exhibit.new( exhibit ) }
  end

  def self.find_by_artist(id)
    sql = "SELECT * FROM exhibits
    WHERE artist_id = $1"
    values = [id]
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |exhibit| Exhibit.new( exhibit ) }
  end

  def self.find_by_date(date_made)
    sql = "SELECT * FROM exhibits
    WHERE date_made = $1"
    values = [date_made]
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |exhibit| Exhibit.new( exhibit ) }
  end

  def self.delete_all
    sql = "DELETE FROM exhibits"
    values = []
    SqlRunner.run(sql, values)
  end

end
