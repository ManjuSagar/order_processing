class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :line_items


  def order_count(user)
    user.line_items.where("order_id is NULL").count
  end

  def name
    first_name
  end

  def self.get_info
    self.all.collect{|x| [x.first_name, x.email]}
  end

end
