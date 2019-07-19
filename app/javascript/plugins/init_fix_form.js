const fixedForm = () => {
  const wrap = document.querySelector("#wrap");
  if (wrap) {
    document.addEventListener("scroll", (event) => {

        console.log(wrap.height)
        // console.log(window.innerHeight)
      if (window.scrollY >= (window.innerHeight - wrap.height)) {
          wrap.classList.add("fix-scroll");
      }
      else {
          wrap.classList.remove("fix-scroll");
      }
    })
  }
}

export { fixedForm };
