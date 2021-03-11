//
//  P2ViewController.swift
//  ITP344-Spring2021-W4
//
//  Created by Jack Xu on 3/2/21.
//

import UIKit

class P2ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nothing to see here"
        // Do any additional setup after loading the view.
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.navigationController?.popViewController(animated: true)
//        }
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "unnamed"))
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.top.bottom.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
