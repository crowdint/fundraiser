stripeResponseHandler = (status, response) ->
  if response.error
    $(".payment-errors").html "<p class='alert alert-error'>" + response.error.message + "</div>"
    $(".submit-button").removeAttr "disabled"
  else
    form$ = $("#payment-form")
    token = response["id"]
    form$.append "<input type='hidden' name='contributor[stripeToken]' value='" + token + "'/>"
    $('.buy .over').show()
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


