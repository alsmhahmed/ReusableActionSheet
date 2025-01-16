# ReusableActionSheet Component

A reusable SwiftUI component designed to display action sheets with customizable content, styling, and actions. The `ReusableActionSheet` supports different types of messages, including success, cancel, and warning, making it versatile for various use cases.

## Features

- **Dynamic Styling:**
  - Automatically adjusts icon, background, and button colors based on the selected type.
- **Customizable Content:**
  - Easily configure the title, description, and button text for each instance.
- **Reusable Design:**
  - Adaptable for use across multiple screens in your SwiftUI application.
- **Interactive Button:**
  - Includes a button with customizable actions, styled to match the theme of the action sheet.

## Types Overview

The `ActionSheetType` enum defines three supported types, each with specific visual properties:

| Type     | Icon                           | Icon Color | Background Color  |
|----------|--------------------------------|------------|-------------------|
| `success`| Checkmark Circle (`\u2714`)   | Green      | Light Green       |
| `cancel` | Xmark Circle (`\u274C`)       | Red        | Light Red         |
| `warning`| Exclamation Triangle (`\u26A0`) | Orange     | Light Orange      |

## Code Usage

### Example

```swift
ReusableActionSheet(
    type: .success,
    title: "Success",
    description: "This is a success message.",
    buttonTitle: "Confirm"
) {
    print("Success button tapped")
}
```

### Parameters

| Parameter      | Description                                              |
|----------------|----------------------------------------------------------|
| `type`         | Specifies the type of the action sheet (`success`, `cancel`, `warning`). |
| `title`        | The title text displayed on the action sheet.             |
| `description`  | The detailed description below the title.                |
| `buttonTitle`  | The text displayed on the button.                        |
| `buttonAction` | The closure to execute when the button is tapped.        |

## Preview

The component can be previewed with various configurations:

```swift
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
```

## Installation

1. Copy the `ReusableActionSheet` code into a `.swift` file in your project.
2. Import the component into your SwiftUI views.

## Customization

The `ReusableActionSheet` component is fully customizable:
- **Icons and Colors:** Customize the icon and color schemes by modifying the `ActionSheetType` enum.
- **Content:** Set custom titles, descriptions, and button text as needed.
- **Actions:** Define the behavior triggered when the button is tapped.

## Contribution

Contributions are welcome! Feel free to fork this repository and submit pull requests for new features, bug fixes, or improvements.

