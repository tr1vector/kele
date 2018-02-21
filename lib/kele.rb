require 'httparty'

class Kele
	include HTTParty

	base_uri "https://www.bloc.io/api/v1/"

	def initialize(email, password)
		response = self.class.post(base_api_url("sessions"), body: { "email": email, "password": password })
		raise "Invalid email or password" if response.code == 404
		@auth_token = response["auth_token"]
	end

	private
	def base_api_url(endpoint)
		"https://www.bloc.io/api/v1/#{endpoint}"
	end
end