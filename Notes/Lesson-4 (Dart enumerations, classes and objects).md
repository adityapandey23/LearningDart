* At it's core dart is an object oriented programming language with we can break down things into classes and objects

## Enumerations
___
* It's kinda like having a value to a string
	```dart
	enum PersonProperties{
		firstName,lastName,age
	}

	void test(){
		print(PersonProperties.firstName);
		print(PersonProperties.firstName.name) // Just for the name
	}
	```
* Now let's use both switch statement and enum
```dart
	enum AnimalType{ cat, dog, bunny };

	void test(AnimalType animaltype){
		switch(animaltype){
			case AnimalType.cat:
				print('Hello kitty');
				break;
			case AnimalType.dog:
				print('Hello woofy');
				break;
			case AnimalType.bunny:
				print('Don\'t sleep');
			default:
				print("Invalid choice");
		}
	}

	test(AnimalType.cat);
```


## Classes
___
* Same concept as other programming languages
```dart
class Human{
	void running(){
		print('Running');
	}
	void breathing(){
		print('breathing');
	}
}
```


## Objects
___
* They are basically instances of a class
```dart
void test(){
	// Object Creation
	final human = Human();
	human.running();
	human.breathing();
}
```


## Constructor
___
* Initializes all data members of the class
```dart
Human(String? name, int? age){
	this.name = name; // declared in the class scope
	this.age = age;
}
```


## Methods
___
* Basically it's a function inside a class


## Inheritance and Subclassing
___
* It's the same as other programming language
* We use `extends` keyword to accomplish this


## Abstract classes
___
* Classes that cannot be instantiated 
```dart
abstract class Animal
```
* The purpose of these class is to provide utility to other classes


## Factory Constructors
___
* When we have to create an object of a class multiple time with the same properties
* Let's take an example:
```dart
	class Cat{
		final String name;
		Cat(this.name);
		
		factory Cat.fluffBall(){
			return Cat('Fluff Ball');	
		}
	}

	void test(){
		final fluffBall = Cat.fluffBall();
		print(fluffBall.name);
	}
```


## Custom Operators
___
* These are used for customizing the pre-built operators
* Let's see an example
```dart
@override // To override the original code
bool operator == (covarient Cat other) => other.name == name; // covarient = foget the Super class

@override
int get hashCode => name.hashCode;
```