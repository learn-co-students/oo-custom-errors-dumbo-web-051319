class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      #raise PartnerError
      begin
        raise PartnerError                #raise the error
      rescue PartnerError => error        #rescus error;The rescue method creates an instance of the PartnerError class
          puts error.message              #and puts out the result of calling message on that instance.
    else
      person.partner = self
    end
  end

# Defining the custom error class
  class PartnerError < StandardError
    def message
    "you must give the get_married method an argument of an instance of the person class!"
  end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
