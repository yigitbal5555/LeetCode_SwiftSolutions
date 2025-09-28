



class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            let neededNumber = target - num
            
            if let otherIndex = numToIndex[neededNumber] {
                return [otherIndex, index]
            }
            
            numToIndex[num] = index
        }
        return []
    }
}

