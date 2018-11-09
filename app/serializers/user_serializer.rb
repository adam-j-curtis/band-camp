class UserSerializer < ActiveModel::Serializer
  attributes :id, :teachers, :instrument_sections, :assignments, :first_name, :last_name
end
