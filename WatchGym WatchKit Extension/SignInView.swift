//
//  SignInView.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 04.01.2021.
//

import SwiftUI

struct SignInView: View {
    @State var nam:String = ""
    @State var pass:String = ""
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
                ZStack{
                Rectangle()
                    .frame(width: 160, height: 35, alignment: .center)
                    .cornerRadius(15)
                Text("Sign In")
                    .font(.custom("Roboto", size: 13))
                    .foregroundColor(Color("bu"))
                }
                    
                }
            }
        }
                
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
