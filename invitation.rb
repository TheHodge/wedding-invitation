require 'family'
require 'friends'

class Wedding < ActiveEngagement::Base

  def invite

				    puts 'Mr & Mrs S Burke invite you to'
				    puts 'the Wedding of their Daughter'
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
				redirect_to 'http://heatheranddom.com/rspv'
			else
				rspv_to 'Mr + Mrs Burke, Address Here'
		end


	end

end
