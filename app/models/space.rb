class Space < ActiveRecord::Base
  
  belongs_to :user
  has_many :bookings
  validates :name, :location, :phone_number, :number_of_rooms, :price, 
  presence: true
  validates :price, numericality: { greater_than: 100 }
  validates :number_of_rooms, numericality: { greater_than: 1 }
  validates :phone_number, length: { minimum: 3 }
  # validates_format_of :image, :with => %r{\.(png|jpg|jpeg)$}i

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  def self.search(search)
    if search
      self.where("location like ?", "%#{search}%")    
    end
  end
  

end
