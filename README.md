# WoW 3.3.5 Addon Structure

## Directory Structure

The typical structure of a World of Warcraft (WoW) addon for version 3.3.5 includes the following directories and files:

```
AddonName/
├── AddonName.toc
├── Main.lua
├── Main.xml
├── Libs/
│   └── (Libraries utilized by the addon)
├── Locale/
│   └── enUS.lua  (Localization files for different languages)
├── Images/
│   └── (Images used in the addon)
└── (Other optional directories/files)
```

## Files Description

- **AddonName.toc**: This is the table of contents file that tells WoW the name of the addon, the version, and the main Lua file to load.
- **Main.lua**: This is where the main logic and functionality of the addon are implemented.
- **Main.xml**: Contains the XML layout and GUI elements for the addon.
- **Libs/**: Directory for including third-party libraries that enhance functionality.
- **Locale/**: Holds localization files, allowing the addon to support multiple languages.
- **Images/**: A directory for storing images used in the interface of the addon.