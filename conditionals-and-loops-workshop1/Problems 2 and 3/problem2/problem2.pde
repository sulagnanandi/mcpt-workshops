
 int n;
 
 void setup(){
   factorial();
 }
 
 void factorial(){
    int product = 1;
    n = getInt("Enter an integer: ");
    
    for (int i = 2; i <= n; i++){
        product *= i;
    }
    
    print("The factorial of " + n + " is: " + product);
 }
