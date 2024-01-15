import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;

public class Ex6 {
	 public static void main(String[] args) {
	 HashMap<Integer, Integer> acountpin = new HashMap<>();
	 acountpin.put(1, 123);
	 acountpin.put(2, 321);
	 acountpin.put(3, 132);
	 acountpin.put(4, 312);
	 acountpin.put(5, 213);
	 acountpin.put(6, 231);
	 
	 HashMap<Integer, Integer> acountamount = new HashMap<>();
	 acountamount.put(1, 10000);
	 acountamount.put(2, 15000);
	 acountamount.put(3, 6000);
	 acountamount.put(4, 12000);
	 acountamount.put(5, 13000);
	 acountamount.put(6, 9000);
	 
	 
	 login(acountpin,acountamount);
	 
	 
	 //showMainMenu();
	 
	 }
	 
	 
	 private static void showMainMenu(int enteredAccountNumber, HashMap<Integer, Integer> accounts, HashMap<Integer, Integer> amounts) {
		 Scanner scanner = new Scanner(System.in);
		 System.out.println("--------------------------------------------------------------------------"+
	 "\n\n\n--------------------------------------------------------------------------");
		 System.out.println("1_Enter one to check your account value.\n" +
                 "2_Enter two to select the amount of cash money to take it away.\n" +
                 "  Only (20$, 50$, 100$) can be chosen.\n" +
                 "3_Enter three to transfer money from your account to another one.\n" +
                 "4_Enter four to check if the balance is zero.\n" +
                 "5_Enter five to print the receipt as a file 'yourName.txt' " +
                 "located under the folder named 'yourName' on your desktop.\n");
		 
		 int enteredMenuNumber = scanner.nextInt();
		  
			switch (enteredMenuNumber) {
            case 1:
                System.out.println("Account Balance: "+9999+" $" );
                break;
            case 2:
            	withdraw(enteredAccountNumber,amounts,accounts);
            	showMainMenu(enteredAccountNumber, accounts, amounts);
                break;
            case 3:
                transfer(enteredAccountNumber,amounts);
                break;
            case 4:
                checkAccountIfZero(enteredAccountNumber,amounts,accounts);
                break;
            case 5:
                String lastWithdrawString = withdraw(enteredAccountNumber, amounts, accounts);
                if (lastWithdrawString != null) {
                    printReceipt(enteredAccountNumber, amounts, accounts, lastWithdrawString);
                }
                break;
//           }
            default:
                System.out.println("Invalid choice. Try again.");
                showMainMenu(enteredAccountNumber, accounts, amounts);
                
        }
	}


