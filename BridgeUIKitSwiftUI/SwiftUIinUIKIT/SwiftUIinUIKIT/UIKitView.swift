//
//  ViewController.swift
//  SwiftUIinUIKIT
//
//  Created by Tenzin wangyal on 5/1/23.
//

import UIKit
import SwiftUI

class UIKitView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
//        view.addSubview(button)
//        button.center = view.center
//        button.setTitle("Go to SwiftUI", for: .normal)
//        button.backgroundColor = .systemCyan
//        button.layer.cornerRadius = 15
//        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.navigationController?.navigationBar.isHidden = true
        extractView()
    }
//    @objc func didTapButton(){
//        let vc = UIHostingController(rootView: SwiftUIView())
//        present(vc,animated: true)
//
//    }
    func extractView(){
        let vc = UIHostingController(rootView: SwiftUIView())
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(vc.view)
        
        let constraints = [
            vc.view.topAnchor.constraint(equalTo: view.topAnchor),
            vc.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            vc.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vc.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            vc.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            vc.view.widthAnchor.constraint(equalTo: view.widthAnchor),
        ]
        
        self.view.addConstraints(constraints)
    }


}

