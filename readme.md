# Developing inside a Container

## Overview

## How to use

## How to debug module

Before debugging new module run VirtoCommerce platform manage in your browser: http:\\localhost
Within Visual Studio, select the Attach to Process action in the Debug window:
![Menu](docs\media\screen-attach-to-process-menu.png)

Chose **Connection type** **Remote** i in opened window and press the **Find** button to find the remote connection:
![Find remote](docs\media\screen-attach-to-process-window.png)

The screenshot below shows the detected containers:
![Remote container](docs\media\screen-remote-connections.png)

Select container and press **Select** button.

Once the container has been selected, then the running process can be selected. 
For debugging a IIS web application select w3wp.exe process:
![Attach](docs\media\screen-attach-to-process-process-selection.png)

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
