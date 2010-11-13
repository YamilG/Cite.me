class Cite
  include Mongoid::Document
  field :title, :type => String
  field :author, :type => String
  field :year, :type => Integer
  field :publisher, :type => String
  field :page, :type => Integer
  referenced_in :user
end
