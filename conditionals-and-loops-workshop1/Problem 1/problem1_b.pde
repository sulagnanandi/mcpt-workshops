void setup() {
  welcome();
  safetyProgram();
  goodbye();
}

void welcome() {
  println("Welcome to Canada's Wonderland Roller Coaster Safety Check!");
  println("You may enter -1 at any point to terminate the program.");
}

void safetyProgram() {
  // Get the user's height.
  int userHeight = getInt("please enter your height (in cm):");
  
  while(userHeight != -1) {
    // Check if the user meets the height requirements
    if (userHeight >= 120 && userHeight <= 190) {
      println("You are safe to ride the roller coasters!");
    } else {
      println("Sorry, you are not within the height range for the roller coasters.");
    } 
    
    // Get the next person's height for the next loop. 
    userHeight = getInt("please enter your height (in cm):");
  }
}

void goodbye() {
  print("Thank you for visiting Canada's Wonderland.");
}
