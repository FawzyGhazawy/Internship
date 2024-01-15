
public class Address {
		 private String street,city,building ;
		 private int floor ;
		 public String getStreet() {
			return street;
		}

		public void setStreet(String street) {
			this.street = street;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getBuilding() {
			return building;
		}

		public void setBuilding(String building) {
			this.building = building;
		}

		public int getFloor() {
			return floor;
		}

		public void setFloor(int floor) {
			this.floor = floor;
		}

		
		 
		 public Address (String street,String city,String building,int floor){
			 	this.street = street;
		        this.city = city;
		        this.building = building;
		        this.floor = floor;
			 
		 }
	
}
