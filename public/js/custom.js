/***** Animation JS *****/
new WOW().init();

$(".shwbtn").click(function() {
  $(".myText").toggle();  
});

$('.testSlider').slick({
  dots: true,
  infinite: false,
  speed: 300,
  slidesToShow:1,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
});

// quantity start
var QtyInput = (function () {
var $qtyInputs = $(".qty-input");
if (!$qtyInputs.length) {
return;
}
var $inputs = $qtyInputs.find(".product-qty");
var $countBtn = $qtyInputs.find(".qty-count");
var qtyMin = parseInt($inputs.attr("min"));
var qtyMax = parseInt($inputs.attr("max"));
$inputs.change(function () {
var $this = $(this);
var $minusBtn = $this.siblings(".qty-count--minus");
var $addBtn = $this.siblings(".qty-count--add");
var qty = parseInt($this.val());
  if (isNaN(qty) || qty <= qtyMin) {
  $this.val(qtyMin);
  $minusBtn.attr("disabled", true);
  } else {
  $minusBtn.attr("disabled", false);

  if(qty >= qtyMax){
  $this.val(qtyMax);
  $addBtn.attr('disabled', true);
  } else {
  $this.val(qty);
  $addBtn.attr('disabled', false);
  }
}
});

$countBtn.click(function () {
var operator = this.dataset.action;
var $this = $(this);
var $input = $this.siblings(".product-qty");
var qty = parseInt($input.val());

if (operator == "add") {
qty += 1;
if (qty >= qtyMin + 1) {
$this.siblings(".qty-count--minus").attr("disabled", false);
}

if (qty >= qtyMax) {
$this.attr("disabled", true);
}
} else {
qty = qty <= qtyMin ? qtyMin : (qty -= 1);

if (qty == qtyMin) {
$this.attr("disabled", true);
}

if (qty < qtyMax) {
$this.siblings(".qty-count--add").attr("disabled", false);
}
}

$input.val(qty);
});
})();
// quantity end