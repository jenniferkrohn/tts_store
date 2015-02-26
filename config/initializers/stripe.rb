Rails.configuration.stripe = {
	:publishable_key => "pk_test_qUcqXGnjBjvs7BB43it2ayzl",

	:secret_key => "sk_test_0oY4PDyURkKLkJOcYH4lF8sv"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]