var btnToggle = document.querySelector('.toggle-btn');

btnToggle.addEventListener('click', () =>{
    document.getElementById('sidebar').classList.toggle('active');
});
function con(){
    const mysql      = require('mysql');
    const con = mysql.createConnection({
        host     : 'localhost',
               port: 3307,
               user     : 'newuser',
               password : 'root',
               database : 'hotel',
               insecureAuth: true
     });
    return con
}
var flag = 0;
function open_close() {
    let x = document.getElementsByClassName("container");
    let y = document.getElementsByClassName("reserv-box");
        let i;
    if (flag === 0){
        document.getElementById("sidebar").style.width = "30%";
        document.getElementById("main").style.marginLeft = "29%";
        btnToggle.style.marginLeft="-2%";
        for (i = 0; i < x.length; i++) {
            x[i].style.marginLeft = "0%";
        }
        for (i = 0; i < y.length; i++) {
            y[i].style.marginLeft = "25%";
        }
        flag = 1;
    } else {
        document.getElementById("sidebar").style.width = "27%";
        document.getElementById("main").style.marginLeft = "0";
        btnToggle.style.marginLeft="-1%";
        
        for (i = 0; i < x.length; i++) {
            x[i].style.marginLeft = "-8%";
        }
        for (i = 0; i < y.length; i++) {
            y[i].style.marginLeft = "0%";
        }
        flag = 0;
    }
}

let customTitlebar = require('custom-electron-titlebar');

new customTitlebar.Titlebar({
    backgroundColor: customTitlebar.Color.fromHex('#050912'),
    menu: false,
    maximizable: false
});