require 'family'
require 'friends'

heather = Bride.new
dom     = Groom.new

class Wedding < ActiveEngagement::Base

  def invite
    puts <<-INVITE
        Mr & Mrs S Burke invite you to
        the Wedding of their daughter

            Heather Maria Burke
                  to
            Dominic Thomas Hodgson

        On the xxth of October 20xx
        At the xxxx xxxx, Leeds

----------------------------------------------------------
                               _      Heather and Dom
         ___            {@}  _|=|_
        /___\          /(")\  (")
     .---'-'---.      /((~))\/<x>\        _   .-.
    /___________\     ~~/@\~~\|_|/       <v> ((_))
     | A /^\ A |       /   \  |||       ((_)) '-'
     |   |"|   |      /~@~@~\ |||        '-'
 ____|___|_|___|_____/_______\|||___October 25th 2013___

        Ceremony Commences at 12:00
          Followed by a
        Wedding Breakfast & Evening Reception
    INVITE

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
