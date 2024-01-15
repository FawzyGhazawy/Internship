import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CompanyManagementProgram {
    public static void main(String[] args) {
        
        Address companyAddress = new Address("bsarma", "koura", "naja church", 0);
        List<String> workingDays = new ArrayList<>(Arrays.asList("Mon", "Tue", "Wed", "Thu", "Fri"));
        Management companyManagement = new Management("8:00 AM", "5:00 PM", workingDays);
        Company myCompany = new Company("Valoores", companyAddress, companyManagement);

        
        Department hrDepartment = new Department("Human Resources", 2);
        Department itDepartment = new Department("Information Technology", 4);
        myCompany.addDepartment(hrDepartment);
        myCompany.addDepartment(itDepartment);

       
        Employee employee1 = new Employee("tony", "tawk", 28, new PersonalFile("j dev", 1, 120));
        Employee employee2 = new Employee("hany", "tawk", 80, new PersonalFile("Software Engineer", 14, 140));
        hrDepartment.addEmployee(employee1);
        itDepartment.addEmployee(employee2);

      
        Vacation christmas = new Vacation("2023-12-24", "christmas");
        Vacation new_year = new Vacation("2024-01-10", "New Year's break");
        companyManagement.addVacation(christmas);
        companyManagement.addVacation(new_year);
        System.out.println(employee1.getName()+"  "+employee1.getPrename()+" "+employee1.getAge()+" ");
//        System.out.println(employee2);
//        System.out.println(companyManagement);
//        System.out.println(christmas);
//        System.out.println(new_year);
//        System.out.println(myCompany);
//        System.out.println(hrDepartment);
//        System.out.println(itDepartment);
//        System.out.println(companyAddress);
    }
}
