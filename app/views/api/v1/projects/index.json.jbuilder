json.array! @projects do |project|
  json.extract! project, :id, :name, :user, :description, :role, :date, :image_url
end