//scroll
const prev = document.querySelector('.prev')
const next = document.querySelector('.next')
const slider = document.querySelector('.slider')

const prev2 = document.querySelector('.prev2')
const next2 = document.querySelector('.next2')
const slider2 = document.querySelector('.slider2')


prev.addEventListener('click', () => (
    slider.scrollLeft -= 300
))

next.addEventListener('click', () => (
    slider.scrollLeft += 300
))

prev2.addEventListener('click', () => (
    slider2.scrollLeft -= 300
))

next2.addEventListener('click', () => (
    slider2.scrollLeft += 300
))
//menu
window.addEventListener("scroll", function(){
    var header = this.document.querySelector("header");
    header.classList.toggle("abajo",this.window.scrollY>0)
})

//Ejecutando funciones
document.getElementById("icon-search").addEventListener("click", mostrar_buscador);
document.getElementById("cover-ctn-search").addEventListener("click", ocultar_buscador);

//Declarando variables
bars_search =       document.getElementById("ctn-bars-search");
cover_ctn_search =  document.getElementById("cover-ctn-search");
inputSearch =       document.getElementById("inputSearch");
box_search =        document.getElementById("box-search");


//Funcion para mostrar el buscador
function mostrar_buscador(){

    bars_search.style.top = "130px";
    cover_ctn_search.style.display = "block";
    inputSearch.focus();

}

//Funcion para ocultar el buscador
function ocultar_buscador(){

    bars_search.style.top = "-100px";
    cover_ctn_search.style.display = "none";
    inputSearch.value = "";
    

}