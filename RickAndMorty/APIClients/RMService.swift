import Foundation

/// Primary API service object to get Rick and Morty Data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized contructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T:Codable>(_ request: RMRequest,
                                   expecting type: T.Type,
                                   completion: @escaping (Result<String, Error>) -> Void) {
        
        
    }
    
}
