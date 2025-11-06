# Build Automation Scripts

This folder contains all the build automation scripts and documentation for cross-platform deployment of Homestead Tools.

## 📁 Contents

### Build Scripts

- **`build-linux.sh`** - Linux packaging (AppImage, DEB, RPM)

### Processing Scripts

- **`preproc-linux.sh`** / **`postproc-linux.sh`** - Linux build customization

### Documentation

- **`GITHUB_ACTIONS_SETUP.md`** - Complete GitHub Actions setup and troubleshooting guide

## 🚀 Quick Usage

### For GitHub Actions (Automated)

All scripts are automatically called by the workflows in `.github/workflows/`. No manual intervention needed.

### For Local Development

#### Linux Build

```bash
chmod +x build-linux.sh
./build-linux.sh --appimage --deb --rpm
```

#### Windows Build

Use Inno Setup to compile `template.iss` in the build automation folder.

## 📖 Documentation

See **`GITHUB_ACTIONS_SETUP.md`** for:

- Complete setup instructions
- Troubleshooting guide
- Release process
- Platform-specific configurations

## 🔧 Requirements

### Linux

- Ubuntu 18.04+ or equivalent
- Node.js 24+
- Build tools: `build-essential`, `fuse`, `rpm`, `alien`

### Windows

- Windows 10+ with PowerShell
- Node.js 24+
- Inno Setup 6+

---

**Note**: All dependencies are automatically installed by GitHub Actions workflows. Local installation is only needed for manual testing.
