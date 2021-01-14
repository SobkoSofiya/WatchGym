//
//  DetailGymViewModel.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct DetailGymViewModel: View {
    @Binding var Swift22:Int
    var body: some View {
        ScrollView{
        ZStack{
            Rectangle()
                .foregroundColor(Color("DWite"))
                
            VStack{
                Button(action: {
                    Swift22 = 3
                }, label: {
                    HStack{
                       
                        Text("Cancel")
                            .font(.custom("d", size: 12))
                            .foregroundColor(Color("bu"))
                        Spacer()
                       
                    }.padding(.leading, 5)
                    .padding(.top, 5)
                })
                
                Text("0 ml")
                    .foregroundColor(Color("bu"))
                    .font(.custom("f", size: 30))
                    .padding(40)
                Button(action: {
                    Swift22 = 3
                }, label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 170, height: 30, alignment: .center)
                        .cornerRadius(10)
                        .foregroundColor(Color("bu"))
                        Text("Add")
                        
                    }
                })
               .padding(.bottom, 15)
                
            }
            }
        }
    }
}

//struct DetailGymViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailGymViewModel()
//    }
//}
