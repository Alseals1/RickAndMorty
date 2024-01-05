//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Alandis Seals on 1/4/24.
//

import Foundation


/// Object that represent a single object call 
final class RMRequest {
    
    /// API Constants
   private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desire Endpoints
   private let endPoint: RMEndpoint
    
    /// Path Components for API, if any
   private let pathComponents: [String]
    
    /// Query argument for API, if any
   private let queryParams: [URLQueryItem]
    
///  Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            
            pathComponents.forEach({
                string += "\($0)"
            })
        }
        
        if !queryParams.isEmpty {
            string += "?"
            
                let agruString = queryParams.compactMap({
                    guard let value = $0.value else { return nil }
                    return "\($0.name)=\(value)"
                }).joined(separator: "&")
         string += agruString
        }
        return string
    }
    
    
    
    //MARK: - Public
    public let httpMethod = "GET"
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init(endPoint: RMEndpoint, pathComponents: [String] = [], queryParams: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParams = queryParams
    }
    
    
}
