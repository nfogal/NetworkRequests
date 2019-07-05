//
//  FirstViewController.swift
//  NetworkRequests
//
//  Created by Nick Fogal on 6/27/19.
//  Copyright © 2019 Nick Fogal. All rights reserved.
//

// I like my imports to be sorted alphabetically
import Alamofire
import UIKit

class FirstViewController: UIViewController {

    // MARK: - Properties
    private static var requestURL = ""
    /**
     * TODO: Create a JWT Token that has an expiration date field
     * We will later decode the JWT Token to verify the expiration date
     * If the expiration date has passed, refresh the token
    */
    private static var jwtToken = ""
    // TODO: Create an API Manager class that handles all interactions on requests
    private var asyncRequests: [DataRequest] = []

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        debugPrint("DEBUG: FirstViewController()... viewDidLoad()")
        // Do any additional setup after loading the view.
        loadViewData()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        debugPrint("DEBUG: FirstViewController()... viewWillAppear()")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        debugPrint("DEBUG: FirstViewController()... viewDidDisappear()")
        debugPrint("DEBUG: FirstViewController()... viewDidDisappear()... canceling all requests in the asyncRequests queue")
        for request in asyncRequests {
            // First we need to cancel all requests
            request.cancel()
        }
    }

    // MARK: - Private Functions

    private func loadViewData() {
        debugPrint("DEBUG: FirstViewController()... loadViewData()")
        // The requestURL must be `https` unless an exception rule is added to the App Transport Security policy in the Info.plist file. Otherwise, an error will be thrown for: "The resource could not be loaded because the App Transport Security policy requires the use of a secure connection." The use of a non-secure connection should be avoided.
        let requestURL = "https://www.google.com"
        // Initiate the network request
        // TODO: Abstract a networking layer to allow async background processing and auth token refresh
        let fetchGoogleAPIRequest = AF.request(requestURL).response { response in
            if let error = response.error {
                debugPrint("DEBUG: FirstViewController()... loadViewData()... response error \(error)")
                // TODO: Show error response to the client(?), retry request(?)
                return
            }
            debugPrint("DEBUG: FirstViewController()... loadViewData()... response \(response.debugDescription)")
        }
    }
}

