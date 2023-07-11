//
//  Article.swift
//  GoodNews
//
//  Created by Dominique Strachan on 6/20/23.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String?
}
