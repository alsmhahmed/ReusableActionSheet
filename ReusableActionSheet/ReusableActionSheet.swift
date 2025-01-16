//
//  ReusableActionSheet.swift
//  ReusableActionSheet
//
//  Created by alsmh ahmed on 16/01/2025.
//

import SwiftUI

enum ActionSheetType {
    case success
    case cancel
    case warning
    
    var icon: Image {
        switch self {
        case .success:
            return Image(systemName: "checkmark.circle.fill")
        case .cancel:
            return Image(systemName: "xmark.circle.fill")
        case .warning:
            return Image(systemName: "exclamationmark.triangle.fill")
        }
    }
    
    var iconColor: Color {
        switch self {
        case .success:
            return .green // Updated to green for success
        case .cancel:
            return .red // Updated to red for cancel
        case .warning:
            return .orange // Updated to orange for warning
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .success:
            return .green.opacity(0.1) // Light green for success background
        case .cancel:
            return .red.opacity(0.1) // Light red for cancel background
        case .warning:
            return .orange.opacity(0.1) // Light orange for warning background
        }
    }
}

struct ReusableActionSheet: View {
    var type: ActionSheetType
    var title: String
    var description: String
    var buttonTitle: String
    var buttonAction: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 8) {
                type.icon
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(type.iconColor)
                
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black) // Adjusted text color for visibility
                
                Text(description)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.black) // Adjusted text color for visibility
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(type.backgroundColor)
            .cornerRadius(16)
            
            Button(action: buttonAction) {
                Text(buttonTitle)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .background(type.iconColor) // Button matches the icon color
                    .cornerRadius(8)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    VStack(spacing: 24) {
        ReusableActionSheet(
            type: .success,
            title: "Success",
            description: "This is a success message.",
            buttonTitle: "Button"
        ) {
            print("Success button tapped")
        }
        
        ReusableActionSheet(
            type: .cancel,
            title: "Cancel",
            description: "This is a cancel message.",
            buttonTitle: "Button"
        ) {
            print("Cancel button tapped")
        }
        
        ReusableActionSheet(
            type: .warning,
            title: "Warning",
            description: "This is a warning message.",
            buttonTitle: "Button"
        ) {
            print("Warning button tapped")
        }
    }
    .previewLayout(.sizeThatFits)
}

