# Web Stack Debugging #4

## Project Overview

This project involves debugging a web stack using Nginx and ApacheBench to address performance issues. The main goal is to enhance the server's handling of requests and fix any configuration problems that result in failed requests.

## Requirements

- **Ubuntu 14.04 LTS**: All files must be interpreted on this version.
- **Puppet**: Puppet manifests should be compatible with Puppet v3.4 and must pass `puppet-lint` version 2.1.1 without errors.
- **Ruby and Puppet-lint**: Install Ruby and `puppet-lint` as follows:
  ```bash
  apt-get install -y ruby
  gem install puppet-lint -v 2.1.1
  ```

## Tasks

### Task 0: Sky is the Limit, Let's Bring That Limit Higher

**Objective**: Fix the performance issues in the Nginx web server setup that result in a high number of failed requests.

1. **Benchmarking**: Use ApacheBench to benchmark the web server with 2000 requests and 100 concurrent requests.
   ```bash
   ab -c 100 -n 2000 localhost/
   ```
   Note the number of failed requests and other metrics.

2. **Fixing the Issues**:
   - Analyze logs to identify the root cause of the failures.
   - Apply fixes using a Puppet manifest file (`0-the_sky_is_the_limit_not.pp`).
     ```bash
     puppet apply 0-the_sky_is_the_limit_not.pp
     ```
   - Re-run ApacheBench to verify the fixes.

3. **Verification**:
   - Re-run ApacheBench to confirm that the number of failed requests has dropped to zero.

## Files

- **`0-the_sky_is_the_limit_not.pp`**: Puppet manifest to fix Nginx performance issues.

## Testing

To test the setup, follow these steps:

1. **Run Benchmark Test**:
   ```bash
   ab -c 100 -n 2000 localhost/
   ```

2. **Apply Fixes**:
   ```bash
   puppet apply 0-the_sky_is_the_limit_not.pp
   ```

3. **Verify Fixes**:
   ```bash
   ab -c 100 -n 2000 localhost/
   ```

## Additional Information

- Ensure that all files end with a new line.
- Puppet manifests should start with a comment explaining their purpose and end with the `.pp` extension.
- Make sure that the setup passes all the required checks and validations.
