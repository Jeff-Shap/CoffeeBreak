Rails.configuration.stripe = {
  :publishable_key => sk_test_WihPuQmGuaVRXNGHx5Z8OZHd,
  :secret_key      => pk_test_g0hdgorjGBmKlEdJ1sJIe5ev
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

# Stripe.api_key = secret_key
# STRIPE_PUBLIC_KEY = public_key
