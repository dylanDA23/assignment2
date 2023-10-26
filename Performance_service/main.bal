import ballerina/io;
import ballerina/graphql;
import ballerinax/mongodb;

employee[] employeesArray = [
    {first_name: "Darren", last_name: "Smith", id_employee: 1, job_title: "lecturer", department: "Cyber-security", kpis: []}
];

// Employee[] employees = [
//     {employeeId: 1, firstName: "John", lastName: "Doe", jobTitle: "Lecturer", department: "Computer Science", kpis: []},
//     {employeeId: 2, firstName: "Jane", lastName: "Smith", jobTitle: "Assistant Professor", department: "Electrical Engineering", kpis: []},
// ]

HOD[] HODsArray =[
    {hodID: 2 , firstName: "Mark", lastName: "Smith", department:"Informatics"}
];

Supervisor[] supervisorsArray =[
    {supervisorId: 3, firstName: "anthony", lastName: "Brown", department: "ComputerScience", assignedEmployees: []}
];


type employee record {|
    string first_name;
    string last_name;
    int id_employee;
    string job_title;
    string department;
    KPI[] kpis;
|};


type KPI record{|

    string name;
    float value;
|};

type HOD record{|
    int hodID;
    string firstName;
    string lastName;
    string department;
|};

type Supervisor record{|
    readonly int supervisorId;
    string firstName;
    string lastName;
    string department;
    employee[] assignedEmployees;
|};

type departments record{|
    string informatics;
    string cyberSecurity;
    string compuerScience;
|};

type Departments record{|
    string computerScience;
    string informatics;
    string cyberSecurity;
|};


table<Supervisor> key(supervisorId)sup_assignment= table[
    {supervisorId: 0 , firstName: "", lastName: "", department: "", assignedEmployees: []}
];

// type Supervisor record{|
//     int supervisorId;
//     string firstName;
//     string lastName;
//     string department;
//     employee[] assignedEmployees;
// |};


// public type Mutation {
//     public function gradeEmployeeKPI(employeeId int, kpiName string, value float) returns KPI {
//         // Implement the logic to grade an employee's KPI and update the score in the database
//         // Here, we'll update the KPI in the sample data
//         var employee = employees[employeeId - 1];
//         KPI kpi = {name: kpiName, value: value};
//         employee.kpis.push(kpi);
//         return kpi;
//     };
// };





// type EmployeeR record {
//     employeeId int;
//     firstName string;
//     lastName string;
//     jobTitle string;
//     department string;
//     kpis KPI[];
// }

// type Departments record{|
//     string informatics;
//     string software_engineering;
//     string cyber_security;
// |};


// type KIP record{|
// |}




// // Employee
// // Create their KPIs
// // Grade their Supervisor
// // View Their Scores
configurable int port = 9000;
service /performanceManagement on new graphql:Listener(port) {
    
}


