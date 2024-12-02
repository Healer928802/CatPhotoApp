//
//  APIRouter.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import Alamofire

enum APIRouter: URLRequestConvertible {
    case breedImages(limit: Int)
}

extension APIRouter {
    private var method: HTTPMethod {
        switch self {
        case .breedImages:
                .get
        }
    }
    
    private var path: String {
        switch self {
        case .breedImages(let limit):
            "breeds?limit=\(limit)"
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .breedImages:
            nil
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest: URLRequest
        
        let baseURLStr = APIConstants.devBaseURL as NSString
        let urlStr = baseURLStr.appendingPathComponent(path).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let url = try urlStr.asURL()
        
        urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncoderFailed(reason: .encoderFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
