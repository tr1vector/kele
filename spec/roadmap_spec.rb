require 'spec_helper'
require_relative '../lib/kele'
require_relative '../lib/roadmap'

RSpec.describe Roadmap, type: :request do
	describe '#get_roadmap' do
		it 'returns the user roadmap as an object' do
			response = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
			chain_id = 6459
			get_roadmap = response.get_roadmap(chain_id)
			expect(get_roadmap.instance_variable_get(:@roadmap)).to be_a Object
		end
	end

	describe '#get_checkpoint' do
		it 'returns the user checkpoint as an object' do
			response = Kele.new('fricke9523@msn.com', 'lmq170FM!@')
			checkpoint_id = 2257
			get_checkpoint = response.get_checkpoint(checkpoint_id)
			expect(get_checkpoint.instance_variable_get(:@checkpoint)).to be_a Object
		end
	end
end

RSpec.describe Roadmap, type: :post do

end