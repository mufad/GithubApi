//
//  FollowerListVC.swift
//  GithubApi
//
//  Created by Monwar Jahan on 9/5/24.
//

import UIKit

class FollowerListVC: UIViewController {

    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)

        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            switch result {
            case .success(let followers):
                print(followers.count)
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Test", message: error.rawValue, buttonTitle: "OK")
                    
            }
        }
    }
    

}
