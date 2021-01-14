//
//  SignInView.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 04.01.2021.
//

import SwiftUI

struct SignInView: View {
    @State var gymViewModel = ModelView2()
    @Binding var Swift22:Int
    @Binding var nam:String
    @State var pass:String = ""
    @State var error = false
    @State var mess:String = ""
    var body: some View {
        ScrollView{
        ZStack{
            Rectangle()
                
                .foregroundColor(Color("bu"))
                
                
            VStack{
                
            Image("st")
                .resizable()
                .frame(width: 79, height: 79, alignment: .center)
                VStack(spacing:10){
                ZStack{
                Rectangle()
                    .frame(width: 160, height: 30, alignment: .center)
                    .cornerRadius(12)
                TextField("username", text: $nam)
                    .cornerRadius(15)
                    .font(.custom("Roboto", size: 4))
                    .frame(width: 160, height: 20, alignment: .center)
                    
                    
                }
                ZStack{
                Rectangle()
                    .frame(width: 160, height: 30, alignment: .center)
                    .cornerRadius(12)
                TextField("●●●●●●", text: $pass)
                    .font(.custom("Roboto", size: 4))
                    .frame(width: 160, height: 20, alignment: .center)
                    
                }
                    Button(action: {
                        gymViewModel.SignIn(user2: "\(nam)", pass2: "\(pass)")
                        if gymViewModel.perehod == 1{
                            mess = "You are logged in to \(nam) account"
                            error.toggle()
                        } else if gymViewModel.perehod == 2{
                            mess = "User is active"
                            error.toggle()
                        } else if gymViewModel.perehod == 3{
                            mess = "Error username or password"
                            error.toggle()
                        } else {
                            error.toggle()
                            mess = "You are logged in to \(nam) account"
                        }
                        
                    }, label: {
                        ZStack{
                        Rectangle()
                            .frame(width: 160, height: 35, alignment: .center)
                            .cornerRadius(15)
                        Text("Sign In")
                            .font(.custom("Roboto", size: 13))
                            .foregroundColor(Color("bu"))
                        }
                    }).alert(isPresented: $error, content: {
                        Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok"), action: {
                            if mess == "You are logged in to \(nam) account"{
                                Swift22 = 3
                            } else if mess == "User is active"{
                                Swift22 = 3
                            } else if mess == "Error username or password"{
                                Swift22 = 1
                            } 
                            
                        }))
                    })

               
                    Button(action: {
                        Swift22 = 2
                    }, label: {
                        Text("Sign Up")
                            .font(.custom("Roboto", size: 13))
                            .foregroundColor(Color.white)
                        
                    })
                    
                    
                }
            }
        }
                
        }
    }
}

//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
