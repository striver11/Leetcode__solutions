class Solution {
    public int lengthOfLastWord(String s) {
        String st[]=s.split(" ");
        int l=st.length;
        return st[l-1].length();
    }
}