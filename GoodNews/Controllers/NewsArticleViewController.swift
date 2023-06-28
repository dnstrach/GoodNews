//
//  NewsArticleViewController.swift
//  GoodNews
//
//  Created by Dominique Strachan on 6/28/23.
//

import UIKit

protocol ArticleViewDelegate {
    func articleView(vm: ArticleViewModel)
}

class NewsArticleViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var article: ArticleListViewModel?
    //var delegate: ArticleViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBarDesign()
        
    }
    
    func navBarDesign() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.backgroundColor = UIColor(red: 52/255, green: 78/255, blue: 65/255, alpha: 1.0)
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.scrollEdgeAppearance = appearance
    }
    
}
