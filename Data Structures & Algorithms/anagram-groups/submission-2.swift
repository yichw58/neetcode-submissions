class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups : [String : [String]] = [:];

        for str in strs{
            let sorted_str : String;
            sorted_str = String(str.sorted());
            groups[sorted_str, default: []].append(str);
        }
        return Array(groups.values)

    }
}
