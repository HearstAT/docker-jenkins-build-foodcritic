# hearstat/jenkins-build-foodcritic

Container that runs all all foodcrtitic tests for Jenkins

## Alpine Build Info
-   Base Image: hearstat/jenkins-build-base
-   openJDK: 8
-   Ruby: 2.3
-   Foodcritic: 8.1.0

## Usage

### Build From Scratch

To build the image, do the following:

```bash
docker build ./
```

### Dockerhub

A prebuilt container is available in the docker index.

```bash
docker pull hearstat/jenkins-build-foodcritic
```

### Jenkins Config

#### Groovy Template Config
See [Docker Groovy Config](https://github.com/HearstAT/cfn_jenkins/blob/master/scripts/bootstrap/docker.groovy) to see how this is utilized (Under Docker Template Base)

```groovy
image: 'hearstat/jenkins-build-foodcritic',
dnsString: '',
network: '',
dockerCommand: '',
volumesString: '',
volumesFromString: '',
environmentsString: '',
lxcConfString: '',
hostname: '',
memoryLimit: 0,
memorySwap: 0,
cpuShares: 0,
bindPorts: '22',
bindAllPorts: false,
privileged: false,
tty: false,
macAddress: ''
```

#### Custom Warnings
We have customer warnings setup to use this containers.

See [this](https://github.com/HearstAT/cfn_jenkins/blob/master/scripts/xml/hudson.plugins.warnings.WarningsPublisher.xml) config for specifics.

## Credits
-   ZTS [Cooking With Jenkins](https://github.com/zts/cooking-with-jenkins/blob/master/files/default/hudson.plugins.warnings.WarningsPublisher.xml) for Custom Warnings

## Contributing
#### External Contributors
-   Fork the repo on GitHub
-   Clone the project to your own machine
-   Commit changes to your own branch
-   Push your work back up to your fork
-   Submit a Pull Request so that we can review your changes

**NOTE:** Be sure to merge the latest from "upstream" before making a pull request!

#### Internal Contributors
-   Clone the project to your own machine
-   Create a new branch from master
-   Commit changes to your own branch
-   Push your work back up to your branch
-   Submit a Pull Request so the changes can be reviewed

**NOTE:** Be sure to merge the latest from "upstream" before making a pull request!

## License
Copyright 2017, Hearst Automation Team

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
