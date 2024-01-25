Basic "Hello World" Program in Dart
```dart
void main(){
	print('Hello World');
}```

Now, let's just talk about the basics: 
### Keywords
___

* Reserved words for the programming language
* [Official Docs](https://dart.dev/language/keywords)

### Data Types: 
___

* [Numbers](https://dart.dev/language/built-in-types#numbers) (`int`, `double`)
* [Strings](https://dart.dev/language/built-in-types#strings) (`String`)
* [Boolean](https://dart.dev/language/built-in-types#booleans) (`bool`)
* [Records](https://dart.dev/language/records) (`(value1, value2)`)
* [Lists](https://dart.dev/language/collections#lists) (`List`, also known as _arrays_)
	```dart
	List<String> name = ["Adi","James"];
	// or
	var name = ["Adi","James"];
	```
* [Sets](https://dart.dev/language/collections#sets) (`Set`)
* [Maps](https://dart.dev/language/collections#maps) (`Map`)
* [Runes](https://dart.dev/language/built-in-types#runes-and-grapheme-clusters) (`Runes`; often replaced by the `characters` API)
* [Symbols](https://dart.dev/language/built-in-types#symbols) (`Symbol`)
* The value `null` (`Null`)

### Constants
___

* Values whose value cannot be changed during writing and running of a program
* _Compile time constant_ (packaging) and _Run time constant_ (When the program starts running)
* We use the ```const``` keyword for example:
```dart
const pi = 3.14;
```
* We have `final` keyword which also works like a constant but, it gives us the flexibility to be know at the runtime instead of the compile time
### Variables
___

* Values whose value can be changed
* We use the `var` keyword for example:
```dart
var name = "Aditya Pandey";
```

### Functions
___

* Use for modularization
* For example:
```dart
String getFullName(String firstName, String lastName){
	return firstName + ' ' + lastName;
}
```

We can use another method too

```dart
String getFullName(String firstName, String lastName){
	return '$firstName $lastName'; // String Formatting
	// like fstring in Python
}
```

* We also have something as function shorthand
```dart
int add(int a,int b) => a+b;
// Fat arrow syntax
```
Or
```dart
var multiply = (a, b) => a*b;
// Lambda functions
```

## Operators (Same as other languages)
___

Symbols or keywords that perform operations on operands
`+ - * / %` etc (works on strings too)