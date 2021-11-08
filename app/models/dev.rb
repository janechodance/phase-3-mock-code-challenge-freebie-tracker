class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
    def received_one?(item_name)
        self.freebies.any? do |f|
            f.item_name == item_name     
    end
    def give_away(dev, freebie)
        if freebie.dev_id = dev_id
          freebie.update(dev_id: dve_id)
        else
            nil
        end
    end

end
