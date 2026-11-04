class Solution:
    def isValid(self, s: str) -> bool:
        stack = []

        pairs = {
        ")": "(",
        "]": "[",
        "}": "{"
    }
        for item in s:
            if item == "(" or item == "{" or item == "[":
                stack.append(item)
            else:
                if not stack:
                    return False          
                last = stack.pop()
                if last != pairs[item]:
                    return False
        
        return not stack
        
        