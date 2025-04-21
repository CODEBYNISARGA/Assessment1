package assessment;

public class tewoprograms {
public void palindrome(int nums) {
	int number = 0;
	int original = nums;
	while (nums != 0) {
		int reverse = nums % 10;
		number = number * 10 + reverse;
		nums /= 10;
	}
	System.out.println("The reverse of number " + original + "is " + number);
	if(original==number) {
		System.out.println("The number"+original+"is a paliandrome");
	}
	else {
		System.out.println("The number"+original+"is not a palindrome");
	}
}


public void stars() {
	for (int i = 1; i <= 9; i++) {
		if(i%2!=0)
		for (int j = 1; j <=i; j++) {
			System.out.print("*");
		}
		System.out.println(" ");
	}
}
}

