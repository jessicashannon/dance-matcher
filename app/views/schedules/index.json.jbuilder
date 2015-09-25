json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :day, :host_id, :guest_id
  json.url schedule_url(schedule, format: :json)
end
