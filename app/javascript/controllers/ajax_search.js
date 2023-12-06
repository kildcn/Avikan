const appUrl = `http://localhost:3000/captures`

function cleanSuggestions() {
  const ul = document.getElementById("results");
  ul.innerHTML = "";
}

const searchBar = document.getElementById("search-bar");
searchBar.addEventListener("keyup", () => {
  fetch(`${appUrl}?query=${searchBar.value}`)
    .then(response => response.json())
    .then((data) => { console.log(data)});
});
