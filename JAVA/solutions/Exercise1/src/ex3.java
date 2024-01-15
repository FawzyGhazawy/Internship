
import java.util.Scanner;

public class ex3 {
	static void DrawMultiplication (int num){
		System.out.print("*  |");
		
		for (int i=1; i<= num  ; i++){
			System.out.print("   "+i);
		}
		System.out.println("");
		for (int i=1; i< 15  ; i++){
			System.out.print("---");
		}
		
		System.out.println("" );
	for (int i=1; i<= num  ; i++){
		System.out.print(" "+i+" |" );
	
		for (int y=1; y<= num  ; y++){
			System.out.print("   "+(i*y));
		}
		System.out.println("\n" );
		}
	}
	
	
	public static void main(String[] args)
	{
		Scanner scanner = new Scanner(System.in);
		System.out.println("enter a number ");
		int n1 = scanner.nextInt();
		DrawMultiplication (n1);
		
		
		
		}
	
	
}
