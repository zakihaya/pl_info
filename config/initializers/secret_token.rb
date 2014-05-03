# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#PlInfo::Application.config.secret_key_base = 'e8ff25acc80a397ac472e9a1b8ae4fb947b951a683abbc310355d71ba0a45d6d7afc3bbdff98dcc2b925f5989efe4d4b485176f753457bb5e233e8f37aa912e9'

require 'securerandom'
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

PlInfo::Application.config.secret_key_base = secure_token

