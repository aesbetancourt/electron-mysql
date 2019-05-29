/*MySQL Connections*/
const mysql      = require('mysql');
var connection = mysql.createConnection({
   host     : 'localhost',
          port: 3307,
          user     : 'newuser',
          password : 'root',
          database : 'hotel',
          insecureAuth: true
});
var username;
connection.connect();

connection.query('SELECT * FROM hotel.sys_admins', function (error, rows, fields) {
   if (error) throw error;

   // Existing users
   const loginBtn = document.getElementById('login');
   loginBtn.addEventListener('click', () =>{
      username = document.getElementById('username').value;
      let password = document.getElementById('password').value;
      var flag = 0;
      for (let i = 0; i < rows.length; i++) {
         if (username === rows[i].user_id && password === rows[i].password){
            document.location.href = 'hotel.html';
            flag = 1;
         }
      }
      if (flag === 0){
         alert('Error: Usuario o clave invalida.')
      }
   });
});
connection.end();
