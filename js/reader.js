$(function() {
  $('.modal').on('shown.bs.modal', function (e) {
    $(this).find(".carousel-image").each(function(){
      this.removeAttribute('data-echo-wait');
      Echo.render();
    });
  });
});
