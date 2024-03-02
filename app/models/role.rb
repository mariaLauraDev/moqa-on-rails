class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String

  has_and_belongs_to_many :users

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def self.admin
    Role.find_or_create_by(name: :admin, description: 'Administrator')
  end

  def self.user
    Role.find_or_create_by(name: :user, description: 'User')
  end

  def self.guest
    Role.find_or_create_by(name: :guest, description: 'Guest')
  end

  def self.monitor
    Role.find_or_create_by(name: :monitor, description: 'Monitor')
  end
end