
stripeResponseHandler = (status, response) ->
  if response.error

    # show the errors on the form
    $(".payment-errors").html "<p class='alert alert-error'>" + response.error.message + "</div>"
    $(".submit-button").removeAttr "disabled"
  else
    form$ = $("#payment-form")

    # token contains id, last4, and card type
    token = response["id"]

    # insert the token into the form so it gets submitted to the server
    form$.append "<input type='hidden' name='contributor[stripeToken]' value='" + token + "'/>"

    # and submit
    $.post "manage/contributions.js", form$.serialize()

$(document).ready ->
  $("#payment-form").submit (event) ->
    event.preventDefault()
    $(".submit-button").attr "disabled", "disabled"
    Stripe.createToken
      number: $(".card-number").val()
      cvc: $(".card-cvc").val()
      exp_month: $(".card-expiry-month").val()
      exp_year: $(".card-expiry-year").val()
    , stripeResponseHandler
    false


