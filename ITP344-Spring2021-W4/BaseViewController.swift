//
//  BaseViewController.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 2/8/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    private func initUI() {
        view.backgroundColor = .systemBackground
    }

}
