# API Advanced - Project 0x16

## Description
This project focuses on advanced usage of APIs, particularly working with the Reddit API. The tasks involve querying various endpoints, handling pagination, and making recursive API calls. These skills are essential for efficient API usage, which is commonly tested in technical interviews.

## Learning Objectives
By the end of this project, you should be able to:
- Read and understand API documentation.
- Use APIs with pagination.
- Parse JSON results from an API.
- Make recursive API calls.
- Sort a dictionary by value.

## Resources
- [Reddit API Documentation](https://www.reddit.com/dev/api/)
- [Query String Documentation](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams)

## Requirements
- All Python files are interpreted/compiled on Ubuntu 20.04 LTS using Python 3.4.3.
- All files should end with a new line.
- First line of all files must be exactly `#!/usr/bin/python3`.
- Code should follow the [PEP 8 style guide](https://pep8.org/).
- All files must be executable.
- Must use the `Requests` module for sending HTTP requests to the Reddit API.
- All modules should have documentation (e.g., `python3 -c 'print(__import__("my_module").__doc__)'`).

## Project Structure
- **0-subs.py**: Queries the Reddit API and returns the number of subscribers for a given subreddit.
- **1-top_ten.py**: Queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.
- **2-recurse.py**: Recursively queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit.

## Usage
To run the scripts, use the following commands:

```bash
python3 0-subs.py
python3 1-top_ten.py
python3 2-recurse.py
```

## Tasks
0. How many subs?
Description: Write a function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit.
File: 0-subs.py
Prototype: def number_of_subscribers(subreddit):

1. Top Ten
Description: Write a function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.
File: 1-top_ten.py
Prototype: def top_ten(subreddit):

2. Recurse it!
Description: Write a recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit.
File: 2-recurse.py
Prototype: def recurse(subreddit, hot_list=[]):
Advanced Tasks
Unlock advanced tasks upon completion of the mandatory tasks.

## Author
This project is completed by [Yazide Sali]
