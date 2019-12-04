//
//  NewActivityView.swift
//  Recurrent
//
//  Created by Thomas Smith on 11/29/19.
//  Copyright © 2019 Thomas Smith. All rights reserved.
//

import SwiftUI

struct NewActivityView: View {
    @Binding var isPresented: Bool
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button("Cancel") {
                        self.isPresented.toggle()
                    }.padding()
                    Spacer()
                }
                Text("New Activity").bold().font(Font.system(size: 24)).padding()
            }
            Spacer()
        }
    }
}

struct NewActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NewActivityView(isPresented: Binding<Bool>(get: { true }) {_ in })
    }
}
