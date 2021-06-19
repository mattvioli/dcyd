let elements = document.querySelectorAll(".proof-svg");

elements.forEach((item) => {
  item.addEventListener("click", showProof);
});

function showProof(e) {
  e.target.classList.toggle("flip-horizontally");
  let proofImg = document.querySelector(`#proof${e.target.id}`);

  if (proofImg.style.display === "") {
    proofImg.style.display = "block";
  } else {
    proofImg.style.display = "";
  }
  console.log(e.target.id);
}
