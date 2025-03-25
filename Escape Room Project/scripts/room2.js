function useCouch(){
    alert("You check under the couch, but you only find a broken remote which has the number 6.");
}

function useFlower(){
    alert("You look inside the vase... You discover the number 4!");
}

function useBook(){
    alert("You open a book on the Bookshelf... You find that the number 2 is on the front page.");
}

function useCarpet(){
    alert("You check under the Rug... You see a large spiderweb. As you try to move it out of the way, a bunch of spiders scurry past you. Underneath the spiderwebs, you notice a faint 5.");
}

function useTable(){
    alert("You look under the table, just to find... a word that looks like Ruvcob.");
}

function hint(){
    alert("Hint: RuVCoB indicates the order of the object's code.")
}

function enter(){
    if(document.getElementById("code").value == "5462"){
        alert("Congratulations! You have successfully escaped!");
        window.location="congratulations.html";
    }
    else{
        document.getElementById("code").value = "";
        alert("Wrong code! Please try again.");
    }
}
function init() {
    const hintButton = document.getElementById("hint");
    hintButton.addEventListener("click", hint);
    const enterButton = document.getElementById("enter");
    enterButton.addEventListener("click", enter);
    const couch = document.getElementById("couch");
    couch.addEventListener("click", useCouch);
    const flower = document.getElementById("flower");
    flower.addEventListener("click", useFlower);
    const book = document.getElementById("book");
    book.addEventListener("click", useBook);
    const carpet = document.getElementById("carpet");
    carpet.addEventListener("click", useCarpet);
    const table = document.getElementById("table");
    table.addEventListener("click", useTable);
}

document.addEventListener('DOMContentLoaded', init);