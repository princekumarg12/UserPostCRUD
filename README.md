
# UserPostCommentCrud

This application is a basic social media-like platform where users can create posts and comments. Each post can have an image attached to it. Built with Ruby on Rails 6.1, it includes features like user authentication, posts with attached images, and a comment system.

## Table of Contents

- [Requirements](#requirements)
- [Setup and Installation](#setup-and-installation)
- [Features](#features)
- [Models](#models)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Requirements

- Ruby `2.x` (replace `x` with the version you are using)
- Rails `6.1`
- PostgreSQL (or another database of your choice)
- ImageMagick (for image processing)

## Setup and Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Setup the database:

   ```bash
   rails db:create db:migrate db:seed
   ```

4. Start the server:

   ```bash
   rails server
   ```

5. Visit `http://localhost:3000` in your browser.

## Features

- **User Authentication**: Basic user signup and login functionality.
- **Posts with Images**: Users can create posts and attach images using Active Storage.
- **Comments**: Users can comment on posts.

## Models

- **User**: Represents a user of the application. A user has many posts and comments.
- **Post**: Represents a post created by a user. A post can have an image attached using Active Storage and has many comments.
- **Comment**: Represents a comment on a post. A comment belongs to both a user and a post.

## Usage

- **Creating a Post**: After signing in, a user can create a post and attach an image.
- **Adding a Comment**: Users can comment on any post.
- **Viewing Posts and Comments**: All users can view posts and comments on the posts page.

## Testing

1. **Run all tests**:

   ```bash
   rails test
   ```

   OR, if using RSpec:

   ```bash
   rspec
   ```

2. **Run specific tests**:

   ```bash
   rails test <file_path>
   ```

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

