import java.util.ArrayList;

public class Buyer {
	
	    private static int countid = 1;

	    private int buyerId;
	    private String fName;
	    private String lName;
	    private int age;
	    private ArrayList<Medicine> boughtMedicines;

	    public Buyer(String fName, String lName, int age) {
	        this.buyerId = countid++;
	        this.fName = fName;
	        this.lName = lName;
	        this.age = age;
	        this.boughtMedicines = new ArrayList<>();
	    }
	    public void buyMedicine(Medicine medicine, int quantity) {
	        if (medicine != null && quantity > 0 && quantity <= medicine.getMedicineQuantity()) {
	            boughtMedicines.add(medicine);
	            medicine.reduceQuantity(quantity);
	            System.out.println("Medicine bought successfully!");
	        } else {
	            System.out.println("Invalid medicine or quantity");
	        }
	    }
	    public int getBuyerAge() {
	        return age;
	    }
	    public int getBuyerId() {
	        return buyerId;
	    }
	    public ArrayList<Medicine> getBoughtMedicines() {
	        return boughtMedicines;
	    }
	    public String getBuyerFullName() {
	        return fName + " " + lName;
	    }






	}

