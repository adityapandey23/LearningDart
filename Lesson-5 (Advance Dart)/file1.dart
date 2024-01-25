// ----------Extensions----------

class Cat{
  final String name;
  Cat(this.name);

}

extension Run on Cat{
		void run(){
			print('Cat $name is running');
		}
	}

void test(){
  final meau = Cat('Fluffers');
  print(meau.name);
  meau.run();
}

void main(){
  test();
}