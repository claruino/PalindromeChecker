public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String word2 = noSpaces(word);
  String word3 = noCapitals(word2);
  if(word3.equals(reverse(word3)))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int nLast = str.length() -1;
    for(int nI = nLast; nI >= 0; nI--)
      sNew = sNew + str.substring(nI, nI + 1);
    return sNew;
}
public String noSpaces(String sWord)
{
  String sNew = new String();
  sNew = sWord.replaceAll(" ", "");
  return sNew;
}
public String noCapitals(String sWord)
{
    return sWord.toLowerCase();
}

