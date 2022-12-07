import { readFile } from "node:fs";

readFile("../input.txt", "utf8", (err, data) => {
  if (err) {
    console.log("Error: ", err);
    return;
  }
  const countArr = [];
  const dataArr = data.split("\n");
  let elf = 0;
  dataArr.forEach((string) => {
    if (string.length === 0) {
      elf++;
      return;
    }
    if (countArr[elf]) {
      countArr[elf] = countArr[elf] + parseInt(string);
    } else {
      countArr[elf] = parseInt(string);
    }
  });
  console.log(Math.max(...countArr));
});
