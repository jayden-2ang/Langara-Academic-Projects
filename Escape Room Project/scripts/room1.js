let hint2;

function useBed(){
    alert("You look under the bed... You find a bizarre equation: L2.C1.T4.P3");
}

function useChair(){
    alert("You move the chair... You discover the number 4!");
}

function useDesk(){
    alert("You look under the desk... Unfortunately, you only find a piece of gum stuck underneath.");
}

function useLight(){
    alert("You check the lightbulb above you... You find that the number 6 is written on it!");
}

function useStand(){
    alert("You open the drawer from the nightstand... Inside lies a slip of paper with the number 3 on it!");
}

function usePic(){
    alert("You check the picture more closely... You notice that the number 5 is written is a small font.")
}


function hint(){
    if(hint2 == true){
    alert("Hint: The letters from the bizarre equation represent the first letter of each object.")
        hint2 = false;
    }
    else if(hint2 == false){
        alert("Hint 2: The number in the bizarre equation represents the order of the code.")
        hint2 = true;
    }
}

function enter(){
    if(document.getElementById("code").value == "4653"){
        alert("You unlock the door... To find another room!");
        window.location="room2.html";
    }
    else{
        document.getElementById("code").value = "";
        alert("Wrong code! Please try again.");
    }
}
function init() {
    hint2 = true;
    const hintButton = document.getElementById("hint");
    hintButton.addEventListener("click", hint);
    const enterButton = document.getElementById("enter");
    enterButton.addEventListener("click", enter);
    const bed = document.getElementById("bed");
    bed.addEventListener("click", useBed);
    const chair = document.getElementById("chair");
    chair.addEventListener("click", useChair);
    const desk = document.getElementById("desk");
    desk.addEventListener("click", useDesk);
    const light = document.getElementById("light");
    light.addEventListener("click", useLight);
    const stand = document.getElementById("stand");
    stand.addEventListener("click", useStand);
    const pic = document.getElementById("pic");
    pic.addEventListener("click", usePic);
}

document.addEventListener('DOMContentLoaded', init);