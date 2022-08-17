import SwiftJWT
import Alamofire
import Foundation

class ViewModel : ObservableObject {
    
    init(){
        print("init")
    }
}
extension ViewModel {
    func getAccounts() {
        let accessKey = "iPR2EHQpr9tC4nojzyHxxgK72RWY6URccsrmxXOd"
        let secretKey = "m37iSz4zxH33QXdwYnEjqjiDbA0KLZ3nUnSjRTU3"
        let url = "https://api.upbit.com/v1/accounts"
        var jwt = JWT(claims: Payload(access_key: accessKey, nonce: UUID().uuidString, query_hash: "", query_hash_alg: "SHA512"))
        let signedJWT = try! jwt.sign(using: .hs256(key: secretKey.data(using: .utf8)!))
        let authenticationToken = "Bearer " + signedJWT
            
        AF.request(url, headers: ["Authorization": authenticationToken]).responseString { response in
            print(response)
        }
    }
}
