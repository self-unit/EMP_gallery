require_relative('../db/sql_runner.rb')

class Category
  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save
    sql = "INSERT INTO categories
    (name)
    VALUES
    ($1)
    RETURNING id"
    values = [@name]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def edit
    sql = "UPDATE categories
    SET (name) =
    ROW($1)
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def exhibits
    sql = "SELECT * FROM exhibits
    WHERE category_id = $1"
    values = [@id]
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map{ |exhibit| Exhibit.new( exhibit ) }
  end

  def exhibit_names
    objects_array = self.exhibits
    titles = objects_array.map{ |exhibit| exhibit.title }
    return titles
  end

  def delete
    sql = "DELETE FROM categories
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all
    sql = "SELECT * FROM categories"
    values = []
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |category| Category.new( category ) }
  end

  def self.find(id)
    sql = "SELECT * FROM categories
    WHERE id = $1"
    values = [id]
    returned_array = SqlRunner.run(sql, values)
    return returned_array.map { |category| Category.new( category ) }
  end

  def self.delete_all
    sql = "DELETE FROM categories"
    values = []
    SqlRunner.run(sql, values)
  end

end
