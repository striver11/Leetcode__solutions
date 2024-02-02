class Solution {
    public boolean isPalindrome(String s) {
        String g="";
        for(String i:s.split(""))
        {
            if(i.matches("[A-Za-z0-9]+"))
            {
                g=g+i.toLowerCase();
            }
            
        }
        String l="";
        for(String i:g.split(""))
        {
            l=i+l;
        }
        
        if(s.equals(" "))
        {
            return true;
        }
        else if(g.equals(l))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}