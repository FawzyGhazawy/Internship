import java.util.ArrayList;
import java.util.List;

public class Department {
	 private String description ;
	 private int floor ;
	 private List<Employee> employees;
	 
	 public Department(String description, int floor) {
		    // TODO Auto-generated constructor stub
		    this.description = description;
		    this.floor = floor;
		    this.employees = new ArrayList<>();
		}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}

//	public List<Employee> getEmployees() {
//		return employees;
//	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}


	public void addEmployee(Employee employee) {
		// TODO Auto-generated method stub
		employees.add(employee);
	}
	

	    public void removeEmployee(Employee employee) {
	        employees.remove(employee);
	    }
	 
}

