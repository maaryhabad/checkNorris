//
//  APIRequest.swift
//  CheckNorris
//
//  Created by Mariana Beilune Abad on 13/12/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation

class APIRequest {
    
//    MARK: Para a busca
    
//    func requestAPI(completion: ([Fact] -> Void)) {
//    session data task...
//          completion ( a variável com o array de fatos )
//    }
    
    // para chamar a funcao
    
    // requestAPI { facts in
        // faz oq eu  preciso fazer com meus fatos.
    //}
    
    static func requestAPI() {
       let headers = [
            "x-rapidapi-host": "matchilling-chuck-norris-jokes-v1.p.rapidapi.com",
            "x-rapidapi-key": "7198035fdamsh109574a857d22afp17f6bbjsnc0b82156d00b",
            "accept": "application/json"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse)
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: [])
                    print(json)
                    var factData = json
                    
                    let newFact = Fact.mapToObject(factData: factData as! [String : Any])
                    Model.instance.Facts.append(newFact)
                    
                    NotificationCenter.default.post(name: NSNotification.Name("recebeUmFato"), object: nil,
                            userInfo: ["newFact" : newFact])
                    
                    print(Model.instance.Facts.count)
                    
                } catch {
                    print("JSON error: \(error.localizedDescription)")
                }
                
        
                //popula um modelo!
            }
        })

        dataTask.resume()
    }
}

