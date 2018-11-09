class UserSerializer < ActiveModel::Serializer
  attributes :id, :teachers, :instrument_sections, :assignments
end
