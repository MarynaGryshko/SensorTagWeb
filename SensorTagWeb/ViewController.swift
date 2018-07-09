//
//  ViewController.swift
//  SensorTagWeb
//
//  Created by Maryna Gryshko on 06.07.2018.
//  Copyright © 2018 Maryna Gryshko. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadWebView()
    {
        //let url = URL(string: "https://medium.com/@felicity.johnson.mail/web-view-tutorial-swift-3-0-4a5f4f6858d3")
        let url = URL(string: "http://iotamaze.io")
        if let unwrappedURL = url {
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil
                {
                    DispatchQueue.main.async {
                       self.webView.load(request)
                    }
                } else
                {
                    print("ERROR:\(error)")
                }
            }
            task.resume()
     }
    }

}

