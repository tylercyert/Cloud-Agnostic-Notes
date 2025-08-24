# Scripts Directory

This directory contains helpful scripts for managing the Cloud Infrastructure Notes repository.

## 📜 Available Scripts

### `setup-repo.sh`
Initializes the git repository and prepares it for GitHub.

**Usage:**
```bash
./scripts/setup-repo.sh [remote-url]
```

**Examples:**
```bash
# Initialize repository without remote
./scripts/setup-repo.sh

# Initialize repository with GitHub remote
./scripts/setup-repo.sh https://github.com/username/cloud-infra-notes.git
```

**What it does:**
- Checks if git is installed
- Initializes git repository (if not already done)
- Adds all files to git
- Creates initial commit
- Adds remote origin (if URL provided)
- Shows next steps for GitHub setup

### `add-note.sh`
Helps create new note files with proper structure and updates the README.

**Usage:**
```bash
./scripts/add-note.sh <category> <subcategory> <filename> [description]
```

**Categories:**
- `aws` - Amazon Web Services
- `azure` - Microsoft Azure
- `cloud` - General Cloud Concepts
- `db` - Database Concepts
- `net` - Networking

**Subcategories (for AWS/Azure):**
- `arch` - Architecture
- `compute` - Compute Services
- `net` - Networking Services
- `storage` - Storage Services
- `security` - IAM & Security

**Examples:**
```bash
# Add AWS EC2 notes
./scripts/add-note.sh aws compute ec2 'Elastic Compute Cloud service notes'

# Add Azure Blob Storage notes
./scripts/add-note.sh azure storage blob 'Azure Blob Storage documentation'

# Add general Kubernetes notes
./scripts/add-note.sh cloud kubernetes 'Kubernetes orchestration platform'
```

**What it does:**
- Creates note file with proper structure
- Places file in correct directory based on category/subcategory
- Shows you how to update README.md
- Provides next steps for git workflow

## 🚀 Getting Started

1. **Make scripts executable** (if not already done):
   ```bash
   chmod +x scripts/*.sh
   ```

2. **Setup repository**:
   ```bash
   ./scripts/setup-repo.sh
   ```

3. **Add new notes**:
   ```bash
   ./scripts/add-note.sh aws compute lambda 'AWS Lambda serverless computing'
   ```

## 📝 Script Requirements

- **Bash shell** (available on macOS, Linux, and Windows with WSL)
- **Git** installed and configured
- **Proper permissions** to execute scripts

## 🔧 Customization

You can modify these scripts to:
- Add new categories or subcategories
- Change the note template structure
- Add additional automation features
- Integrate with other tools

## 🐛 Troubleshooting

**Script not executable:**
```bash
chmod +x scripts/script-name.sh
```

**Permission denied:**
```bash
sudo chmod +x scripts/script-name.sh
```

**Git not found:**
Install git from [git-scm.com](https://git-scm.com/)

## 📚 Related Files

- `../README.md` - Main repository documentation
- `../CONTRIBUTING.md` - Contribution guidelines
- `../.github/workflows/` - GitHub Actions workflows

---

**Note:** These scripts are designed to work with the existing repository structure. If you modify the directory structure, you may need to update the scripts accordingly.
