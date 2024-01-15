import java.util.Arrays;
import java.util.Scanner;
public class Ex2 {

	static int returnIfAnagram (String a,String b){
	 a = a.replace(" ", "");
	 char[] achar = a.toCharArray();
	 Arrays.sort(achar);
	 String astr = new String(achar);
	 b = b.replace(" ", "");
	 char[] bchar = b.toCharArray();
	 Arrays.sort(bchar);
	 String bstr = new String(bchar);
	 if((astr.toLowerCase()). equals((bstr.toLowerCase()))){
		 return 1;
	 }else{
		 return 0 ;
	 }
	}
	
	public static void main(String[] args)
	{
		Scanner scanner = new Scanner(System.in);
		System.out.println("enter first string ");
		String n1 = scanner.nextLine();
		System.out.println("enter secondabcde string ");
		String n2 = scanner.nextLine();
		
		
		if(returnIfAnagram ( n1, n2)==1){
			System.out.println("these 2 words are anagram");
		}else{
			System.out.println("these 2 words are NOT anagram");
		}
		}
		
	   // error: won’t compile
	}

