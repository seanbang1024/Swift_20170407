//
//  IndexViewController.swift
//  Swift_20170407
//
//  Created by 郭榜 on 2017/4/7.
//  Copyright © 2017年 com.B_crazy.new. All rights reserved.
//

import UIKit
import Alamofire


class IndexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue
        getData()
        
        
    }
    
    
    func getData() -> () {
        
//        let urlRequest = URLRequest(url: URL(string: "https://httpbin.org/get")!)
//        let urlString = urlRequest.url?.absoluteString
//        
//        NSLog(urlString!)

        let urlString = "https://httpbin.org/get"
        
        
        // When
        Alamofire.request(urlString, parameters: ["foo": "bar"]).response { resp in
            
            print(resp.request, resp.data)
            
        }

        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
