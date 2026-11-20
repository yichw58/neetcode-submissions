class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let chars = Array(s)
        var freq: [Character: Int] = [:]

        // Pass 1: Count frequencies
        for char in chars{
            freq[char, default: 0] += 1
        }

        // Pass 2: Find first unique index
        for (index, char) in chars.enumerated() {
            if freq[char] == 1{
                return index
            }
        }

        return -1
    }
}