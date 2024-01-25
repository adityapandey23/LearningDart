These statements are used to control the flow of the program

## Conditional Control Statements
___

* ### if, else if & else statement
	* Similar syntax to other programming languages
	* We also have the same support for escape sequence

* ### switch statement
	* This also has similar syntax to other programming languages

## Looping Control Statements
___

* ### for loop
	* Similar syntax to other programming language

* ### while loop
	* This also has similar syntax to other programming languages

* ### do while loop
	* This also has similar syntax to other programming languages

* ### for each loop
	* It is used to iterate over a collection
```dart
	collection.forEach((element){
		// code to be executed
	});
```
* Let's take an example
	```dart
	List<int> numbers = [1, 2, 3, 4, 5];
	numbers.forEach((number) {
	  print('Number: $number');
	});
	```

## Collections
___

[Official Documentation for Collections](https://dart.dev/language/collections)

* ### Lists
	* Basically arrays and the syntax is 
	```dart
	var l = ['Foo', 'Bar', 'Baz'];
	// Can be both homogenous and hetrogenous
	```
	* We also have properties like `length` and pre-built functions like `add(element)`, `insert(index, element)`, `remove(element)`, `removeAt(index)`, `clear()`, `contains(element)`, `indexOf(index)`, `lastIndexOf(element)` etc
	
* ### Sets
	* Same as sets in python
	```dart
	var name = {'Foo', 'Bar', 'Baz'};
	// list of unique things
	```
	
* ### Maps
	* It is a key-value pair
	* Like dictionary in python
	```dart
	var person_age = {'Aditya':20, 'Vandad':37};
	// key should be unique
	```
	
* ### Queues
* ### Runes
* ### Iterables

Note: If we have multiple datatype in one single collection the overall datatype changes to  object (Candy and Twix bar example)