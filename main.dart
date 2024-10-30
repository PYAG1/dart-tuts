import 'dart:io';

void main() {
  print('Hello, World!');
String favBook = "Harry Potter";
int year = 2002;
double price = 10.99;
bool IsRead= false;

print("My favorite book is $favBook. It was published in $year and costs  $price. Have I read it? $IsRead");

List<String> favCountries = ["Uk","US","Dubai"];
print("I would like to visit ${favCountries[0]}, ${favCountries[1]}, and  ${favCountries[2]}.");

for (var element in favCountries) {
  print("One of my favorite movies is ${element}.");
}

Map<String , int> myFriends = {
  "name":10,
  "John":20,
  "Abena":30
};

for (var element in myFriends.entries) {
  print("${element.key} is ${element.value} years old.");
}
int x =5;
int y= 10;

int sum = y+x;
print("The sum of ${x} and ${y} is $sum");
int diff = y-x;
print("The diff of ${x} and ${y} is $diff");
int prod = y*x;
print("The prod of ${x} and ${y} is $prod");
double  quo= x/y;
print("The quo of ${x} and ${y} is $quo");
int mod= y%x;
print("The mod of ${x} and ${y} is $mod");


//logical operators
/*Question 9:
Create a program that checks if a number is within a specified range (e.g., between 10 and 20, inclusive).

Use logical operators to determine if the number meets the criteria.
Print a message indicating whether the number is in the range or not.*/
int num = 18;
if( num >= 10  && num <= 20  ){
print("$num is within the range.");
}
else{
  print("$num is not within the range.");
}

/*
Question 10:
Create a program that determines if a person can vote based on their age. A person is eligible to vote if they are at least 18 years old and not older than 65 years old.

Define a variable for age.
Use logical operators to check if the person meets the voting criteria.
Print a message indicating whether they can vote or not.*/
Map<String,Map<String,dynamic>> Voters = {
  "Maame":{
    "age":10,
    "IsSpecial":false
  },
  "Obaapa":{
    "age":30,
    "IsSpecial":true
  },
  "Papa":{
    "age":20,
    "IsSpecial":false
  },
  "Grandma":{
    "age":70,
    "IsSpecial":true
  }
};
for (var voter in Voters.entries) {
  String name = voter.key;
  int age = voter.value["age"];
  bool isSpecial = voter.value["IsSpecial"];
  
  if (age >= 18 && age <= 65 && isSpecial == false) {
    print("$name (Special: $isSpecial)  $age, You are eligible to vote.");
  }
  if(isSpecial == true ){
 print("$name (Special: $isSpecial) $age, You are eligible to vote.");
  }
   else {
    print("$name (Special: $isSpecial) $age, You are not eligible to vote.");
  }
}


/*
Question 1:
Write a for loop that prints the numbers from 1 to 10, each on a new line.

Go ahead and write your code!*/

for ( int x = 1 ; x <= 10 ; x++ ){
  print(x);
}

/*
Question 2:
Write a while loop that prints the numbers from 5 down to 1.

Give it a try!*/
int xy= 5;
while(xy > 0 ){
  print(xy);
  xy--;

}

/*
Write a do-while loop that prints the number 1, and then increments the number until it reaches 3. Make sure to print the number on each iteration.*/
int xz=1;
do{
print(xz);

xz++;
}while(xz <=3);;

/*
Question 1:
Write a function called multiply that takes two integers as parameters and returns their product. Then call this function in the main function and print the result.

Go ahead and give it a try!*/
int multiply(int a,int b){
  return a*b;
}

int result = multiply(4, 5);
print(result);
Map<String, int> voters = {
  "Alice": 17,
  "Bob": 20,
  "Charlie": 15,
  "Diana": 22,
};


List<String> CheckEligibility(Map<String,int> a){
  List<String> res = [];
  for (var element in a.entries) {
    if(element.value < 18){
     res.add(element.key);
    }
 
    
  }
    return res;
}
List<String> results  = CheckEligibility(voters);
print(results);
/*
Question 2:
Define a function called calculateAverage that takes a list of integers and returns the average of those numbers. In the main function, create a list of integers and call calculateAverage, then print the result.*/
List<int> scores = [85, 90, 78, 92, 88];

double calculateAverage(List<int> a){
  int sum=0;
 for (var element in a) {
   sum += element;
 }
 double average = sum/a.length;
 return average;
}

double getAverage = calculateAverage(scores);
print(getAverage);

/*
Using a do-while loop, write a program that asks a user for their favorite fruit and stores it in a list. The loop should continue until the user types "exit". After exiting, print the list of favorite fruits.*/
 /*print("Hi how are you?");
do{
 
    String? name  = stdin.readLineSync();
    String? options = stdin.readLineSync()
}while()
*/
Map<String, List<int>> students = {
  "Alice": [85, 90, 78],  
  "Bob": [80, 85, 88],
  "Charlie": [92, 95, 93],
};

double avg1 = 0;
int sumLast =0;

for (var element in students.entries) {
for (var element in element.value) {
sumLast += element;
}
avg1 = sumLast / element.value.length;
print("${element.key} has ${avg1}");
  
}

Map<String, Map<String, dynamic>> people = {
  "John": {"age": 25, "hobbies": ["Reading", "Cycling", "Swimming"]},
  "Alice": {"age": 30, "hobbies": ["Cooking", "Swimming"]},
  "Bob": {"age": 22, "hobbies": ["Reading", "Gaming"]},
};

 filterByHobby(Map<String, Map<String, dynamic>> a,String hobby){
  List<String> Peeps =[];
  for (var element in a.entries) {
   
    if(element.value["hobbies"] == hobby){
      Peeps.add(element.key);
      print(element.key);
    }
  }
return Peeps;
};
print(filterByHobby(people, "Reading"));
}


