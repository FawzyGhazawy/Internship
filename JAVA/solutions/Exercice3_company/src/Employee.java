
public class Employee {
	 private String name,prename ;
	 private int age ;
	 private PersonalFile personalFile;
	 
	 public Employee(String name, String prename, int age, PersonalFile personalFile){
		 	this.name = name;
	        this.prename = prename;
	        this.age = age;
	        this.personalFile = personalFile;
		 
		 
	 }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrename() {
		return prename;
	}

	public void setPrename(String prename) {
		this.prename = prename;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public PersonalFile getPersonalFile() {
		return personalFile;
	}

	public void setPersonalFile(PersonalFile personalFile) {
		this.personalFile = personalFile;
	}
	 
	 
	 
}
