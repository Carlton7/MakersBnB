$(function() {
  $("body").vegas({
      delay: 7000,
      timer: false,
      firstTransition: 'fade',
      firstTransitionDuration: 5000,
      TransitionDuration: 4800,
      slides: [
          { src: "/img/pool.jpg" },
          { src: "/img/zerohaus.jpg" },
          { src: "/img/masterbedroom.jpg" },
          { src: "/img/livingspace.jpg" },
      ]
  });
});