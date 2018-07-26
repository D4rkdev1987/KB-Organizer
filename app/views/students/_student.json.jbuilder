json.extract! student, :id, :part_time_id, :full_time_id, :fname, :lname, :phone, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
