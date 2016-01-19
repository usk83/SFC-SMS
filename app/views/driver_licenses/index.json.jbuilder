json.array!(@driver_licenses) do |driver_license|
  json.extract! driver_license, :id, :type
  json.url driver_license_url(driver_license, format: :json)
end
