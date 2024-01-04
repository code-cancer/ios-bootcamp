//
//  SheetsBootcamp.swift
//  ios-bootcamp
//  Sheet: 抽屉弹窗
//      1. sheet()
//      2. fullScreenCover()
//  Created by zhifu.zhang on 2024/1/2.
//


import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea(.all)
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("ShowSheet")
                    .padding(20)
                    .foregroundColor(.blue)
                    .background(
                        Color.white.cornerRadius(10)
                    )
            }).sheet(isPresented: $showSheet, content: {
                SheetContent()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SheetContent()
//            })
        }
        
        
    }
}

struct SheetContent: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea(.all)
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Dismiss")
                    .padding(20)
                    .foregroundColor(.blue)
                    .background(
                        Color.white.cornerRadius(10)
                    )
            })
            
        }
        
    }
}

#Preview {
    SheetsBootcamp()
}
