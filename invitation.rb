require 'family'
require 'friends'

class Wedding < ActiveEngagement::Base

  def invite
    puts <<-INVITE
        Mr & Mrs S Burke invite you to
        the Wedding of their Daughter

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
        redirect_to 'http://heatheranddom.com/rspv'
      else
        rspv_to 'Mr + Mrs Burke, Address Here'
    end
  end

end
