//
//  DetailView.swift
//  Journal
//
//  Created by Carmen Chiu on 7/6/22.
//

import SwiftUI

struct DetailView: View {
    var entry: Entry?
    
    @State var entryTitleText: String = ""
    @State var entryBodyText: String = "Write the details of your dreams here"
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Title")
                TextField("Placeholder", text: $entryTitleText)
                
            }.padding()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Body")
                    Spacer()
                    Button {
                        entryBodyText = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                        //xmark circle fill will clear my text
                    }
                }
                
                TextEditor(text: $entryBodyText)
                
            }.padding()
            
            Spacer()
            
            Button {
                //action
                //Stopping Point
                //Save our entry
                print(entryTitleText)
                print(entryBodyText)
                
            } label: {
                //what our button will look like
                ZStack { //ZStack goes from the very bottom to the very top
                    //very bottom
                    Rectangle().fill(.ultraThinMaterial)
                        .cornerRadius(12)
                    
                    //very top
                    Text("Tap me")
                }
            }.frame(width: UIScreen.main.bounds.width - 40, height: 55)
        }
        .navigationTitle("Detail view")
        .onAppear { //like viewDidAppear. We can do some set up here
            if let entry = entry {
                entryTitleText = entry.title
                entryBodyText = entry.body
            }
        }
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {   // add this for a more realistic view of the preview. This will bring over the "Detail View" header
            DetailView()
        }
    }
}
