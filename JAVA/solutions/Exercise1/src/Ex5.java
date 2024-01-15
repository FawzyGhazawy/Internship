import java.util.HashMap;
import java.util.Map;

public class Ex5 {

	
	
	
	
	public static void main(String[] args) 
	{ 
		
		 HashMap<Integer, Integer> hMap = new HashMap<>();
		for (int i = 1; i <= 10 ; i++){
			
			hMap.put(i, (int)(Math.random() * 2)); 
			
		}
		System.out.println(hMap); 
		
		
		for (Integer key : hMap.keySet()) {
            Integer value = hMap.get(key);
            System.out.println("key: " + key + " value: " + value);
        }
	}
		
	}

