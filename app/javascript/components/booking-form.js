const wrap = $("#wrap");

wrap.on("scroll", function(e) {

  if (this.scrollTop > 147) {
    wrap.addClass("fix-scroll");
  } else {
    wrap.removeClass("fix-scroll");
  }

});

export { wrap };
