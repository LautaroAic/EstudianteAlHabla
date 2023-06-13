//scroll
const prev = document.querySelector('.prev')
const next = document.querySelector('.next')
const slider = document.querySelector('.slider')

prev.addEventListener('click', () => (
    slider.scrollLeft -= 300
))

next.addEventListener('click', () => (
    slider.scrollLeft += 300
))
//menu
window.addEventListener("scroll", function(){
    var header = this.document.querySelector("header");
    header.classList.toggle("abajo",this.window.scrollY>0)
})