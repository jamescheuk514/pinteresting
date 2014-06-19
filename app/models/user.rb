class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :pins, dependent: :destroy

  validates :name, presence: true
  # overwrite the remember_me default: set to true       
  def remember_me
  	true
  end       
end
