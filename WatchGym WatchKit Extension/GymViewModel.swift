//
//  GymViewModel.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct GymViewModel: View {
    @State var gimViewModel = ModelView2()
    @Binding var Swift22:Int
    @Binding var nam:String
    
    var body: some View {
        ScrollView{
        ZStack{
            Rectangle()
                .foregroundColor(Color("DWite"))
        
            VStack(alignment: .leading){
            
            HStack{
                Spacer()
                Button(action: {
                    gimViewModel.SignOut(user2: "\(nam)")
                    if nam != ""{
                    Swift22 = 1
                        nam = ""
                    } else {
                        Swift22 = 1
                        nam = ""
                    }
                }, label: {
                    Text("Sign Out")
                        .font(.custom("d", size: 12))
                        .foregroundColor(Color("bu"))
                })
                
                    
               
            }
            Text("0 from 24 l0 ml ")
                .font(.custom("f", size: 12))
                .foregroundColor(Color("bu"))
            Text("0%")
                .font(.custom("d", size: 30))
                .foregroundColor(Color("bu"))
                .padding()
            Text("Add drink")
                .font(.custom("f", size: 10))
                .foregroundColor(Color("bu"))
                .padding(.leading)
            ZStack{
            Rectangle()
                .frame(width: 1, height: 1, alignment: .center)
                .cornerRadius(10)
                Button(action: {
                    Swift22 = 4
                }, label: {
                    
                })
                ZStack{
                Rectangle()
                    .frame(width: 170, height: 30, alignment: .center)
                    .cornerRadius(10)
                HStack{
            Text("Water")
                .font(.custom("f", size: 12))
                .foregroundColor(Color("bu"))
                .padding(.trailing, 110)
                }
                }
            
            }
            .padding(.top,5)
                
                Button(action: {
                    Swift22 = 4
                }, label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 170, height: 30, alignment: .center)
                        .cornerRadius(10)
                        HStack{
                    Text("Juice")
                        .font(.custom("f", size: 12))
                        .foregroundColor(Color("bu"))
                        .padding(.trailing, 110)
                        }
                    
                    }

                })

            }.padding()
        
        }
        }
    }
}

//struct GymViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        GymViewModel()
//    }
//}
