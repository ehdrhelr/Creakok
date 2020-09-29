var pTimer=0;
function progressFunction(){
    let elements = document.getElementsByClassName('myBars');
    let interval = 1;
    let updatesPerSecond = 2000 / 100; //60;
    let id = setInterval(progressAnimator, updatesPerSecond);

    function progressAnimator(){
        pTimer++;
        //console.log("pTimer:"+pTimer+"/"+elements.length);

        for(var i=0; i<elements.length; i++){
            let element = elements.item(i);
            //console.log("i:"+i+"/"+element.max+"/"+element.value);
            if(element.value<element.dataset.percentage) {
                element.value = element.value + interval;
            }
        }//end of for

        if(pTimer>100) {
            pTimer=0;
            clearInterval(id);
        }
    }//end of progressAnimator
}//end of progressFunction
progressFunction();
