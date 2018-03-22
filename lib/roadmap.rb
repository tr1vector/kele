module Roadmap
	def get_roadmap(chain_id)
		response = self.class.get(base_api_url("roadmaps/#{chain_id}"), headers: { "authorization" => @auth_token })
		@roadmap = JSON.parse(response.body)
	end

	def get_checkpoint(checkpoint_id)
		response = self.class.get(base_api_url("checkpoints/#{checkpoint_id}"), headers: { "authorization" => @auth_token })
		@checkpoint = JSON.parse(response.body)
	end

	def create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
		@enrollment_id = self.get_me['id']
		response = self.class.post(base_api_url("checkpoint_submissions"), 
		body: { 
			"checkpoint_id": checkpoint_id,
			"assignment_branch": assignment_branch,
			"assignment_commit_link": assignment_commit_link,
			"comment": comment,
			"enrollment_id": @enrollment_id
		}, 
		headers: { "authorization" => @auth_token })
	end
end