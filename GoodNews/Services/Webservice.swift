//
//  Webservice.swift
//  GoodNews
//
//  Created by Dominique Strachan on 6/20/23.
//

import Foundation

class Webservice {
    
    //func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                do {
                    let articles = try JSONDecoder().decode(ArticleList.self, from: data).articles
                    
                    print(articles)
                    completion(articles)
                } catch {
                    print("Unexpected error \(error)")
                }
            }
            
            print(data)
            
        }.resume()
        
    }
}
