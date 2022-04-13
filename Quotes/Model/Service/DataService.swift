//
//  DataService.swift
//  Quotes
//
//  Created by Yiwei Zhang on 13/4/2022.
//

import Foundation

class DataService {
    
    func getQuote(completion: @escaping (_ quote: Quotes?) -> Void) {
        var request = URLRequest(url: URL(string: "https://quotes.rest/qod")!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                print(data!)
                print(response!)
                let jsonDecoder = JSONDecoder()
                // Access the response here by using json model class
                // You can autogenerate Json4Swift_Base swift class below by pasting the JSON response in
                // the webpage http://www.json4swift.com
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                print(responseModel)
                
                if let quote = responseModel.contents?.quotes?.first {
                    print(quote)
                    completion(quote)
                } else {
                    completion(nil)
                }
            } catch {
                print("JSON Serialization error")
                completion(nil)
            }
        }).resume()
    }
    
}
