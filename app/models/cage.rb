class Cage < ActiveRecord::Base
  validates :capacity, presence: true
  validates :status, inclusion: { in: ["ACTIVE", "DOWN"] }

  has_many :dinosaurs

  def toggle_status
    if status == "ACTIVE" && dinosaurs.count == 0
      self.status = "DOWN"
    elsif status == "DOWN"
      self.status = "ACTIVE"
    end

    self.save!
  end
end
