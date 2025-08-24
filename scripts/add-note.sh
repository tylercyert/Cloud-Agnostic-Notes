#!/bin/bash

# Cloud Infrastructure Notes - Add Note Script
# This script helps add new notes and update the README.md

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

# Function to show usage
show_usage() {
    echo "Usage: $0 <category> <subcategory> <filename> [description]"
    echo ""
    echo "Categories:"
    echo "  aws     - Amazon Web Services"
    echo "  azure   - Microsoft Azure"
    echo "  cloud   - General Cloud Concepts"
    echo "  db      - Database Concepts"
    echo "  net     - Networking"
    echo ""
    echo "Examples:"
    echo "  $0 aws compute ec2 'Elastic Compute Cloud service notes'"
    echo "  $0 azure storage blob 'Azure Blob Storage documentation'"
    echo "  $0 cloud kubernetes 'Kubernetes orchestration platform'"
    echo ""
    echo "The script will:"
    echo "  1. Create the note file with proper structure"
    echo "  2. Update README.md with the new link"
    echo "  3. Show you the next steps"
}

# Function to create note file
create_note_file() {
    local filepath="$1"
    local title="$2"
    local description="$3"
    
    # Create directory if it doesn't exist
    local dir=$(dirname "$filepath")
    mkdir -p "$dir"
    
    # Create the note file
    cat > "$filepath" << EOF
# $title

## Overview
$description

## Key Features
- Feature 1
- Feature 2
- Feature 3

## Use Cases
When and why you would use this service or concept.

## Best Practices
Important considerations and recommendations.

## Related Services
Links to related services or concepts.

## References
- Official documentation links
- Additional resources

---
*Created: $(date '+%B %d, %Y')*
EOF

    print_success "Created note file: $filepath"
}

# Function to update README
update_readme() {
    local category="$1"
    local subcategory="$2"
    local filename="$3"
    local title="$4"
    
    # Convert spaces to URL encoding for links
    local encoded_filename=$(echo "$filename" | sed 's/ /%20/g' | sed 's/&/%26/g')
    local encoded_title=$(echo "$title" | sed 's/ /%20/g' | sed 's/&/%26/g')
    
    # Determine the section in README to update
    local section=""
    case "$category" in
        "aws")
            case "$subcategory" in
                "arch") section="AWS Architecture";;
                "compute") section="AWS Compute Services";;
                "net") section="AWS Networking Services";;
                "storage") section="AWS Storage Services";;
                "security") section="AWS IAM & Security";;
                *) section="AWS Additional Services";;
            esac
            ;;
        "azure")
            case "$subcategory" in
                "arch") section="Azure Architecture";;
                "compute") section="Azure Compute Services";;
                "net") section="Azure Networking Services";;
                "storage") section="Azure Storage Services";;
                "security") section="Azure IAM & Security";;
                *) section="Azure Additional Services";;
            esac
            ;;
        "cloud") section="Cloud (General)";;
        "db") section="Database";;
        "net") section="Networking";;
    esac
    
    print_status "Updating README.md section: $section"
    
    # For now, just show what needs to be done manually
    echo ""
    print_warning "Please manually update README.md:"
    echo "  Add this line to the '$section' section:"
    echo "  - [$title](./$category/$subcategory/$encoded_filename.md)"
    echo ""
}

# Main script logic
main() {
    if [ $# -lt 3 ]; then
        show_usage
        exit 1
    fi
    
    local category="$1"
    local subcategory="$2"
    local filename="$3"
    local description="${4:-"Notes about $filename"}"
    
    # Validate category
    case "$category" in
        "aws"|"azure"|"cloud"|"db"|"net")
            ;;
        *)
            print_error "Invalid category: $category"
            show_usage
            exit 1
            ;;
    esac
    
    # Determine file path based on category
    local filepath=""
    local title=""
    
    case "$category" in
        "aws")
            case "$subcategory" in
                "arch") filepath="AWS/Architecture/$filename.md";;
                "compute") filepath="AWS/Compute & Networking/Compute/$filename.md";;
                "net") filepath="AWS/Compute & Networking/Networking/$filename.md";;
                "storage") filepath="AWS/Storage/$filename.md";;
                "security") filepath="AWS/IAM & Security/$filename.md";;
                *) filepath="AWS/$filename.md";;
            esac
            title="$filename"
            ;;
        "azure")
            case "$subcategory" in
                "arch") filepath="Azure/Architecture/$filename.md";;
                "compute") filepath="Azure/Compute & Networking/Compute/$filename.md";;
                "net") filepath="Azure/Compute & Networking/Networking/$filename.md";;
                "storage") filepath="Azure/Storage/$filename.md";;
                "security") filepath="Azure/IAM & Security/$filename.md";;
                *) filepath="Azure/$filename.md";;
            esac
            title="$filename"
            ;;
        "cloud") filepath="Cloud (General)/$filename.md"; title="$filename";;
        "db") filepath="Database/$filename.md"; title="$filename";;
        "net") filepath="Networking/$filename.md"; title="$filename";;
    esac
    
    print_status "Creating note: $filepath"
    print_status "Title: $title"
    print_status "Description: $description"
    
    # Create the note file
    create_note_file "$filepath" "$title" "$description"
    
    # Update README
    update_readme "$category" "$subcategory" "$filename" "$title"
    
    # Show next steps
    echo ""
    print_success "Note created successfully!"
    echo ""
    print_status "Next steps:"
    echo "  1. Edit the note file: $filepath"
    echo "  2. Update README.md with the new link"
    echo "  3. Commit your changes:"
    echo "     git add $filepath README.md"
    echo "     git commit -m \"Add $filename notes\""
    echo "     git push"
    echo ""
    print_status "Happy documenting! 📚"
}

# Run main function with all arguments
main "$@"
