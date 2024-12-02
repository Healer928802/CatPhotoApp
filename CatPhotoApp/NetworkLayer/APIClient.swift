//
//  APIClient.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import Alamofire

protocol APIClientProtocol {
    func asyncRequest<T: Decodable>(router: APIRouter, response: T.Type) async throws -> T
}

actor APIClient: APIClientProtocol {
    func asyncRequest<T: Decodable>(router: APIRouter, response: T.Type) async throws -> T {
        do {
            return try await AF.request(router).serializingDecodable(T.self).value
        } catch {
            throw error
        }
    }
}
