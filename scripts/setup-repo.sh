#!/bin/bash

# Cloud Infrastructure Notes - Repository Setup Script
# This script initializes the git repository and prepares it for GitHub

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if git is installed
check_git() {
    if ! command -v git &> /dev/null; then
        print_error "Git is not installed. Please install git first."
        exit 1
    fi
    print_success "Git is installed"
}

# Function to check if repository is already initialized
check_repo() {
    if [ -d ".git" ]; then
        print_warning "Git repository already exists"
        return 0
    else
        return 1
    fi
}

# Function to initialize git repository
init_repo() {
    print_status "Initializing git repository..."
    git init
    print_success "Git repository initialized"
}

# Function to add all files
add_files() {
    print_status "Adding all files to git..."
    git add .
    print_success "Files added to git"
}

# Function to create initial commit
create_commit() {
    print_status "Creating initial commit..."
    git commit -m "Initial commit: Cloud Infrastructure Notes

- Comprehensive AWS services documentation
- Azure services and architecture notes
- Networking fundamentals and protocols
- Database concepts and types
- General cloud computing concepts
- GitHub Actions workflows for automation
- Contribution guidelines and templates"
    print_success "Initial commit created"
}

# Function to add remote origin
add_remote() {
    local remote_url="$1"
    if [ -n "$remote_url" ]; then
        print_status "Adding remote origin: $remote_url"
        git remote add origin "$remote_url"
        print_success "Remote origin added"
    else
        print_warning "No remote URL provided. You can add it later with:"
        echo "  git remote add origin <your-github-repo-url>"
    fi
}

# Function to show next steps
show_next_steps() {
    echo ""
    print_success "Repository setup complete!"
    echo ""
    print_status "Next steps:"
    echo "  1. Create a new repository on GitHub"
    echo "  2. Add the remote origin:"
    echo "     git remote add origin <your-github-repo-url>"
    echo "  3. Push to GitHub:"
    echo "     git push -u origin main"
    echo "  4. Enable GitHub Actions in your repository settings"
    echo ""
    print_status "To add new notes, use the helper script:"
    echo "  ./scripts/add-note.sh <category> <subcategory> <filename> [description]"
    echo ""
    print_status "Happy documenting! 📚"
}

# Main script logic
main() {
    local remote_url="$1"
    
    print_status "Setting up Cloud Infrastructure Notes repository..."
    echo ""
    
    # Check prerequisites
    check_git
    
    # Check if repository already exists
    if check_repo; then
        print_warning "Repository already exists. Skipping initialization."
    else
        init_repo
    fi
    
    # Add files
    add_files
    
    # Create commit
    create_commit
    
    # Add remote if provided
    add_remote "$remote_url"
    
    # Show next steps
    show_next_steps
}

# Show usage if help requested
if [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo "Usage: $0 [remote-url]"
    echo ""
    echo "Options:"
    echo "  remote-url    GitHub repository URL (optional)"
    echo "  -h, --help    Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0"
    echo "  $0 https://github.com/username/cloud-infra-notes.git"
    exit 0
fi

# Run main function
main "$@"
