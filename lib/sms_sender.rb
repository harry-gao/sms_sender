require 'digest/hmac'
require 'base64'
require 'httparty'

class SmsSender
  def initialize(client_id, client_secret, host='api.smsglobal.com', port='443', request_url='/v1/sms/' )
    @client_id = client_id
    @secret = client_secret
    @host = host
    @port = port
    @request_url = request_url
  end

  def send(title, msg, mobile)
    @nonce = (0...8).map { (65 + rand(26)).chr }.join
    @ts = Time.now.to_i
    mac = calculate_mac
    header = {'Authorization' => "MAC id=\"#{@client_id}\", ts=\"#{@ts}\", nonce=\"#{@nonce}\", mac=\"#{mac}\"",
              'Content-Type' => 'application/json',
              'Accept' => 'application/json'}

    protocol = @port.to_s == '443' ? 'https' : 'http'
    body = {"origin"=>title, "destination"=>mobile, "message"=>msg }
    response = HTTParty.post("#{protocol}://#{@host}:#{@port}#{@request_url}", headers: header, body: body.to_json)
    response.code
  end

  private
  def calculate_mac
    body = "#{@ts}\n#{@nonce}\nPOST\n#{@request_url}\n#{@host}\n#{@port}\n\n"
    digest = Digest::HMAC.digest(body, @secret, Digest::SHA256)
    Base64.strict_encode64 digest
  end
end