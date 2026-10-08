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

  print("How many pizzas would you like to order?");
  double quantity=double.parse(stdin.readLineSync()!);

  switch(size){
    case 'small':
      totalPrice = pizzaInfo['small']! * quantity;
      break;
    case 'medium':
      totalPrice = pizzaInfo['medium']! * quantity;
      break;
    case 'large':
      totalPrice = pizzaInfo['large']! * quantity;
      break;
    default:
      print("Invalid size selected.");
  }
  print("The total price for your order is: \$${totalPrice}");
}