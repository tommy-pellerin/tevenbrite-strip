class Event < ApplicationRecord
  validates :start_date,
    presence: true
  validate :start_date_non_past, on: [:create, :update] #vérifie que la date est dans le futur
  
  validates :duration, #doit etre en minutes et un multiple de 5
    presence: true,
    numericality: { only_integer: true, greater_than: 0 }
  validate :is_multiple_of_5

  validates :title,
  presence: true,
  length: { in: 5..140 }

  validates :description,
  presence: true,
  length: { in: 20..1000 }

  validates :price,
  presence: true,
  numericality: { greater_than_or_equal_to: 1,
  less_than_or_equal_to: 1000
  }
  
  validates :location,
  presence: true
  
  belongs_to :admin, class_name: 'User', foreign_key: 'admin_id'
  has_many :attendances
  has_many :users, through: :attendances

  def end_date
    self.start_date + self.duration
  end
  
  private

  def start_date_non_past
    errors.add(:start_date, "ne peut pas être dans le passé") if start_date.present? && start_date <= Time.now
  end  

  def is_multiple_of_5
    errors.add(:duration, "doit etre un multiples de 5") if duration.present? && duration % 5 != 0
  end
end
