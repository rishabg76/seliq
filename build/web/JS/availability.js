function acaller(ffid,spid){
    //alert("Hello");
    var data=document.getElementById(ffid).value;
    var xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4){
            if((xhr.status>=200 && xhr.status<300)||xhr.status==304){
                document.getElementById(spid).innerHTML=xhr.responseText;
            }
        }
    }
    xhr.open("get","/Project1/fc/?page=AvailabilityCheck&type=model&email="+data,true);
    xhr.send(null);
}
