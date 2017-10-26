import java.io.*;
import java.lang.*;
import java.math.*;
import java.util.*;

public class PowerLevels {

	public static BigInteger multiFactorial(int n, int k)
	{
		BigInteger res = new BigInteger("1");
		for (int i = n; i > 0; i-= k)
		{
			res = res.multiply(BigInteger.valueOf(i));
		}
		return res;
	}


	public static void main(String[] args) {
		for(int i = 1; i < 101; ++i) {
			ArrayList a = new ArrayList();
			for(int j = 1; j < 9000; ++j) {
				a.add(multiFactorial(9000, j).toString().length());
			}
		}
	}
}
