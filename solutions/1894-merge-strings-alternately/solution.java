class Solution {
    public String mergeAlternately(String word1, String word2) {
        StringBuilder result = new StringBuilder();
    int i = 0;
    
    // Loop until both strings are exhausted
    while (i < word1.length() || i < word2.length()) {
        // If word1 has characters left, append current character
        if (i < word1.length()) {
            result.append(word1.charAt(i));
        }
        // If word2 has characters left, append current character
        if (i < word2.length()) {
            result.append(word2.charAt(i));
        }
        i++;
    }
    return result.toString();
} 
}

