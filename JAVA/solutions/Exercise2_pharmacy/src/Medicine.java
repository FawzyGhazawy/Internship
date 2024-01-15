
public class Medicine {


	    private static int countid = 1;

	    private int MedicineId;
	    private String MedicineName;
	    private double MedicineCost;
	    private int MedicineQuantity;

	    public Medicine(String MedicineName, double MedicineCost, int MedicineQuantity) {
	        this.MedicineId = countid++;
	        this.MedicineName = MedicineName;
	        this.MedicineCost = MedicineCost;
	        this.MedicineQuantity = MedicineQuantity;
	    }

	    public int getMedicineId() {
	        return MedicineId;
	    }

	    public String getMedicineName() {
	        return MedicineName;
	    }

	    public double getMedicineCost() {
	        return MedicineCost;
	    }

	    public int getMedicineQuantity() {
	        return MedicineQuantity;
	    }

	    public void reduceQuantity(int buyedMedicineQuantity) {
	        if (buyedMedicineQuantity > 0 && buyedMedicineQuantity <= MedicineQuantity) {
	        	MedicineQuantity -= buyedMedicineQuantity;
	        } else {
	            System.out.println("Invalid quantity");
	        }
	    }
	}

