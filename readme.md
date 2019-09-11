# Developing inside a Container

## Overview

The main idea is to simplify the initial setup process for development environment (VC platform manager, SQL Server, IIS). This will speed up the onboarding process for new engineers who join our team.
Developers would only need to download Docker and IDE (VIsual Studio), and not have to install external tools and services. Code edits will be done from the IDE as per normal and the changes will be tracked and propagated from host to the container. This simplifies initial setup.

We are containerizing a VC platform manager web app. We will run it as a multi-container app and orchestrate it using Docker Compose. This app will consist of 2 services, 1 for our server & 1 for our database.
The first order of business is to ensure that any code edits we do on the host machine are automatically propagated to the container. This makes the development experience feel more natural.

This is only possible through bind mounting, which works similar to a Linux mount. When we mount a path in the host to a path in the container, the contents of the host directory will completely overwrite whatever is in the container directory, regardless of whether the container directory has files which were not present in the host directory at mount time. The result is that the container directory will be an exact snapshot of the host directory.

[Visual Studio tools for Docker](https://docs.microsoft.com/en-us/visualstudio/containers/overview?view=vs-2019) used in solution.

![Developing inside a Container](docs/media/developing-inside-container.png)

## Prerequisites

You need to have some basic understanding of Docker, Docker Compose, and the key terms used in the ecosystem.
Read more about Docker basics in this [article](https://docs.docker.com/get-started/)
Install [Docker desktop for Windows](https://docs.docker.com/docker-for-windows/install/) on your machine.
During installation you'll need to chose Windows as operating system used inside your containers.

## How to use

## How to debug module

Before debugging new module run VirtoCommerce platform manage in your browser: http:\\localhost
Within Visual Studio, select the Attach to Process action in the Debug window:
![Menu](docs/media/screen-attach-to-process-menu.png)

Chose **Connection type** **Remote** i in opened window and press the **Find** button to find the remote connection:
![Find remote](docs/media/screen-attach-to-process-window.png)

The screenshot below shows the detected containers:
![Remote container](docs/media/screen-remote-connections.png)

Select container and press **Select** button.

Once the container has been selected, then the running process can be selected. 
For debugging a IIS web application select w3wp.exe process:
![Attach](docs/media/screen-attach-to-process-process-selection.png)

You can read more about remote debugging in Visual Studio in this [article](https://docs.microsoft.com/en-us/visualstudio/debugger/attach-to-running-processes-with-the-visual-studio-debugger?view=vs-2019).

## License

Copyright (c) Virto Solutions LTD.  All rights reserved.

Licensed under the Virto Commerce Open Software License (the "License"); you
may not use this file except in compliance with the License. You may
obtain a copy of the License at

<http://virtocommerce.com/opensourcelicense>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied.
