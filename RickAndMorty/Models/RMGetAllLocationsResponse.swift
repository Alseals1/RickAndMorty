import Foundation

struct RMGetAllLocationsResponse: Codable {
    let info: Info
    let results: [RMLocation]
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
}
