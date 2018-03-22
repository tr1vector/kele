require 'spec_helper'
require_relative '../lib/kele'
require_relative '../lib/messaging'

RSpec.describe Messaging, type: :request do
	describe '#get_messages' do
		it 'gets messages for one page as an object' do
			response = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
			user_messages = response.get_messages(nil)
			expect(user_messages.instance_variable_get(:@messages)).to be_a Object
		end
		it 'gets messages for multiple pages as an object' do
			response = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
			user_messages = response.get_messages(2)
			expect(user_messages.instance_variable_get(:@messages)).to be_a Object
		end
	end
end

RSpec.describe Messaging, type: :post do
	describe '#create_message' do
		it 'creates a message' do
			user = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
			sender_email = 'fricke9523@msn.com'
			recipient_id = 
			subject = 'Testing Rspec Create Message Test'
			body = 'Just testing Rspec Create Message test...please disregard!'
			new_message = user.create_message(sender_email, recipient_id, subject, body)
			expect(new_message).to have_http_status :success
		end
	end
end
