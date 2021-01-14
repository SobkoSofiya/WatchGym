//
//  Swift2.swift
//  WatchGym WatchKit Extension
//
//  Created by Sofi on 04.01.2021.
//

import Foundation
import SwiftUI
struct Swift2: View {
    @State var Swift22:Int = 1
    @State var nam: String = ""
    var body: some View {
        if Swift22 == 1{
            SignInView(Swift22: $Swift22, nam: $nam)
        } else if Swift22 == 2{
            SignUp(Swift22: $Swift22)
        } else if Swift22 == 3{
            GymViewModel(Swift22: $Swift22, nam: $nam)
        } else if Swift22 == 4{
            DetailGymViewModel(Swift22: $Swift22)
        }
        
    }
}
