## Extensions
___
*  Adding logic to existing classes
* We can also accomplish the same task by making a new function method
* Let's take an example:
```dart
	extension Run on Cat{
		void run(){
			print('Cat $name is running');
		}
	}
```


#### Types of task
___
There are two types of task:
	1. **Synchronous task** : In this the task whose results are yielded immediately
	2. **Asynchronous task** : In this the task whose results are not yielded immediately 


### Async and Await
___
When we declare a function as Async that means it contains some function that do some async work.


## Futures
___
* Data to be returned in the future
* We use this to do asynchronous operations
* Let's take an example
```dart
	Future<int> heavyFutureThatMultipliesByTwo(int a){
		return Future.delayed(const Duration(seconds: 3), () => a*2);
	}
```
Or 
```dart
	Future<int> heavyFutureThatMultipliesByTwo(int a){
		return Future.delayed(const Duration(seconds: 3), (){return a*2;});
	}
```
Now, let's call this function
```dart
	void test() async{
		final result = await heavyFutureThatMultipliesByTwo(10);
		print(result);
	}
```
If we don't use the keyword await then it'll simply print the future itself


## Streams
___
* An async "pipe" of data
* We can say that it's a future that sends data which never ends
* Let's take an example
```dart
	Stream<String> getName(){
		return Stream.value('Foo'); // a stream with just Foo
	}
```
Now let's call this function
```dart
	void test() async{
		await for (final value in getName()){
			print(value);
		}
		print('Stream finished working');
	}
```

Now let's make an actual stream with loads of data
```dart
	Stream<String> getName(){
		return Stream.periodic(const Duration(seconds: 1),(value) {return 'Foo';})
	}
```


## Generators
___
* It refers to a function that can produce a sequence of values lazily, on-demand
* Let's understand it via an example, let's say we have to get value one, two and three...we can do this by normal functions as well like 
```dart
	List<int> getOneTwoThree(){
		// Some code
	}
```
or
```dart
	Iterable<int> getOneTwoThree(){
		// Some code
	}
```

But, now let's just use the generator for that,
```dart
	Iterable<int> getOneTwoThree() sync*{ // '*' denotes a generator
		yield 1; // This will go to the stream
	}


	void test(){
	//	for(final value in getOneTwoThree()){
	//		print(value);
	//	}
	// But it gives more control

		print(getOneTwoThree());
	}
```

Async generators also exist but we won't use that in this course.


### Iterable 
___
A prepared and packaged list of things but it isn't calculate when it begins (List => Supermarket and Iterable => Restaurant)


## Generics
___
* Same as other languages
* Let's take an example for this
```dart
	class name<A,B>{
		final A value1;
		final B value2;
		Pair(this.value1, this.value2);
	}
```