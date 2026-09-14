class Solution {
    public int missingNumber(int[] nums) {
         int n = nums.length;
         int expectedSum = 0;
        int actualSum = 0;
        for (int i = 0; i <= n; i++) {
            expectedSum += i;
        }
        for (int i = 0; i < nums.length; i++) {
            actualSum += nums[i];
        }
        int sum=expectedSum - actualSum;
        return sum;
    }
}
