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
	// if (sWord.length() > 0) {
		for(int v = 0; v < vowels.length(); v++)
		{
			if(sWord.substring(0).equals(vowels.substring(v, v+1)))
				return 0;
			else
				return 1;
		}
	// }
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
	String newWord = new String();
	if(findFirstVowel(sWord) == -1) // no vowels found
	{
		if(findQU(sWord) == 0) {
			return sWord.substring(3, sWord.length()) + "quay";
		}
		else {
			for(int i = 1; i < sWord.length(); i++)
			{
				String testString = new String(sWord.substring(i, sWord.length()));
				if(findFirstVowel(testString) == -1)
				{
					newWord = newWord + sWord.substring(i+1, sWord.length()) + sWord.substring(0, i) + "ay";
				}
			}
			return newWord;
		}
		// return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0) // first letter is a vowel
	{
		return sWord + "way";
	}
	// else if(findFirstVowel(sWord) == 1) // first letter is a consonant
	// {
	// 	return sWord.substring(1, sWord.length()) + sWord.charAt(0) + "ay";
	// }
	/*else if(findQU(sWord) == 0) // begins with "qu"
	{
		return sWord.substring(3, sWord.length()) + "quay";
	}*/
	else // debugger
	{
		return "ERROR!";
	}
}
