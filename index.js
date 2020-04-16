const inquirer = ("inquirer");
const mysql = require("mysql");
const cTable = require('console.table');


const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Greaser2!",
  database: "employees_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  

});

const initialPrompt = [ 
  {
   type: "list",
   message: "What would you like to do?",
   name: "action",
   choices: [
    "Add Department",
    "Add Role",
    "Add Employee",
    "View Deparments",
    "View Roles",
    "View Employees",
    "Update Employee Roles", 
    "Nothing"
  ]

}
  ];

function begin() {
inquirer.prompt(initialPrompt) 

.then (function (ans) {
  if (ans.action === "Add Department") {
    addDepartment();
  }
  if (ans.action === "Add Role") {
    addRole();
  }
  if (ans.action === "Add Employee") {
  addEmployee();
  }
  if (ans.action === "View Department") {
  viewDepartment();
  }
  if (ans.action === "View Roles") {
  viewRoles();
  }
  if (ans.action === "View Employee") {
  viewEmployee();
  }
  if (ans.action === "Update Employee roles") {
  updateEmployeeRoles();
  }
  if (ans.action === "Nothing") {
    nothing();
  }
  begin();
}
)}
begin();
