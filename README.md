# claude-dev Image

## Introduction

This is a basic containerized development environment that includes the
Claude coding agent.  You can install additional dependencies by adding
them to `Docker/Dockerfile`.  You can run a command inside the container
by running:

    $ ./in-container.sh <command>

This environment isolates the file-system to just the current directory which
is mounted inside the container as the home directory.  This prevents Claude
from having access to the entire filesystem on the host.

## Configure Claude

In order to configure Claude, run:

    $ ./in-container.sh claude

And follow the directions on the screen.

When it asks you to trust the folder, select the "Yes, I trust this
folder" option.  Otherwise, Claude won't be able to do anything.

You can continue to use Claude in subsequent sessions once it's
configured.  It will save the configuration in `Docker/.claude.json`.
It mounts the file inside the container so you don't need to
re-authorize again unless you delete the file.
