require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(id name age)
  csv << csv_column_names
  @users.each do |user|
    csv_column_values = [
        user.id,
        user.name,
        user.age
    ]
    csv << csv_column_values
  end
end