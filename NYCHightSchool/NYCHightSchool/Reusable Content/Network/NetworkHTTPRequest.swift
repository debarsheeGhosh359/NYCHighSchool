//
//  NetworkHTTPRequest.swift
//  NYCHightSchool
//
//  Created by Debarshee Ghosh on 2/1/24.
//

import Foundation

class NetworkHTTPRequest {
    func load() {
        
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            fatalError("error wrong url")
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let decodeResponse = try? JSONDecoder().decode(HighSchoolsData.self, from: data) {
                    DispatchQueue.main.async {
                        print(decodeResponse)
                    }
                }
            }
            else {
                fatalError("issue with data")
            }
            
            
        }
        task.resume()
    }
}

