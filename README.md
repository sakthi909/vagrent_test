# Github runner on Vagrent
### Requirments
1. vagrent should be installed in the host
2. Internet connection should be avilable to the host

### Steps
1. Download the git code
2. vagrent up
3. vagrent ssh ( this will allow the user to ssh to vagrent )

#### Downloading Vagrent
  mkdir actions-runner && cd actions-runner
#### Download the latest runner package
 curl -o actions-runner-linux-x64-2.291.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.291.1/actions-runner-linux-x64-2.291.1.tar.gz
#### Optional: Validate the hash
 echo "1bde3f2baf514adda5f8cf2ce531edd2f6be52ed84b9b6733bf43006d36dcd4c  actions-runner-linux-x64-2.291.1.tar.gz" | shasum -a 256 -c
#### Extract the installer
 tar xzf ./actions-runner-linux-x64-2.291.1.tar.gz

### Configure
#### Create the runner and start the configuration experience
 ./config.sh --url https://github.com/sakthi909/vagrent_test --token AZDVAA45UMAD63P3OVK4A73CPUYH6
#### Last step, run it!
$ ./run.sh
