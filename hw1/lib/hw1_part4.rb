### Part IV - basic OOP
##(a)
## Create a class Dessert with getters and setters for name and calories.  Define 
## instance methods healthy?, which returns true if a dessert has less than 200 
## calories, and delicious?, which returns true for all desserts

class Dessert
	
    def initialize(name, calories)
        @name=name
		@calories=calories
    end

    def healthy?
        return self.calories<200
    end

    def delicious?
        return true
    end
	
	def name 
		@name
	end
	
	def calories
		@calories
	end
	
	def name=(new_name) 
		@name=new_name
	end
	
	def calories=(new_calories) 
		@calories=new_calories
	end
	
end

## (b) 
## Create a class JellyBean that extends Dessert, and add a getter and setter for 
## flavor.  Modify delicious? to return false if the flavor is black licorice (but delicious? 
## should still return true for all other flavors and for all non-JellyBean desserts).

class JellyBean < Dessert
	def flavor 
		return @flavor
	end
	
	def flavor=(new_flavor)
		@flavor=new_flavor
	end
	
    def initialize(name, calories, flavor)
        super(name, calories)
		@flavor=flavor
    end

    def delicious?
        return self.flavor.downcase!="black licorice"
    end
end