	private static void printReceipt(int enteredAccountNumber, HashMap<Integer, Integer> amounts,
			HashMap<Integer, Integer> accounts, String lastwithdraw) {
		// TODO Auto-generated method stub
		 Scanner scanner = new Scanner(System.in);
		 String desktopPath = System.getProperty("user.home") + File.separator + "Desktop"+ File.separator;
		 System.out.println("enter your name like name_last.");
		
			String name = scanner.nextLine();
			String fileName = name+".txt";
	        // Create a folder named "Your Name" if it doesn't exist
	        File folder = new File(desktopPath + name);
	        if (!folder.exists()) {
	            if (folder.mkdirs()) {
	                System.out.println("Directory created successfully: " + folder.getAbsolutePath());
	            } else {
	                System.out.println("Failed to create directory: " + folder.getAbsolutePath());
	                return;  // Abort if directory creation fails
	            }
	        }

	        if (lastwithdraw != null) {
	        try {
	        char[] result = lastwithdraw.toCharArray();
	        FileWriter writer = new FileWriter(desktopPath + File.separator + name + File.separator + fileName);
            writer.write(result);
            writer.close();
            System.out.println("Result written to " + desktopPath + File.separator + name + File.separator + fileName);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        } else {
	            System.out.println("Withdrawal process was not completed. Receipt not generated.");
	        }
	}


	private static void checkAccountIfZero(int enteredAccountNumber, HashMap<Integer, Integer> amounts,
			HashMap<Integer, Integer> accounts) {
		if (amounts.get(enteredAccountNumber) ==0){
			System.out.println("yes your acount "+enteredAccountNumber+" is equal to 0 $");
		}else{System.out.println("no your account "+enteredAccountNumber+" is not equal to 0 $");}
		System.out.println("do you want to delete  account number "+enteredAccountNumber);
		System.out.println("if yes type y and if no type N (no other input are accepted)");
		Scanner scanner = new Scanner(System.in);
		String answer = scanner.nextLine();
		if (answer == "y"){
			accounts.remove(enteredAccountNumber);
			amounts.remove(enteredAccountNumber);
			showMainMenu(enteredAccountNumber, accounts, amounts);
		}
		
		showMainMenu(enteredAccountNumber, accounts, amounts);
	}


	private static void transfer(int enteredAccountNumber,HashMap<Integer, Integer>  amounts) {
		int amount = 0;
		int remainigBalance ;
		if (amounts.containsKey(enteredAccountNumber)) {
             amount = amounts.get(enteredAccountNumber);
		}
		
		Scanner scanner = new Scanner(System.in);
		 System.out.println("enter the amount of money you wat to transfer.");
		 int moneyAmount = scanner.nextInt();
		 System.out.println("Enter the account that we need to transfer money to.   ");
		 int account = scanner.nextInt();
		 remainigBalance = amount - moneyAmount ;
		System.out.println("I transfer the amount of "+ moneyAmount +"$ from the account "+ enteredAccountNumber + "to the account " +account+ " and remaining balance is " +remainigBalance);
		amounts.put(enteredAccountNumber, remainigBalance);
	}


	private static String withdraw(int enteredAccountNumber, HashMap<Integer, Integer> amounts, HashMap<Integer, Integer> accounts) {
	    int sum = 0;
	    int enteredWithdrawNumber = 0;

	    Scanner scanner = new Scanner(System.in);

	    System.out.println("choose between 20$ 50$ 100$  and press 0 for summ and withdraw 1");
	    enteredWithdrawNumber = scanner.nextInt();

	    if (enteredWithdrawNumber != 20 && enteredWithdrawNumber != 50 && enteredWithdrawNumber != 100) {
	        if (enteredWithdrawNumber == 0) {
	            System.out.println("your withdraw is equal :" + sum);
	            showMainMenu(enteredAccountNumber, accounts, amounts);
	        } else {
	            System.out.println("you have entered a wrong value try again");
	            return withdraw(enteredAccountNumber, amounts, accounts);
	        }
	    } else {
	        while (enteredWithdrawNumber == 20 || enteredWithdrawNumber == 50 || enteredWithdrawNumber == 100) {
	            sum += enteredWithdrawNumber;
	            System.out.println("choose between 20$ 50$ 100$  and press 0 for summ and withdraw 2");
	            enteredWithdrawNumber = scanner.nextInt();
	            if (enteredWithdrawNumber != 20 && enteredWithdrawNumber != 50 && enteredWithdrawNumber != 100) {
	                if (enteredWithdrawNumber == 0) {
	                    System.out.println("your withdraw is equal :" + sum);
	                    if (amounts.containsKey(enteredAccountNumber)) {
	                        int amount = amounts.get(enteredAccountNumber);
	                        int remainder = amount - sum;
	                        System.out.println("your remaining balance for account " + enteredAccountNumber + " is : " + remainder + "$");
	                        String lastwithdraw = "you have withdrawn " + sum + " and your remaining balance for account " + enteredAccountNumber + " is : " + remainder + "$";
	                        return lastwithdraw;
	                    }
	                    System.out.println("Press any number to go to the main menu.");
	                    int anyNumber = scanner.nextInt();
	                    showMainMenu(enteredAccountNumber, accounts, amounts);
	                } else {
	                    System.out.println("you have entered a wrong value try all over again");
	                    return withdraw(enteredAccountNumber, amounts, accounts);
	                }
	            }
	        }
	    }
	    return null;
	}

    		
    	
		
	


	private static void login(HashMap<Integer, Integer> credentials,HashMap<Integer, Integer>  amounts) {
		    int attempt = 0;
		    int MAX_LOGIN_ATTEMPTS = 3;
		    
		    Scanner scanner = new Scanner(System.in);

		    while (attempt < MAX_LOGIN_ATTEMPTS) {
		        System.out.print("Enter account number: ");
		        int enteredAccountNumber = scanner.nextInt();

		       
		        if (credentials.containsKey(enteredAccountNumber)) {
		            int password = credentials.get(enteredAccountNumber);

		            if (amounts.containsKey(enteredAccountNumber)) {
			            int money = amounts.get(enteredAccountNumber);
		            
		            System.out.print("Enter PIN: ");
		            int enteredPassword = scanner.nextInt();

		            if (enteredPassword == password) {
		                
		                showMainMenu(enteredAccountNumber,credentials,amounts);
		                return ;
		            } else {
		                System.out.println("Invalid PIN. Remaining attempts: " + (MAX_LOGIN_ATTEMPTS - attempt - 1));
		            }
		        } else {
		            System.out.println("Invalid account number. Remaining attempts: " + (MAX_LOGIN_ATTEMPTS - attempt - 1));
		        }

		        attempt++;
		    }

		    System.out.println("Exceeded maximum login attempts. Account locked.");
		}
	}	    
}
