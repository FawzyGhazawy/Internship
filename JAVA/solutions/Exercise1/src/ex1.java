import java.util.Scanner;
public class ex1 {
	static void returnAscending (int a,int b,int c){
		if (a >= b){
			if (c >= a){
				System.out.println("b <= a <= c");
			}else if (c >= b){
				System.out.println("b <= c <= a");
			}else
				System.out.println("c <= b <= a");
		}else{ 
			if (c >= b){
				System.out.println("a <= b <= c");
			}else if (c >= a){
				System.out.println("a <= c <= b");
			}else
				System.out.println("c <= a <= b");
		}
	}
	public static void main(String[] args)
	{
		Scanner scanner = new Scanner(System.in);
		System.out.println("enter three int a b c ");
		int n1 = scanner.nextInt();
		int n2 = scanner.nextInt();
		int n3 = scanner.nextInt();
		
		returnAscending ( n1, n2,n3);
	   // error: won’t compile
	}

};
