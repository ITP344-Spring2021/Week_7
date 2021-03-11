//
//  PrioritiesViewController.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 2/8/21.
//

import UIKit

class PrioritiesViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        stackView.addArrangedSubview(view1)
//        stackView.addArrangedSubview(view2)
//        view.addSubview(stackView)
//        stackView.snp.makeConstraints { (make) in
//            make.topMargin.bottomMargin.leadingMargin.trailingMargin.equalToSuperview()
//        }
        view.addSubview(view1)
        view.addSubview(view2)
        view2.snp.makeConstraints { (make) in
            make.top.bottom.trailing.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view1.snp.trailing)
        }
        view1.snp.makeConstraints { (make) in
            make.top.bottom.leading.equalTo(view.safeAreaLayoutGuide)
            make.trailing.equalTo(view2.snp.leading)
        }
        
        title = "Priorities"
        navigationController?.hidesBarsOnTap = true
//        navigationController?.navigationBar.prefersLargeTitles = true

        navigationItem.setRightBarButtonItems([UIBarButtonItem(barButtonSystemItem: .close, target: nil, action: nil), UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(goToPinkVC))], animated: false)
    }
    
    @objc func goToPinkVC() {
        navigationController?.pushViewController(P2ViewController(), animated: true)
    }
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.alignment = .fill
        sv.axis = .horizontal
        sv.distribution = .fill
        return sv
    }()
    
    let view1: UILabel = {
        let v = UILabel()
        v.backgroundColor = .blue
        v.text = "View 1 View 1 View 1 View 1 View 1"
//        v.text = "View 1"
        v.setContentCompressionResistancePriority(UILayoutPriority(100), for: .horizontal)
//        v.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return v
    }()
    
    let view2: UILabel = {
        let v = UILabel()
        v.backgroundColor = .green
        v.text = "View 2 View 2 View 2 View 2 View 2"
//        v.text = "View 2"
        v.setContentCompressionResistancePriority(UILayoutPriority(100), for: .horizontal)
        return v
    }()
}
