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
      exp_month: $("#expires_on_2i option:selected").val()
      exp_year: $("#expires_on_1i option:selected").val()
    , stripeResponseHandler
    false


