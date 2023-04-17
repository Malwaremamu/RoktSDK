import Foundation

public struct RoktSDK {
    
    public init() {}
    
    public var url = URL(string: "https://roktcdn1.akamaized.net/store/test/android/prestored.json")
    
    public enum PrestoredError: Error {
        case invalidServiceResponse
    }
    
    public func getPrestoredNums() async throws -> [Int]? {
        let (data, response) = try await URLSession.shared.data(from: url ?? "")
        guard let httpResponse = response as? HTTPURLResponse,
                httpResponse.statusCode == 200 else {
                throw PrestoredError.invalidServiceResponse
            }
        return try JSONDecoder().decode([Int].self, from: data)
    }
    
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
    
    public func updateLabels(_ updatedList: [Int]?) -> (sumOfNums: Int?, avgOfNums: Int?) {
        let sumOfNums = updatedList?.reduce(0, +)
        let  avgOfNums =  average(nums: updatedList ?? [])
        return (sumOfNums, avgOfNums)
        
    }

}
