const title = "可愛いタイトル";
const header = document.querySelector("header");
let i = 0;

const intervalId = setInterval(() => {
  if(i >= title.length) {
    clearInterval(intervalId);
    return;
  }

  const span = document.createElement("span");
  span.textContent = title[i];
  header.appendChild(span);
  i++;
}, 100);
