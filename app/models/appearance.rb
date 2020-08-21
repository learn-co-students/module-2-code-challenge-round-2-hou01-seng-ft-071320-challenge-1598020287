class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode


    validates :rating, numericality: {less_than: 6, greater_than:0,
        message: "Not a valid RATING. Please Select 1 to 5"}

    validates :guest_id, uniqueness: {scope: :episode_id, 
        message: "Guest should appear on show only ONE time"}
end
