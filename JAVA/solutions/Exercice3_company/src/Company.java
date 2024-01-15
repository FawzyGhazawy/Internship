import java.util.ArrayList;
import java.util.List;

public class Company {
	private String name;
	Address address ;
	
	Management management;
	private List<Department> departments;
	
	public Company(String name, Address address, Management management) {
	    // TODO Auto-generated constructor stub
	    this.name = name;
	    this.address = address;
	    this.management = management;
	    this.departments = new ArrayList<>();
	}

//	public Company(String name,String Address ,String Management ) {
//		// TODO Auto-generated constructor stub
//	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(String address) {
		address = address;
	}

	public Management getManagement() {
		return management;
	}

	public void setManagement(String management) {
		management = management;
	}

	public List<Department> getDepartments() {
		return departments;
	}

	public void setDepartments(List<Department> departments) {
		this.departments = departments;
	}

	public void addDepartment(Department department) {
		// TODO Auto-generated method stub
		departments.add(department);
	}
	public void removeDepartment(Department department) {
        departments.remove(department);
    }
	
	
	
}
