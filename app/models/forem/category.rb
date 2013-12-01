require 'friendly_id'

module Forem
  class Category < ActiveRecord::Base
    default_scope order('sort ASC')
    extend FriendlyId
    friendly_id :name, :use => :slugged

    has_many :forums
    validates :name, :presence => true
    attr_accessible :name, :sort

    def to_s
      name
    end

  end
end
