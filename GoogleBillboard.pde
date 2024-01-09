public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
public int firstPos = 2;
public int secondPos = 12;
public int count = 0;
public void setup()
{
  while (count < 1) {
    String digits = e.substring(firstPos, secondPos);
    double dNum = Double.parseDouble(digits);
    if (isPrime(dNum)) {
      System.out.println("Prime: " + dNum);
      count++;
    }
    firstPos++;
    secondPos++;
  }
}
public void draw()
{
  //not needed for this assignment
}
public boolean isPrime(double num)
{
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}
