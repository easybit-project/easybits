

import UIKit
import SwiftJWT
import Alamofire
var VM = ViewModel()
struct Payload: Claims {
    let access_key: String
    let nonce: String
    let query_hash: String
    let query_hash_alg: String
}


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func login(_ sender: UIButton) {
        
        VM.getAccounts()

    }
}

