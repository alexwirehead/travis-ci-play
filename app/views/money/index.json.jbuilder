json.array!(@money) do |money|
  json.extract! money, :id, :balance, :name
  json.url money_url(money, format: :json)
end
