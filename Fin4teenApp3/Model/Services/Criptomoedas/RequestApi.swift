//
//  RequestApi.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 04/05/21.
//

import Foundation


final class RequestApi {
    static let shered = RequestApi()


    private struct Constants {
        static let apiKey = "1F8A5E86-F1C9-41C7-B8BB-9DB1B81FDE7C"
        static let assetsEndPoint = "https://rest-sandbox.coinapi.io/v1/assets/"
    }
    
    private init() {}

    public var icons: [Icons] = []
    
    private var whenReadyBlock: ((Result<[Crypto], Error>) -> Void)?

    // MARK: - Public
    public func getAllCryptoData(
        completion: @escaping (Result<[Crypto], Error>) -> Void
    ) {
        guard !icons.isEmpty else{
            whenReadyBlock = completion
            return
        }
        
        guard let url = URL(string: Constants.assetsEndPoint + "?apikey=" + Constants.apiKey) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                
                completion(.success(cryptos.sorted { first, second -> Bool in
                    return first.price_usd ?? 0 > second.price_usd ?? 0
                }))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    
    }
    public func getAllIcons(){
        guard let url = URL(string: "https://rest-sandbox.coinapi.io/v1/assets/icons/55/?apikey=1F8A5E86-F1C9-41C7-B8BB-9DB1B81FDE7C") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self]data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                self?.icons = try JSONDecoder().decode([Icons].self, from: data)
                if let completion = self?.whenReadyBlock {
                self?.getAllCryptoData(completion: completion)
                }
                
            }
            
            catch {
                print(error)
                
            }
        }
        task.resume()
    }
}

