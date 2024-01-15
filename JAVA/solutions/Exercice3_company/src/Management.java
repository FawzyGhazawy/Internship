import java.util.ArrayList;
import java.util.List;

public class Management {
		
	private String startTime;
    private String endTime;
    private List<String> workingDays;
    private List<Vacation> vacations;
    
    
    public Management(String startTime, String endTime,  List<String> workingDays) {
        this.startTime = startTime;
        this.endTime = endTime;
        this.workingDays = workingDays;
        this.vacations = new ArrayList<>();
    }


	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}


	public String getEndTime() {
		return endTime;
	}


	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}


	public List<String> getWorkingDays() {
		return workingDays;
	}


	public void setWorkingDays(List<String> workingDays) {
		this.workingDays = workingDays;
	}


	public List<Vacation> getVacations() {
		return vacations;
	}


	public void setVacations(List<Vacation> vacations) {
		this.vacations = vacations;
	}


	public void addVacation(Vacation vacation) {
		// TODO Auto-generated method stub
		vacations.add(vacation);
	}
	

    public void removeVacation(Vacation vacation) {
        vacations.remove(vacation);
    }
    
}
