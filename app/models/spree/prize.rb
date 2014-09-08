module Spree
  class Prize < ActiveRecord::Base
    has_attached_file :image, :styles => {:big => "1024x1024", :medium => "300x300>", :thumb => "100x100>"}
    has_many :entries, class_name: 'Spree::Entry'
    has_many :candidates, through: :entries, class_name: 'Spree::Candidate'
    # has_one :listark_list
    has_one :winner, as: :winable, class_name: 'Spree::Candidate'

    validates :begin_time, :end_time, presence: true

    
    def active?
      now = Time.now
      if now > begin_time && now < end_time
        true
      else
        false
      end
    end

    def choose_winner
      if self.candidates.length > 0
        self.winner = self.candidates.sample
      else
        false
      end
    end

    def remaining
      if end_time > Time.now
        end_time.to_i - Time.now.to_i
      else
        false
      end
    end

    scope :active, lambda {
      where('begin_time <= ? AND end_time >= ?', Time.now, Time.now )
    }

  end
end