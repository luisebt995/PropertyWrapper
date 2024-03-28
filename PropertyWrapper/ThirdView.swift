//
//  ThirdView.swift
//  PropertyWrapper
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var adult1: MyClass
    
    var body: some View {
        //@TO-DO Weird reaction to @EnviromentObject that makes it return to previous view.
        VStack{
            Text("The value is: \(adult1.name)")
            Button("Cambio de valor"){
                adult1.name = "xyz"
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(MyClass())
    }
}
