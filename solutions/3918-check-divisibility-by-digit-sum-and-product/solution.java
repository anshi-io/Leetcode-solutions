class Solution {
    public boolean checkDivisibility(int n) {
        int original=n;
        int sum=0;
        int product=1;
        int rem=1;

        while(n!=0){
            rem=n%10;
            sum=sum+rem;
            product=product*rem;
            n=n/10;
        }
        int total = sum + product;
        if(original%total==0){
            return true;
        }
        return false;
    }
}
