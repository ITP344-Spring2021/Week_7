//
//  SpinnerViewController.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 2/22/21.
//

import UIKit

class SpinnerViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bgColor = UIColor.systemBackground.withAlphaComponent(0.75)
        view.backgroundColor = bgColor
        let spinner = UIActivityIndicatorView(style: .large)
        view.addSubview(spinner)
        spinner.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        spinner.startAnimating()
    }


}
