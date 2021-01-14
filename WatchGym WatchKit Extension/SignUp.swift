//
//  SignUp.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 14.01.2021.
//

import SwiftUI

struct SignUp: View {
    @Binding var Swift22:Int
    @State var nam:String = ""
    @State var pass:String = ""
    @State var email:String = ""
    @State var rePass:String = ""
    @State var mess:String = ""
    @State var error:Bool = false
    @State var gimViewModel = ModelView2()
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
                    TextField("email", text: $email)
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
                    ZStack{
                    Rectangle()
                        .frame(width: 160, height: 30, alignment: .center)
                        .cornerRadius(12)
                    TextField("●●●●●●", text: $rePass)
                        .font(.custom("Roboto", size: 4))
                        .frame(width: 160, height: 20, alignment: .center)
                        
                    }
                    Button(action: {
                        if nam != "", email != "", pass != "", rePass != ""{
                            if email.contains("@"){
                                if pass == rePass {
                                    gimViewModel.SignUp(user2: "\(nam)", email2: "\(pass)", pass2: "\(pass)")
                                    Swift22 = 1
                                } else{
                                    mess = "Passwords don't match"
                                    error.toggle()
                                }
                                
                            } else{
                                mess = "Incorrect email"
                                error.toggle()
                            }
                            
                        } else{
                            mess = "Enter all fields"
                            error.toggle()
                        }
                        
                    }, label: {
                        ZStack{
                        Rectangle()
                            .frame(width: 160, height: 35, alignment: .center)
                            .cornerRadius(15)
                            
                        Text("Sign Up")
                            .font(.custom("Roboto", size: 13))
                            .foregroundColor(Color("bu"))
                        }
                    }).alert(isPresented: $error, content: {
                        Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("OK")))
                    })
               
                    
                }
            }
        }
                
        }
    }
}
        
//struct SignUp_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUp()
//    }
//}
