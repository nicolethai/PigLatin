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
	for (int i = 0; i < sWord.length(); i++)
	{
		for(int v = 0; v < vowels.length(); v++)
		{
			if(sWord.charAt(i) == (vowels.charAt(v)))
				return i;
		}
	}
	return -1; // no vowels
	/* 	CODING BAT:
	  for(int i = 0; i < word.length(); i++)
  {
    for (int v = 0; v < vowels.length(); v++)
      if(word.substring(i, i+1).equals(vowels.substring(v, v+1)))
        return i;
  }
  return -1;
	*/
}
public int findQU (String sWord)
{
	String toFind = "qu";
	if (sWord.length() > 0)
	{
		// compare first 2 letters only
		if(toFind.equals(sWord.substring(0, 2)))
			return 0;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	if(findFirstVowel(sWord) == -1)
	{
		if(sWord.length() > 3)
			return sWord.substring(1, sWord.length()) + sWord.substring(0, 1) + "ay";
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) > 0)
	{
		if(findQU(sWord) == 0)
			return sWord.substring(2, sWord.length()) + "quay";
		return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
