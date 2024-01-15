import java.util.ArrayList;

public class PersonalFile {
	private String proffession ;
	private int experience,IQ_test_grade ;
	
	public PersonalFile(String proffession, int experience, int IQ_test_grade) {
	    // TODO Auto-generated constructor stub
	    this.proffession = proffession;
	    this.experience = experience;
	    this.IQ_test_grade = IQ_test_grade;
	}

	public String getProffession() {
		return proffession;
	}

	public void setProffession(String proffession) {
		this.proffession = proffession;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public int getIQ_test_grade() {
		return IQ_test_grade;
	}

	public void setIQ_test_grade(int iQ_test_grade) {
		IQ_test_grade = iQ_test_grade;
	}
	
	
	
	
}
