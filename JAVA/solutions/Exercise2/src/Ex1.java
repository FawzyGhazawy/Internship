
import java.util.Scanner;

public class Ex1 {
	public static void main(String[] args) 
	{ 
		 Scanner scanner = new Scanner(System.in);
		 System.out.println("enter a text.");
		 String text = scanner.nextLine();
		 System.out.println(deblank(text));
		
	}

	private static String deblank(String text) {
	    char[] originaltext = text.toCharArray();
	    char[] deblankettext = new char[originaltext.length];
	    int y = 0;

	    for (int i = 0; i < originaltext.length; i++) {
	        if (originaltext[i] != ' ') {
	            deblankettext[y] = originaltext[i];
	            y++;
	        }
	    }

	    String newtext = new String(deblankettext, 0, y); 
	    return newtext;
	}


}
