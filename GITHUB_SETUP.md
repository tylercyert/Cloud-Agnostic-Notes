# GitHub Setup Guide

This guide will walk you through setting up your Cloud Infrastructure Notes repository on GitHub.

## 🚀 Quick Start

### 1. Initialize the Repository
```bash
# Make scripts executable
chmod +x scripts/*.sh

# Setup the git repository
./scripts/setup-repo.sh
```

### 2. Create GitHub Repository
1. Go to [GitHub](https://github.com)
2. Click "New repository"
3. Name it something like `cloud-infra-notes` or `infrastructure-notes`
4. Make it public or private (your choice)
5. **Don't** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

### 3. Connect and Push
```bash
# Add your GitHub repository as remote origin
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git push -u origin main
```

## 📁 What's Been Created

### Core Files
- **`README.md`** - Comprehensive home page with all your notes linked
- **`LICENSE`** - MIT License for open source use
- **`CONTRIBUTING.md`** - Guidelines for contributors
- **`.gitignore`** - Excludes unnecessary files from version control

### GitHub Features
- **`.github/workflows/`** - Automated workflows for:
  - Updating README stats when files change
  - Checking markdown links for validity
- **`.github/ISSUE_TEMPLATE/`** - Templates for bug reports and feature requests

### Helper Scripts
- **`scripts/setup-repo.sh`** - Initializes git repository
- **`scripts/add-note.sh`** - Creates new notes with proper structure
- **`scripts/README.md`** - Documentation for all scripts

### Configuration
- **`.markdown-link-check.json`** - Configuration for link validation

## 🔧 Adding New Notes

### Using the Helper Script
```bash
# Add AWS EC2 notes
./scripts/add-note.sh aws compute ec2 'Elastic Compute Cloud service notes'

# Add Azure Blob Storage notes
./scripts/add-note.sh azure storage blob 'Azure Blob Storage documentation'

# Add general networking notes
./scripts/add-note.sh net protocols 'Network protocols overview'
```

### Manual Process
1. Create new `.md` file in appropriate directory
2. Follow the template structure (see `CONTRIBUTING.md`)
3. Update `README.md` with new link
4. Commit and push changes

## 📊 GitHub Actions

The repository includes automated workflows:

### Update README Stats
- **Trigger**: When markdown files are added/modified
- **Action**: Updates file count and last updated date
- **File**: `.github/workflows/update-readme.yml`

### Check Markdown Links
- **Trigger**: On push and pull requests
- **Action**: Validates all internal and external links
- **File**: `.github/workflows/check-links.yml`

## 🎯 Repository Structure

```
Infra/
├── README.md                 # Home page with all links
├── LICENSE                   # MIT License
├── CONTRIBUTING.md          # Contribution guidelines
├── .gitignore               # Git ignore rules
├── .markdown-link-check.json # Link checker config
├── .github/                 # GitHub specific files
│   ├── workflows/           # GitHub Actions
│   └── ISSUE_TEMPLATE/      # Issue templates
├── scripts/                 # Helper scripts
├── AWS/                     # Amazon Web Services
├── Azure/                   # Microsoft Azure
├── Cloud (General)/         # General cloud concepts
├── Database/                # Database concepts
└── Networking/              # Networking fundamentals
```

## 🔗 Linking Guidelines

### Internal Links
- Use relative paths: `./AWS/Storage/Amazon S3.md`
- URL encode spaces: `%20` for spaces, `%26` for `&`
- Test all links before committing

### External Links
- Include official documentation links
- Add reference links for additional reading
- Use descriptive link text

## 📝 Best Practices

### File Naming
- Use descriptive, clear names
- Include service/product name
- Use proper capitalization
- Avoid special characters except hyphens and parentheses

### Content Structure
- Follow the template structure
- Use proper heading hierarchy
- Include practical examples
- Keep content up-to-date
- Verify technical accuracy

### Git Workflow
- Create feature branches for major changes
- Use descriptive commit messages
- Test all links before pushing
- Update README.md when adding new files

## 🚨 Common Issues

### Scripts Not Executable
```bash
chmod +x scripts/*.sh
```

### Git Remote Issues
```bash
# Check current remotes
git remote -v

# Remove and re-add if needed
git remote remove origin
git remote add origin https://github.com/USERNAME/REPO.git
```

### GitHub Actions Not Running
1. Check repository settings
2. Ensure Actions are enabled
3. Check workflow file syntax
4. Verify branch names match

## 🔄 Maintenance

### Regular Tasks
- Review and update outdated content
- Check for broken links
- Update service versions and features
- Review and merge pull requests
- Monitor GitHub Actions for failures

### Adding New Categories
1. Create new directory
2. Update `README.md` with new section
3. Modify helper scripts if needed
4. Update issue templates

## 📚 Resources

- [GitHub Documentation](https://docs.github.com/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)
- [GitHub Actions](https://docs.github.com/en/actions)

## 🤝 Getting Help

- Check existing issues and discussions
- Create new issues for bugs or feature requests
- Use the provided templates
- Review the contributing guidelines

---

**Happy documenting! 📚** Your cloud infrastructure knowledge repository is now ready for GitHub and collaboration.
