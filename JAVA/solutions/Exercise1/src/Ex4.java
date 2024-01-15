import java.util.Scanner;

public class Ex4 {
		static int numberOfOccurence (String text, String keyword){
			
			int index = text.indexOf(keyword);
			int count = 0 ;
			while (index != -1){
				count++;
				index = text.indexOf(keyword, index+1);
			}
			//System.out.println(count);
		
		return count ;
		}
	
	
	
	public static void main(String[] args)
	{
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("enter a string ");
		String n1 = scanner.nextLine();
		System.out.println("enter the keyword you want to search ");
		String key = scanner.nextLine();
		System.out.println("the number of occurence is : "+numberOfOccurence (n1 , key));
		
		
		
		
		}
	
	
}
