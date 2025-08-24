#!/bin/bash

# Test script to simulate README stats update
# This helps debug the GitHub Actions workflow

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

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

# Function to count markdown files
count_files() {
    local file_count=$(find . -name "*.md" | wc -l)
    echo "$file_count"
}

# Function to update README
update_readme() {
    local file_count="$1"
    local current_date="$2"
    
    print_status "Updating README.md..."
    print_status "Date: $current_date"
    print_status "File count: $file_count"
    
    # Check if README exists
    if [ ! -f "README.md" ]; then
        print_error "README.md not found!"
        exit 1
    fi
    
    # Show current stats
    print_status "Current README stats:"
    grep -A 2 -B 2 "Last updated\|Total files" README.md || print_warning "Stats section not found"
    
    # Update the README.md file
    sed -i.bak "s/\*Last updated: .*\*/\*Last updated: $current_date\*/" README.md
    sed -i.bak "s/\*Total files: .*\*/\*Total files: $file_count\*/" README.md
    
    # Remove backup file
    rm README.md.bak
    
    print_success "README.md updated successfully!"
    
    # Show updated stats
    print_status "Updated README stats:"
    grep -A 2 -B 2 "Last updated\|Total files" README.md || print_warning "Stats section not found"
}

# Function to show git status
show_git_status() {
    print_status "Git status:"
    git status --porcelain README.md || print_warning "Git not initialized or README not changed"
}

# Main script
main() {
    print_status "Testing README stats update..."
    echo ""
    
    # Count files
    local file_count=$(count_files)
    print_status "Found $file_count markdown files"
    
    # Get current date
    local current_date=$(date '+%B %d, %Y')
    print_status "Current date: $current_date"
    
    echo ""
    
    # Update README
    update_readme "$file_count" "$current_date"
    
    echo ""
    
    # Show git status
    show_git_status
    
    echo ""
    print_success "Test completed successfully!"
    print_status "If everything looks good, the GitHub Actions workflow should work too."
}

# Run main function
main "$@"
