class Solution {
    public int findMaxConsecutiveOnes(int[] nums) {
        int maxOne = 0;
        int repeat = 0;
        
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == 1) {
                repeat++;
                // Update the maximum streak found so far
                if (repeat > maxOne) {
                    maxOne = repeat;
                }
            } else {
                // Reset the streak back to 0 when we hit a 0
                repeat = 0;
            }
        }
        
        return maxOne;
    }
}

