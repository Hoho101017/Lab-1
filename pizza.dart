import 'dart:io';

void main (){
  Map<String,double> pizzaInfo={
     'small':5.00,
      'medium':7.00,
      'large':10.00,

  };
  
  double totalPrice=0.0;
  int? quantity;
  print(pizzaInfo);
  print("Please select a size: small, medium, or large:");
  String size=stdin.readLineSync()!;
  bool exit=true;
  
  while(exit==true){

 

  switch(size){
    case 'small':
       

while (quantity == null) {
  print("How many pizzas would you like to order?");
  quantity = int.tryParse(stdin.readLineSync()!);

  if (quantity == null) {
    print("Please enter an integer.");
  }
}
      exit=false;
      break;
    case 'medium':
         

while (quantity == null) {
  print("How many pizzas would you like to order?");
  quantity = int.tryParse(stdin.readLineSync()!);

  if (quantity == null) {
    print("Please enter an integer.");
  }
}
      exit=false;
      break;
    case 'large':

      int? quantity;

while (quantity == null) {
  print("How many pizzas would you like to order?");
  quantity = int.tryParse(stdin.readLineSync()!);

  if (quantity == null) {
    print("Please enter an integer.");
  }
}
      exit=false;
      break;
    default:
       print("Invalid size selected.");
        print("Please select a size: small, medium, or large:");
      
        size = stdin.readLineSync()!;
    
  }
  }

  totalPrice = pizzaInfo[size]! * quantity!;
  print("The total price for your order is: \$${totalPrice}");
}