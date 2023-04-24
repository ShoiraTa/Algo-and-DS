# frozen_string_literal: true

class Gadget
  attr_accessor :production_number
  attr_reader :username
  attr_writer :password

  # setter
  # def username (username)
  # @username = username
  # end
  # getter
  # def username
  # @username
  # end
  # create instance variables
  def initialize(_username, password)
    @username = password # instance variable
    @password = password
    @production_number = generate_production_number
  end

  # create instance method
  def gadget_info
    "Production number is  #{@production_number} has password #{@password} "
  end

  # owerwriting to_s method
  def to_s
    "username: #{@username} ,password:  #{@password} "
  end

  # self key word
  def self_keyword
    "class is #{self.class} its id is #{object_id} "
  end

  #      def password=(password)
  #      @password = password_validator if password
  #      end

  #      def password_validator(password) #validating password
  #       password if password.is_a?(String) && password=~/\d/ && password.length >6
  #      end

  private # PRIVATE METHODS

  def generate_production_number
    "private method- #{('a'..'z').to_a.sample}- #{rand(100..199)}"
  end
end
# creating new objects
phone = Gadget.new('Samsung', '12345')
laptop = Gadget.new('Dell', '12345')

# checking object class
phone.is_a?(Object)                   #=> true
phone.is_a?(BasicObject)              #=> true
phone.is_a?(Gadget)                   #=> true
phone.class.superclass.superclass     #=> BasicObject

# testing methods on objects
phone.methods #=> method list
phone.respond_to?(:class) #=> true

phone.inspect #=> <Gadget:0x00005619a6ff1ca0 @username="User 14", @password="secret", @production_number="h- 199">

# testing gadget_info instance method
phone.gadget_info #=> Gadget e- 103 has password secret

# testing self
phone.self_keyword #=> class is Gadget its id is 8

# testing username getter
phone.username

# testing  setter & getter
phone.password = '0000'

p phone.production_number

class Pets
  attr_reader :name

  def initialize
    @name = rand_name
  end
  #     private method

  private # protected

  def rand_name
    name = ('a'..'z').to_a.sample(5).join
  end
end

pet = Pets.new
pet.name

# check inheritance
Gadget.ancestors #=>[Gadget, Object, Kernel, BasicObject]
Gadget < Object #=> true
phone.is_a?(Gadget)           #=> true
p phone.instance_of?(Gadget)  #=> direct class

# check masterclassses class
3.1.class.superclass.superclass.superclass
3.1.class.ancestors #=>[Float, Numeric, Comparable, Object, Kernel, BasicObject]

# check methods
5.methods
5.methods - 0.1.methods
