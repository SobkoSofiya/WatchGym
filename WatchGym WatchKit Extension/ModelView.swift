//
//  ModelView.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 14.01.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON
import Alamofire



class ModelView2:ObservableObject {
    @Published var perehod = 0
    @Published var gym1:[GymModel] = []
    
    func SignUp(user2:String, email2:String, pass2:String){
    
    let url = "http://gym.areas.su/signup?username=\(user2)&email=\(email2)&password=\(pass2)&weight=40&height=170"
    
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                self.gym1.append(GymModel(pass1: "\(pass2)", email1: "\(email2)", user1: "\(user2)"))
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func SignIn(user2:String, pass2:String){
    
    let url = "http://gym.areas.su/signin?username=\(user2)&password=\(pass2)"
    
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                if json["notice"]["token"].stringValue != ""{
                    perehod = 1
                } else if json["notice"]["answer"].stringValue == "User is active"{
                    perehod = 2
                } else if json["notice"]["answer"].stringValue == "Error username or password"{
                    perehod = 3
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func SignOut(user2:String){
    
    let url = "http://gym.areas.su/signout?username=\(user2)&password=3"
    
        AF.request(url, method: .post).validate().responseJSON { [self] response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
