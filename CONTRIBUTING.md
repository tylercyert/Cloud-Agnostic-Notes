# Contributing to Cloud Infrastructure Notes

Thank you for your interest in contributing to this repository! This guide will help you understand how to add new content and maintain the structure.

## 📁 Repository Structure

The repository is organized into logical sections:

```
Infra/
├── AWS/                    # Amazon Web Services
│   ├── Architecture/       # AWS architectural concepts
│   ├── Compute & Networking/ # Compute and networking services
│   ├── Storage/           # Storage services
│   └── IAM & Security/    # Identity, access, and security
├── Azure/                  # Microsoft Azure
│   ├── Architecture/       # Azure architectural concepts
│   ├── Compute & Networking/ # Compute and networking services
│   ├── Storage/           # Storage services
│   └── IAM & Security/    # Identity, access, and security
├── Cloud (General)/        # General cloud concepts
├── Database/               # Database concepts
└── Networking/             # Networking fundamentals
```

## ✍️ Adding New Content

### 1. File Naming Convention

- Use descriptive, clear names
- Include the service/product name
- Use proper capitalization
- Avoid special characters except hyphens and parentheses
- Examples:
  - `Amazon EC2 (Elastic Compute Cloud).md`
  - `Azure Virtual Network (VNet).md`
  - `Foundational Networking.md`

### 2. File Structure

Each markdown file should follow this basic structure:

```markdown
# Service/Concept Name

## Overview
Brief description of the service or concept.

## Key Features
- Feature 1
- Feature 2
- Feature 3

## Use Cases
When and why you would use this service.

## Best Practices
Important considerations and recommendations.

## Related Services
Links to related services or concepts.

## References
- Official documentation links
- Additional resources
```

### 3. Updating the README

When adding new files, update the `README.md` file to include:
- The new file in the appropriate section
- Proper linking with URL encoding for spaces and special characters
- Maintain the hierarchical structure

## 🔗 Linking Guidelines

### Internal Links
- Use relative paths: `./AWS/Storage/Amazon S3.md`
- URL encode spaces and special characters: `%20` for spaces, `%26` for `&`
- Test all links to ensure they work

### External Links
- Include official documentation links
- Add reference links for additional reading
- Use descriptive link text

## 📝 Content Guidelines

### Quality Standards
- Write clear, concise explanations
- Include practical examples when possible
- Keep content up-to-date with current service versions
- Use consistent terminology throughout

### Technical Accuracy
- Verify information against official documentation
- Include version-specific details when relevant
- Note any limitations or considerations

### Accessibility
- Use proper heading hierarchy (H1, H2, H3)
- Include alt text for images
- Use descriptive link text
- Ensure content is readable and well-structured

## 🚀 Getting Started

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b add-new-service`
3. **Add your content** following the guidelines above
4. **Update the README.md** with new links
5. **Test all links** to ensure they work
6. **Commit your changes**: `git commit -m "Add new service documentation"`
7. **Push to your branch**: `git push origin add-new-service`
8. **Create a pull request**

## 📋 Pull Request Checklist

Before submitting a pull request, ensure:

- [ ] New content follows the file naming convention
- [ ] Content is properly structured with headers
- [ ] All internal links are working
- [ ] README.md is updated with new links
- [ ] Content is technically accurate
- [ ] No sensitive information is included
- [ ] Changes are focused and well-documented

## 🐛 Reporting Issues

If you find issues with existing content:

1. Check if the issue has already been reported
2. Create a new issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Expected vs. actual behavior
   - File location and section

## 📚 Resources

- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Markdown](https://docs.github.com/en/github/writing-on-github)
- [Obsidian Markdown](https://help.obsidian.md/Editing+and+formatting/Markdown)

## 🤝 Questions?

If you have questions about contributing or need help with specific content:

1. Check existing issues and discussions
2. Create a new issue for general questions
3. Use the issue templates when available

Thank you for contributing to making this repository a valuable resource for the cloud infrastructure community!
