void main () {
  var dog = new Dog("Oscar","Vote","Male",2,true);
​
  var cat = new Cat("Pinky","Local","Female",2,true);
​
  bool hasFavoritePet = dog.isFavoritePet() &&   cat.isFavoritePet();
  print(hasFavoritePet);
  
  cat.makeSound();
  
  dog.makeSound();
  
}
class Dog extends Pet {
  String name;
  String breed;
  String gender;
  int age;
  bool isFavorite;
  
  Dog(this.name, this.breed, this.gender, this.age, this.isFavorite) : super(name, breed, gender,age,isFavorite);
  
  
}
class Cat extends Pet {
  String name;
  String breed;
  String gender;
  int age;
  bool isFavorite;
  
  Cat(this.name, this.breed, this.gender, this.age, this.isFavorite) : super(name, breed, gender,age,isFavorite);
  
  @override
  void makeSound() {
    print("Cat is meowing");
  }
 
  
}
​
class Pet {
  
  String name;
  String breed;
  String gender;
  int age;
  bool isFavorite;
  
  Pet(this.name, this.breed, this.gender, this.age, this.isFavorite);
  
  void makeSound() {
    print("Mammal is making sound");
  }
  
  void eat (int foodWeight) {
    if (foodWeight > 300) {
      print("Mammal is eating the food");
    } else {
      makeSound();
    } 
  }
  
  int getAge () {
    return age;
  }
  
  bool isFavoritePet () {
    return isFavorite;
  }
  
  
}