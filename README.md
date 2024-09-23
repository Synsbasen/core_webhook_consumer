# Core Webhook Consumer
This is a simple webhook consumer that listens for incoming webhooks from Synsbasen Core and logs the incoming data to the console.

# Prerequisites
- Sinatra gem (install with `gem install sinatra`)
- Rackup gem (install with `gem install rackup`)
- Puma gem (install with `gem install puma`)

# Starting the application
To start the application, run the following command in the terminal:
```bash
ruby app.rb
```

A server will start on `localhost:5000`. To test the application, you can send a POST request to `localhost:5000/hooks/synsbasen_api` with a JSON payload.
