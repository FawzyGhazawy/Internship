import java.util.ArrayList;
import java.util.Scanner;

public class PharmacyProgram {

	  private static ArrayList<Medicine> medicines = new ArrayList<>();
	    private static ArrayList<Buyer> buyers = new ArrayList<>();
	    private static Scanner scanner = new Scanner(System.in);

	    public static void main(String[] args) {
	        int choice;
	        
	        Medicine medicine1 = new Medicine("Medicine A", 10.0, 100);
	        Medicine medicine2 = new Medicine("Medicine B", 15.0, 50);
	        Medicine medicine3 = new Medicine("Medicine C", 20.0, 75);
	        medicines.add(medicine1);
	        medicines.add(medicine2);
	        medicines.add(medicine3);

	       
	        Buyer buyer1 = new Buyer("John", "Doe", 30);
	        Buyer buyer2 = new Buyer("Jane", "Smith", 25);
	        Buyer buyer3 = new Buyer("Alice", "Johnson", 40);
	        Buyer buyer4 = new Buyer("Bob", "Williams", 22);
	        buyers.add(buyer1);
	        buyers.add(buyer2);
	        buyers.add(buyer3);
	        buyers.add(buyer4);
	        
	        do {
	            displayMenu();

	            choice = scanner.nextInt();
	            scanner.nextLine(); 

	            switch (choice) {
	                case 1:
	                    searchForMedicine();
	                    break;
	                case 2:
	                    addNewMedicine();
	                    break;
	                case 3:
	                    deleteMedicine();
	                    break;
	                case 4:
	                    buyMedicine();
	                    break;
	                case 5:
	                    addBuyer();
	                    break;
	                case 6:
	                    displayAllBuyers();
	                    break;
	                case 7:
	                    System.out.println("Exiting the program. Goodbye!");
	                    break;
	                default:
	                    System.out.println("Invalid choice. Please try again.");
	            }

	        } while (choice != 7);

	        scanner.close();
	    }

	    private static void displayMenu() {
	        System.out.println("\nPharmacy Program Menu:\n1. Search for Medicine\n2. Add new Medicine\n3. Delete Medicine"+
	    "\n4. Buy Medicine\n5. Add Buyer\n6. Display All Buyers\n7. Quit\nEnter your choice: ");

	    }

	    private static void searchForMedicine() {
	    	System.out.print("Enter Medicine ID: ");
	    	int MedicineId = scanner.nextInt();
	    	for(Medicine medicine : medicines){
	    		if(medicine.getMedicineId() == MedicineId ){
	    			System.out.println("Medicine name : "+medicine.getMedicineName());
	    			System.out.println("Medicine cost : "+medicine.getMedicineCost());
	    			System.out.println("Medicine quantity : "+medicine.getMedicineQuantity());
	    		}
	    	}
	    }

	    private static void addNewMedicine() {
	        System.out.print("Enter Medicine Name: ");
	        String medicineName = scanner.nextLine();
	        System.out.print("Enter Medicine Cost: ");
	        double medicineCost = scanner.nextDouble();
	        System.out.print("Enter Quantity: ");
	        int medicineQuantity = scanner.nextInt();

	        Medicine medicine = new Medicine(medicineName,medicineCost,medicineQuantity);
	        medicines.add(medicine);

	        System.out.println("Medicine added successfully!");
	    }

	    private static void deleteMedicine() {
	    	Medicine medicineToDelete = null ;
	    	System.out.print("Enter Medicine ID that you want to delete: ");
	    	int MedicineId = scanner.nextInt();
	    	for(Medicine medicine : medicines){
	    		if(medicine.getMedicineId() == MedicineId ){
	    			medicineToDelete = medicine ;
	    			
	    			break;
	    		}
	    		
	    	}
	    	if(medicineToDelete!= null){
	    		
	    	}
	    		medicines.remove(medicineToDelete);
	    		if(medicines.remove(medicineToDelete)){
	    			System.out.println("Object with ID " + MedicineId + " has been deleted.");
	    		}
	    	}
	   

	    private static void buyMedicine() {
	    	Medicine medicineToBuy = null ;
	    
	    	System.out.println("Enter your ID as buyer id: ");
	    	int buyerId = scanner.nextInt();
	    	System.out.println("Enter Medicine ID that you want to buy: ");
	    	int medicineId = scanner.nextInt();
	    	System.out.println("Enter Medicine Quantity that you want to buy: ");
	    	int medicineQuantity = scanner.nextInt();
	    	for(Buyer buyer : buyers){
	    		if(buyer.getBuyerId() == buyerId ){
	    			Buyer selectedBuyer = buyer;
	    			for(Medicine medicine : medicines){
	    				if(medicine.getMedicineId() == medicineId ){
	    					Medicine selectedMedicine = medicine ;
	    					selectedBuyer.buyMedicine(selectedMedicine, medicineQuantity);
	    				}
	    				}
	    			}
	    	}
	    }	
	    	
	    private static void addBuyer() {
	        System.out.print("Enter Buyer First Name: ");
	        String buyerFirstName = scanner.nextLine();
	        System.out.print("Enter Buyer Last Name: ");
	        String buyerLastName = scanner.nextLine();
	        System.out.print("Enter Buyer Age: ");
	        int buyerAge = scanner.nextInt();

	        Buyer buyer = new Buyer(buyerFirstName, buyerLastName, buyerAge);
	        buyers.add(buyer);

	        System.out.println("Buyer added successfully!");
	    }

	    private static void displayAllBuyers() {
	        System.out.println("\nAll Buyers:");
	        for (Buyer buyer : buyers) {
	            System.out.println("ID: " + buyer.getBuyerId() + ", Name: " + buyer.getBuyerFullName() + ", Age: " + buyer.getBuyerAge());
	        }
		  
		        System.out.println("\nAll Medicines:");
		        for (Medicine medicine : medicines) {
		            System.out.println("ID: " + medicine.getMedicineId() + ", Name: " + medicine.getMedicineName() + ", cost: " + medicine.getMedicineCost()
		            +"Quantity: " + medicine.getMedicineQuantity());
		        }
		    
	    }
}
