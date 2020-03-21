class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade)
    @name = name
    @grade = grade 
    @id = nil
    
  end
  
  def self.create_table
    sql = "CREATE TABLE students(
      id    INT NOT NULL,
      name  STRING,
      grade STRING, 
      PRIMARY KEY(id))"
    DB[:conn].execute(sql)
    
  end  
  
  def self.drop_table
    sql = "DROP TABLE students"
    DB[:conn].execute(sql)
  end
  
  def save({new_hash})
    
    student = self.new(name, hash)
    binding.pry
    sql = "INSERT INTO students (name, grade) VALUES ({name => , @grade)"
    @id = DB[:conn].execute(sql)
    binding.pry
    puts ""
  end
  
  def self.create(new_name, new_grade)
    new_student = Student.new(new_name, new_grade)
    save(name, grade)
    binding.pry
    return(new_student)
  end
   
  def id
    @id 
  end
end
