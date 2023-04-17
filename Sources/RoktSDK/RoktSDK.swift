public struct RoktSDK {
    
    public func average(nums: [Int]) -> Int {

        var total = 0.0
        //use the parameter-array instead of the global variable votes
        for vote in nums{
            total += Double(vote)
        }

        let votesTotal = Double(nums.count)
        let average = total/votesTotal
        if average > 0 {
            return Int(average)
        } else {
            return 0
        }
    }
}
