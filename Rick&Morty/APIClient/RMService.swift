//
//  RMService.swift
//  Rick&Morty
//
//  Created by Anokhi Shah on 27.03.23.
//

import Foundation

/// Primary api service object to get rick and morty data
final class RMService {
    /// shared singleton instance
    static let shared = RMService()
    /// privatized constructor
    private init() {}
    
    enum RMServiceError : Error {
        case FailedToCreateRequest
        case FailedToGetData
    }
    
    /// send rock and morty api call
    ///  - Parameters
    ///     - request: request instance
    ///     - type : expect of type we expect to get back
    ///     - completion: callaback with data or error code
    public func execute<T: Codable>(_ request: RMRequest,
                                    expect type: T.Type,
                                    completion: @escaping (Result<T, Error>)->Void){
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.FailedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest){ data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.FailedToGetData))
                return
            }
            
            //decode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest?{
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
    
}
