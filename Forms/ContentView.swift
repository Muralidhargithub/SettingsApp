//
//  ContentView.swift
//  Forms
//
//  Created by Muralidhar reddy Kakanuru on 1/1/25.
//

import SwiftUI

struct ContentView: View {
    @State var searchTerm: String = ""
    @State var isFlight: Bool = false
    @State var isWifiOn: Bool = false
    @State var isBluetooth: Bool = false
    @State var isCellular: Bool = false
    @State var isPersonalHotspot: Bool = false
    @State var Bateery: Bool = false
    var body: some View {
        NavigationView{
            Form {
                Section(){
                    HStack{
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 40))
                        VStack{
                            Text(" Muralidhar reddy Kakanuru")
                                .lineLimit(2)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.primary)
                            Text("Apple Account iCloud+, and more")
                                .lineLimit(1)
                                .fontWeight(.light)
                                .foregroundColor(Color.secondary)
                        }
                    }
                    Text("Apple Account Suggestions")
                }
                Section(header: Text("")){
                    Text("Services Included with Purchase")
                }
                Section(footer: Text("There are 6 Days left to add coverage for accidental damage")){
                    Text("Add AppleCare+ Coverage ")
                }
                Section(header: Text("")){
                        Toggle(isOn: $isWifiOn) {
                                    Label {
                                        Text("Airplane Mode")
                                            .foregroundColor(.primary)
                                    } icon: {
                                        Image(systemName: "airplane")
                                            .foregroundColor(.white)
                                            .frame(width: 35, height: 30)
                                            .background(Color.orange)
                                            .cornerRadius(5)
                                    }
                                }
                                .toggleStyle(SwitchToggleStyle(tint: .orange))
                        Toggle(isOn: $isFlight) {
                            Label {
                                Text ("Wi-Fi")
                                    .foregroundColor(.primary)
                            } icon: {
                                Image(systemName: "wifi")
                                    .foregroundColor(.white)
                                    .frame(width: 35, height: 30)
                                    .background(Color.blue)
                                    .cornerRadius(5)
                            }
                        }
                    
                    Toggle(isOn: $isFlight) {
                        Label {
                            Text ("Bluetooth")
                                .foregroundColor(.primary)
                        } icon: {
                            Image(systemName: "bluetooth")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 30)
                                .background(Color.blue)
                                .cornerRadius(5)
                        }
                    }
                    
                    Toggle(isOn: $isFlight) {
                        Label {
                            Text ("Cellular")
                                .foregroundColor(.primary)
                        } icon: {
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 30)
                                .background(Color.green)
                                .cornerRadius(5)
                        }
                    }
                    
                    Toggle(isOn: $isFlight) {
                        Label {
                            Text ("Personal Hotspot")
                                .foregroundColor(.primary)
                        } icon: {
                            Image(systemName: "personalhotspot")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 30)
                                .background(Color.green)
                                .cornerRadius(5)
                        }
                    }
                    
                    Toggle(isOn: $isFlight) {
                        Label {
                            Text ("Battery")
                                .foregroundColor(.primary)
                        } icon: {
                            Image(systemName: "battery.100percent")
                                .foregroundColor(.white)
                                .frame(width: 35, height: 30)
                                .background(Color.green)
                                .cornerRadius(5)
                        }
                    }
                            
                }
                
                
                
            }
            
            .padding()
        }
        .navigationTitle("Settings")
        .searchable(text: $searchTerm, prompt: " Search")
    }
    
}

#Preview {
    ContentView()
}
