require 'sinatra'

configure do
  set :port, 5000
end

post '/hooks/synsbasen_api' do
  signing_secret = "sb_whsk_cf453483180f0754fdfa2920c816a533"

  payload = request.body.read
  signature = request.env['HTTP_X_SYNSBASEN_SIGNATURE'] || ""

  computed_signature = OpenSSL::HMAC.hexdigest(
    OpenSSL::Digest.new('sha256'),
    signing_secret,
    payload
  )

  if Rack::Utils.secure_compare(computed_signature, signature)
    puts "Signatures match!"
  else
    puts "Signatures does not match ..."
  end

  puts "Signature: #{request.env['HTTP_X_SYNSBASEN_SIGNATURE']}"
  puts "Request body: #{payload}"
end
