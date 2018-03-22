require 'spec_helper'
require_relative '../lib/kele'

RSpec.describe Kele, type: :request do
	obtain_auth_token = Kele.new('fricke9523@msn.com', 'lmq170FM!@')

	describe '#initialize' do
		it 'returns the user auth token' do
			expect(obtain_auth_token.instance_variable_get(:@auth_token)).to be_a String
		end
	end

	describe '#get_me' do
		it 'returns the user info as an object' do
			kele_user = obtain_auth_token.get_me
			expect(kele_user.instance_variable_get(:@user)).to be_a Object
		end
	end

	describe '#get_mentor_availability' do
		it 'returns mentor availability as an object' do
			mentor_id = 1994246
			mentor_availability = obtain_auth_token.get_mentor_availability(mentor_id)
			expect(mentor_availability.instance_variable_get(:@mentor)).to be_a Object
		end
	end
end