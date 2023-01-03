# Given a string s consisting of words and spaces, return the length of the last word in the string.

# A word is a maximal 
# substring
# consisting of non-space characters only.

class Solution:
    def lengthOfLastWord(self, s)-> int:
        answer = s.split()
        return len(answer[len(answer) -1])


sol = Solution()
words = "   fly me   to   the moon  "
words1 = "Hello World"
words2 = "                  something               working"
print(sol.lengthOfLastWord(words))
print(sol.lengthOfLastWord(words1))
print(sol.lengthOfLastWord(words2))