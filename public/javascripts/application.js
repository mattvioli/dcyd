let elements = document.querySelectorAll(".proof-svg");

elements.forEach((item) => {
  item.addEventListener("click", showProof);
});

function showProof(e) {
  e.target.classList.toggle("flip-horizontally");
  console.log(e.target.id);
}
