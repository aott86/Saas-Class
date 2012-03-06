### Part V - advanced OOP

class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s
        attr_reader attr_name
        attr_reader attr_name + '_history'
        class_eval %Q{

		def initialize()
			@#{attr_name}_history=[nil]
		end
		
		def #{attr_name}=(value)
			@#{attr_name}=value
			self.#{attr_name}_update
		end	
				
		def #{attr_name}_update
			if(@#{attr_name}_history==nil) 
				@#{attr_name}_history=[nil]
			end
			
			@#{attr_name}_history.push(self.#{attr_name})
		end	
		}
    end
end

