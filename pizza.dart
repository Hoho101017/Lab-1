import 'dart:io';

void main (){
  Map<String,double> pizzaInfo={
     'small':5.00,
      'medium':7.00,
      'large':10.00,

  };
  
  double totalPrice=0.0;

  print(pizzaInfo);
  print("Please select a size: small, medium, or large:");
  String size=stdin.readLineSync()!;
  bool exit=true;

  while(exit==true){

 

  switch(size){
    case 'small':
       print("How many pizzas would you like to order?");
      double quantity=double.parse(stdin.readLineSync()!);
      totalPrice = pizzaInfo['small']! * quantity;
      exit=false;
      break;
    case 'medium':
     print("How many pizzas would you like to order?");
      double quantity=double.parse(stdin.readLineSync()!);
      totalPrice = pizzaInfo['medium']! * quantity;
      exit=false;
      break;
    case 'large':
      print("How many pizzas would you like to order?");
      double quantity=double.parse(stdin.readLineSync()!);
      totalPrice = pizzaInfo['large']! * quantity;
      exit=false;
      break;
    default:
       print("Invalid size selected.");
        print("Please select a size: small, medium, or large:");
      
        size = stdin.readLineSync()!;
    
  }
  }
  print("The total price for your order is: \$${totalPrice}");
}