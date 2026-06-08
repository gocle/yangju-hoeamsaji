$(function () {

  /* =========================
     스크롤 등장 애니메이션
  ========================= */

  function riseMotion() {

    $('.js-rise, .section-rise').each(function () {

      var $this = $(this);
      var winTop = $(window).scrollTop();
      var winHeight = $(window).height();

      var itemTop = $this.offset().top;

      if (winTop + winHeight * 0.85 > itemTop) {
        $this.addClass('is-show');
      }
    });
  }

  riseMotion();

  $(window).on('scroll', function () {
    riseMotion();
  });



  /* =========================
     Heritage 이미지 무한 흐름
  ========================= */

  $('.marquee-track').each(function () {

    var $track = $(this);
    var $items = $track.children().clone();

    $track.append($items);
  });

 $('.visual-slider').slick({
    arrows: true,
    dots: true,
    infinite: true,
    autoplay: true,
    autoplaySpeed: 5000,
    speed: 1200,
    fade: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    cssEase: 'ease-in-out'
  });


  /* =========================
     풀드롭 메뉴
  ========================= */
  $('.site-header').on('mouseleave', function () {
      $('.site-header').removeClass('is-open');
      $('.gnb > ul > li').removeClass('is-active');
  });

  $('.gnb > ul > li').on('mouseenter', function () {
      $('.site-header').addClass('is-open');

      $('.gnb > ul > li').removeClass('is-active');
      $(this).addClass('is-active');
  });

  /* =========================
     모바일 gnb
  ========================= */

  $('.mobile-menu-btn').on('click', function () {
    $('.mobile-gnb, .mobile-dim').addClass('is-open');
    $('body').addClass('is-mobile-open');
    });

    $('.mobile-close, .mobile-dim').on('click', function () {
    $('.mobile-gnb, .mobile-dim').removeClass('is-open');
    $('body').removeClass('is-mobile-open');
    });

    $('.mobile-menu > li > button').on('click', function () {
    var $li = $(this).parent();

    $li.toggleClass('is-active');
    $li.children('ul').stop().slideToggle(300);

    $li.siblings().removeClass('is-active')
        .children('ul').stop().slideUp(300);
  });

  /* language dropdown */
  $('.lang-btn').on('click', function (e) {
      e.stopPropagation();

      const $box = $(this).closest('.lang-box');

      $('.lang-box').not($box).removeClass('is-open');
      $box.toggleClass('is-open');
  });

  $(document).on('click', function () {
      $('.lang-box').removeClass('is-open');
  });

  /* sub tab */
  $('.heritage-tab-menu button').on('click', function () {
      var tabName = $(this).data('tab');

      $('.heritage-tab-menu button').removeClass('is-active');
      $(this).addClass('is-active');

      $('.heritage-tab-content').removeClass('is-active');
      $('#' + tabName).addClass('is-active');
  });

});

$(window).on('load', function () {

    if ($('.popup-overlay').length === 0) return;

    $('.popup-overlay').addClass('is-active');

    $('.popup-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        infinite: true,
        speed: 500
    });

});

$(document).on('click', '.popup-close', function () {
    $('.popup-overlay').removeClass('is-active').fadeOut(200);
});


