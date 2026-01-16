
 void setup(){
   playRPS();
 }
 
 void playRPS(){
      boolean playing = true;
      int computerScore = 0;
      int playerScore = 0;
      
      // Introduction
      System.out.println("Welcome to ROCK PAPER SCISSORS!");
      
      while (playing){
          boolean notGameOver = true;
          
          while (notGameOver){
              boolean noInput = true;
              String player = "";
              String computer = "";
              String output = "";
              
              // Taking input of the user's choice
              while(noInput){                                    
                  String p = "" + getString("\nPick your choice:\n\nType 'r' for ROCK\nType 'p' for PAPER\nType 's' for SCISSORS\n").charAt(0);
                  player = p.toUpperCase();
                  
                  if (player.equals("R") || player.equals("P") || player.equals("S"))
                      noInput = false;
                  else
                      System.out.println("\n<Invalid input>");
              }
              
              // The computer randomly picking its choice
              int c = (int)(Math.random()*3.0);
              
              if (c == 1)
                  computer = "R";
              else if (c == 2)
                  computer = "P";
              else
                  computer = "S";
                 
              // Outputting the result
              output = "\nThe computer chose \'" + computer + "\' and you chose \'" + player + "\',";
              
              if ((computer.equals("R") && player.equals("S")) || (computer.equals("P") && player.equals("R")) || (computer.equals("S") && player.equals("P"))){
                  output += " the computer wins :(";
                  computerScore++;
                  notGameOver = false;
              }
              else if ((computer.equals("S") && player.equals("R")) || (computer.equals("R") && player.equals("P")) || (computer.equals("P") && player.equals("S"))){
                  output += " you win!";
                  playerScore++;
                  notGameOver = false;
              }
              else{
                  output += " tie game :|";
              }
              
              System.out.println(output);
              System.out.println("The score is (p - c): " + playerScore + " - " + computerScore);
              
              String inp = getString(output + "\n\nThe score is: " + playerScore + " - " + computerScore + "\n\nEnter '1' to play again. Enter anything else to exit");
              
              if (!(inp.equals("1"))){
                  System.out.println("\nThank you for playing ROCK PAPER SCISSORS!");
                  playing = false;
                  notGameOver = false;
              }
          }
      }
  }
