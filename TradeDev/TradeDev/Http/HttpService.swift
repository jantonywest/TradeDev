//
//  HttpService.swift
//  TradeDev
//
//  Created by Jinto Antony on 2021-01-05.
//  Copyright © 2021 JA. All rights reserved.
//

import Foundation
class HttpService {
    
    let baseUrl = "https://raw.githubusercontent.com/TradeRev/tr-ios-challenge/master"

    func connectMoviesList(_ completionHandler: @escaping(_ data:Movies?,  _ error:Error?) -> Void) ->Void{
        let listUrl = baseUrl + "/list.json"
        guard let url = URL(string: listUrl) else {return}
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let data = data{
                print(data)
               do{
                    let jsonResponse = try JSONSerialization.jsonObject(with:
                                          data, options: [])
                    print(jsonResponse)
                
                
                    let modeldata:Movies = try! JSONDecoder().decode(Movies.self, from: data)
                    print(modeldata)
                    completionHandler(modeldata,err);

                } catch let parsingError {
                    print("Error", parsingError)
                    completionHandler(nil,nil);
                }
            }
            if let res = res{
                print(res)
            }
            if let err = err{
                print(err)
            }
            completionHandler(nil,err);
        }.resume()

    }

   
}
