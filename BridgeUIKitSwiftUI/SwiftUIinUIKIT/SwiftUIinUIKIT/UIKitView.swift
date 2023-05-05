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
       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Go to SwiftUI", for: .normal)
        button.backgroundColor = .systemCyan
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc func didTapButton(){
        let vc = UIHostingController(rootView: SwiftUIView())
        present(vc,animated: true)

    }


}

