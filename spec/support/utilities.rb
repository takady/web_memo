def http_authorization
  user = ENV['WEB_MEMO_USER']
  passwd = ENV['WEB_MEMO_PASS']
  { HTTP_AUTHORIZATION: ActionController::HttpAuthentication::Basic.encode_credentials(user,passwd) }
end
