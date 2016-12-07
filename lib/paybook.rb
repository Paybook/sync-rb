require "paybook/version"
require "httparty"

module Paybook
	class Api
		include HTTParty
		base_uri 'https://sync.paybook.com/v1'

		format :json

		def initialize(api_key)
			@api_key = api_key
		end

		def connect(params=nil, method, endpoint)
			if method == 'get'
				response = self.class.get(endpoint, :query => params)
			elsif method == 'post'
				response = self.class.post(endpoint, :query => params)
			elsif method == 'delete'
				response = self.class.delete(endpoint, :query => params)
			else
				print 1
			end

			return JSON.parse(response.body)
		end
		
		def get_sites
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'get', '/catalogues/sites')
		end
		
		def get_sites
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'get', '/catalogues/sites')
		end
		
		def get_contries
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'get', '/catalogues/countries')
		end

		def get_site_organizations
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'get', 'catalogues/site_organizations')
		end

		def user_list
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'get', '/users')
		end
		
		def create_user(username)
			data = {
				:api_key => @api_key,
				:name => username
			}
			return self.connect(data, 'post', '/users')
		end
		
		def delete_user(id_user)
			data = {
				:api_key => @api_key
			}
			return self.connect(data, 'delete', '/users/' + id_user)
		end
		
		def create_session(id_user)
			data = {
				:api_key => @api_key,
				:id_user => id_user
			}
			return self.connect(data, 'post', '/sessions')
		end
		
		def validate_session(token)
			return self.connect('get', '/sessions/' + token + '/verify')
		end
		
		def delete_session(token)
			return self.connect('delete', '/sessions/' + token)
		end
		
		def register_credentials(id_user, token)
			data = {
				:api_key => @api_key,
				:id_user => id_user,
				:token => token
			}
			return self.connect(data, 'get', '/credentials')
		end
	end
end
