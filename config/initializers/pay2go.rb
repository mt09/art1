Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "12143236"  # 放測試站的 key


    pay2go.hash_key    = "ozYlHVYvYP4ofE8Oj5BqP7j1wBsd9oKx"
    pay2go.hash_iv     = "YITGERbDGg1VV9Jf"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "1234567"  # 放正式站的 key


    pay2go.hash_key    = "xxxxxxxx"
    pay2go.hash_iv     = "xxxxxxxx"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end