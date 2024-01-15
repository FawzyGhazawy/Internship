
package com.exercises ;
import java.util.Random;
public class ColorGenerator {
    private static final String[] COLORS = {"green", "red", "blue", "yellow"};

    public static String getRandomColor() {
        Random random = new Random();
        int index = random.nextInt(COLORS.length);
        return COLORS[index];
    }
}
