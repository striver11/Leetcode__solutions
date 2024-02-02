class Solution:
    def isPalindrome(self, s: str) -> bool:
        t=""
        for i in s:
            if i.isalnum():
                t=t+i.lower()
        
        j=t[::-1]
        if s==" ":
            return True
        elif(t==j):
            return True
        else:
            return False
        

        