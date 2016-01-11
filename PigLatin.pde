import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String vowels = "aeiou";
	if (sWord.length() > 0) {
		// compare first letter first
		for(int i = 0; i < sWord.length(); i++)
		{
			for (int v = 0; v < vowels.length(); v++)
			{
    			if(sWord.substring(i, i+1).equals(vowels.substring(v, v+1)))
        			return i;
			}
		}
	}
	return -1;
}
public int findQU (String sWord)
{
	String toFind = "qu";
	if (sWord.length() > 0)
	{
		// compare first 2 letters only
	}
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else
	{
		return "ERROR!";
	}
}
