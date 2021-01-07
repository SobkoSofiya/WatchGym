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
    var body: some View {
        if Swift22 == 1{
            SignInView()
        } else if Swift22 == 2{
            SignOutView()
        }
    }
}
