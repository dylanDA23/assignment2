import ballerina/io;
import ballerina/graphql;
import ballerinax/mongodb;

employee[] employees = [
    {employeeId: 1, firstName: "John", lastName: "Doe", jobTitle: "Lecturer", department: "Computer Science", kpis: []},
    {employeeId: 2, firstName: "Jane", lastName: "Smith", jobTitle: "Assistant Professor", department: "Electrical Engineering", kpis: []},
]



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
    int supervisorId;
    string firstName;
    string lastName;
    string department;
    employee[] assignedEmployees;
|};

type departments record{|
    string cnformatics;
    string cyberSecurity;
    string compuerScience;
|};




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


