(function($){
  var stripeBtnUpdate = function(selector){
    var $btn1 = $(selector);
    if($btn1.length > 0){
      var sr = $btn1[0].shadowRoot;
      if(sr){
        $(sr).find('iframe').css('width','100%');
      }
    }
  };
  $(function(){
    setTimeout(function(){
      stripeBtnUpdate('header .donate_now_button stripe-buy-button');
      stripeBtnUpdate('.palistory_contribute_now_card .stripe_buy_now_button stripe-buy-button');
    }, 1000);
  });
})(jQuery);

