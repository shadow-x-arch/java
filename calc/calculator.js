const display= document.getElementById("display");

function appendToDisplay(input){
  display.value +=input;

}

function caclulate(){
  try{
    display.value=eval(display.value);
    console.log("pressed");
  }
  catch (error){
display.value=("error");
  }

}


function clearSreen(){

  display.value=("");
      console.log("dell was pressed");

}


