require 'spec_helper'
require_relative '../lib/kele'
require_relative '../lib/roadmap'

RSpec.describe Roadmap, type: :request do
	obtain_auth_token = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
	describe '#get_roadmap' do
		it 'returns the user roadmap as an object' do
			chain_id = 6459
			get_roadmap = obtain_auth_token.get_roadmap(chain_id)
			expect(get_roadmap.instance_variable_get(:@roadmap)).to be_a Object
		end
	end

	describe '#get_checkpoint' do
		it 'returns the user checkpoint as an object' do
			checkpoint_id = 2257
			get_checkpoint = obtain_auth_token.get_checkpoint(checkpoint_id)
			expect(get_checkpoint.instance_variable_get(:@checkpoint)).to be_a Object
		end
	end
end

RSpec.describe Roadmap, type: :post do

end