sms_sender
==========


A ruby gem to send SMS through smsglobal.com.au


## Installation

Add this line to your application's Gemfile:

    gem 'sms_sender'

Or install it yourself as:

    $ gem install sms_sender

## Usage

```
  sms_sender = Sms_Sender.new('your_client_id', 'your_client_secret')   
  sms_sender.send('title','message','mobile_number')
```
The return value from send method is the HTTP code from smsglobal.com.au. Below is the code list from smsglobal

Response Codes
The following response codes apply to all requests. Check each request type in the list below for more response codes specific to that request.

Status Code | Meaning | Scenario
---         | ---     | ---
200 |OK | The request was processed successfully
400 |Bad Request |Your request contained invalid or missing data
401 |Unauthorized | Authentication failed or the Authenticate header was not provided
404 |Not Found |The URI does not match any of the recognised resources, or, if you are asking for a specific resource with an ID, that resource does not exist
405 |Method Not Allowed|  The HTTP request method you are trying to use is not allowed. Make an OPTIONS request to see the allowed methods
406 |Not Acceptable|  The Accept content type you are asking for is not supported by the REST API
415 |Unsupported Media Type|  The Content-Type header is not supported by the REST API


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
