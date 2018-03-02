module Messaging
	def get_messages(page = nil)
		if page == nil
			response = self.class.get(base_api_url("message_threads"), headers: { "authorization" => @auth_token })
		else
			response = self.class.get(base_api_url("message_threads?page=#{page}"), headers: { "authorization" => @auth_token })
		end
		JSON.parse(response.body)
	end

	def create_message()

	end
end

