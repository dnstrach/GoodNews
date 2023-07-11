//
//  Extensions.swift
//  GoodNews
//
//  Created by Dominique Strachan on 7/10/23.
//

import UIKit

extension UIImageView {
    func load(article imageURL: String) {
        DispatchQueue.global().async {
            [weak self] in
            guard let urlString = URL(string: imageURL) else { return }
            if let data = try? Data(contentsOf: urlString) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
