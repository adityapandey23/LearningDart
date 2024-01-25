## Introduction to Null values (?)
___

* [Official Documentation](https://dart.dev/null-safety)
* We can also have an absence of a value which is known as `null` in Dart
* **Note:** Thou Dart is dynamically type but while declaring a null value we have to specify the data type otherwise the compile won't understand which data type value is null
* To make a value null-able  we have to use a '?' after the data type
	```dart
	String? name = null; // ? -> nullable
	```
* This works with all the data types
* We have to make sure that if we are using collection then whether we want to make value of the collection null or the individual value of the collection as null, to understand this let't take some examples
	```dart
	List<String> names; // None
	```
	In this particular code nothing can is nullable
	
	```dart
	List<String?> names; // Elements
	```
	In this particular code individual elements can be null but the whole collection cannot be null
	
	```dart
	List<String>? names; // Collection
	```
	In this particular code individual elements cannot be null but the collection as a whole can be null
	
	```dart
	List<String?>? names; // Both
	```
	In this particular code individual elements as well the whole collection can be nullable


## Cherry-picking Non-Null values (??)
___

* Sometimes we cannot just look at the value and tell whether it's is null or not and to solve this we'll be using the `??` infix operator
* We also use the old conditional statements approach but we don't prefer that as we have this a feature in flutter
* Let's take an example
	```dart
	void test(String? firstName, String? lastName){
		const nonNullValue = firstName ?? lastName;
	}
	```
	What is basically does is it's selects the non null value


## Null-aware assignment Operator (??=)
___

* It is used to assign a value to a variable only if the variable is currently `null`. If the variable already has a non-null value, the assignment is skipped, and the existing value is retained.
```dart
	String? nullableString;
	nullableString ??= "Default Value";
	print(nullableString);
```


## Conditional invocation (?.)
___
* This is basically used when we have to invoke the property of a collection that can be nullable
* For example
	```dart
	void example(List<String>? eg){
		print('The length of the string is $eg?.length');
	}
	```
* Let's cover one more concept known as type promotion. For example we have the following code
	```dart
	void example(List<String>? eg){
	final len = 0;
	// Here eg was a nullable list of strings
		if(eg != null){
		len = eg.length;
		// Here eg is a list of strings
		}
	}
	```
Moreover we can modify the code more in order to use more advanced feature of dart
```dart
	void example(List<String>? eg){
		final length = eg?.length ?? 0;
	}
```
