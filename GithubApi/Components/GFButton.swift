//
//  GFButton.swift
//  GithubApi
//
//  Created by Monwar Jahan on 8/28/24.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(bakcgroundColor: UIColor, text: String){
        super.init(frame: .zero)
        self.backgroundColor = bakcgroundColor
        self.setTitle(text, for: .normal)
        configure()
    }
    private func configure(){
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
