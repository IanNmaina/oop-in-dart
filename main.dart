import 'dart:ffi';

class person{
  //properties
  String name;
  String email;
  int phone;
  bool ismarried;
  int age;

//constructor
person(
  this.name,
  this.email,
  this.phone,
  this.ismarried,
  this.age,
);
//method to display 
void displayInfo(){
  print('Name: $name');
  print('Email:$email');
  print('Phone:$phone');
 print('Marital Status: ${ismarried ? 'Married' : 'Single'}');
  print('Age:$age');

}
}

void main (){
  //create an instance for a person
  var Person=person('IAN', 'emaicensures22@mail.com', 010123456, true, 23);
  //calling the function
  Person.displayInfo();
}