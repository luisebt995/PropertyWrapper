//
//  BindigView.swift
//  PropertyWrapper
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

struct BindigView: View {
    @Binding var y: Int
    @ObservedObject var adult1: MyClass
    var body: some View {
        VStack{
            Text("The value is: \(y)")
            Button("Add 2"){
                y += 2

            }
            Text("Me llamo \(adult1.name) y tengo \(adult1.edad)")
            Button("Change Object"){
                adult1.name = "Josh"
                adult1.edad = 2
            }
        }
    }
}

struct BindigView_Previews: PreviewProvider {
    static var previews: some View {
        //BindigView(y: .constant(5), adult1: .init())
        BindigView(y: .constant(5), adult1: MyClass())
    }
}
