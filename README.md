# vs-docker

[Docker Hub](https://hub.docker.com/r/judge2020/vs-docker)

Windows Containers for running Visual Studio build tools in Docker.

Since these use Windows Containers, they can only be ran on Windows hosts, including Windows-based CI services that include Docker Enterprise or Docker for Windows (GitHub Actions, CircleCI, etc). If you're looking for running Visual Studio build tools on a Linux host, see [MSVCDocker](https://github.com/paleozogt/MSVCDocker).

Note: GitHub Packages is not pushed to currently as, ironicaly, [it does not support Windows images](https://github.community/t/docker-push-windows-image-fails-with-no-matching-package-file/17757/3?u=judge2020).

### Tags

Click the below tags to be taken to their respective Dockerfile. You can see the visual studio components/packages installed by finding them in the `vs_buildtools.exe` build step. [See here](https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-build-tools?view=vs-2019) for what the `Workload` VS component IDs include.

* [cpp](cpp.Dockerfile)

all tags allow a suffix of `-node` to include node.js v12 LTS.


### Issues

<!-- taken from https://github.com/microsoft/vs-dockerfiles/tree/master/native-desktop#issues -->

* If the repository is not clean and the mapped directory is not on the same drive or the same path as the host directory, native project builds will fail with a front-end compiler error.

* The compile flag /CI causes a compiler error when used in a container. In your project properties under C/C++, change "Debug Information Format" to `C7 compatible` when building in a container.
