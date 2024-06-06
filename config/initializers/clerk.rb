Clerk.configure do |c|
  c.api_key = "sk_test_i7P93wC6rMzZ8WM4em4YHw7ShTzZetI8BsyJwKraRr"
  c.excluded_routes = []
  c.middleware_cache_store = Rails.cache
end
ENV['CLERK_SIGN_IN_URL'] = 'https://summary-kangaroo-92.accounts.dev/sign-in'
