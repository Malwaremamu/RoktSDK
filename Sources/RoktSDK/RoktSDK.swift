public struct RoktSDK {
    
    public init() {}
    
    public func average(nums: [Int]) -> Int {

        var total = 0.0
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
    
    public func updateLabels(_ updatedList: [Int]?) -> (sumOfNums: Int?, avgOfNums: Int?) {
        let sumOfNums = updatedList?.reduce(0, +)
        let  avgOfNums =  average(nums: updatedList ?? [])
        return (sumOfNums, avgOfNums)
        
    }
}
