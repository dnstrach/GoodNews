//
//  NewsArticleViewController.swift
//  GoodNews
//
//  Created by Dominique Strachan on 6/28/23.
//

import UIKit

class NewsArticleViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionScrollView: UIScrollView!
    
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var linkToArticleLabel: UILabel!
    
    
    var article: ArticleViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBarDesign()
        
        titleLabel.text = article?.title
        descriptionLabel.text = article?.description ?? ""
        //description scroll view??
        articleImageView.load(article: article?.urlToImage ?? "")
        //hyperlink
        //linkToArticleLabel.url = article?.url
    }
    
    func navBarDesign() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        appearance.backgroundColor = UIColor(red: 52/255, green: 78/255, blue: 65/255, alpha: 1.0)
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.scrollEdgeAppearance = appearance
    }
    
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
