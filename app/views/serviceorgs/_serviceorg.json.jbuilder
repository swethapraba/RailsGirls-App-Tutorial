json.extract! serviceorg, :id, :name, :address, :website, :phone, :nonperishables, :fresh, :refridgerated, :frozen, :cooked, :hours, :otherInfo, :created_at, :updated_at
json.url serviceorg_url(serviceorg, format: :json)