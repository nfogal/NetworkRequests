//
//  SecondViewController.swift
//  NetworkRequests
//
//  Created by Nick Fogal on 6/27/19.
//  Copyright © 2019 Nick Fogal. All rights reserved.
//

// I like my imports to be sorted alphabetically
import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("DEBUG: SecondViewController()... viewDidLoad()")
        // Do any additional setup after loading the view.
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        debugPrint("DEBUG: SecondViewController()... viewDidDisappear()")
    }
}

