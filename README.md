Docker-golang\_build\_from\_repo
============================
This repository contains a Dockerfile that allows you to build statically linked Golang binaries from a URL environment variable.  These binaries have no dependencies, so can leverage a ```scratch``` 5MB Docker image.

The following command will download the latest from the Github repo specified with ```REPO_PATH``` and then build the binaries and leave them in the current directory.  Notice the ```-v $(pwd):/output``` parameter specified which is mandatory to map the local directory for output.

```docker run -e REPO_PATH=github.com/emccode/swift-cli -v $(pwd):/output emccode/golang-build_from_repo```

A single ```swift-cli``` binary is expected from this compilation.

