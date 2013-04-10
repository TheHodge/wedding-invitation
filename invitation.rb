require 'family'
require 'friends'

heather = Bride.new
dom     = Groom.new

class Wedding < ActiveEngagement::Base

  def invite

				    puts 'Mr & Mrs S Burke invite you to'
				    puts 'the Wedding of their daughter'
				         puts 'Heather Maria Burke'
				              puts 'to'
				         puts 'Dominic Thomas Hodgson' 
				    puts 'On the xxth of October 20xx'
				    puts 'At the xxxx xxxx, Leeds'

		puts '----------------------------------------------------------'				           
		puts '                               _      Heather and Dom		'
		puts '         ___            {@}  _|=|_                    	'
		puts '        /___\          /(")\  (")							'
		puts '     .---'-'---.      /((~))\/<x>\        _   .-.			'
		puts '    /___________\     ~~/@\~~\|_|/       <v> ((_))	 	'
		puts '     | A /^\ A |       /   \  |||       ((_)) '-' 		'
		puts '     |   |"|   |      /~@~@~\ |||        '-' 				'
		puts ' ____|___|_|___|_____/_______\|||___October 25th 2013___ 	'

				puts 'Ceremony Commences at 12:00'
					puts 'Followed by a'
				puts 'Wedding Breakfast & Evening Reception'		


		if self.internet_access?
				redirect_to 'http://heatheranddom.com/rsvp'
		else
				rsvp_to 'Mr + Mrs Burke, Address Here'
		end


	end
	
	def ceremony
		begin
			Ceremony.start
			heather.kissed_by(dom)
			Ceremony.sign_register(heather, dom)
			heather.surname! = "Hodgson"
			throw :bouquet
			Ceremony.end
		rescue AnyLawfulImpediment
			# This should never happen!
		end
	end
	
end
