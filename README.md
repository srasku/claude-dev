# claude-dev Image

## Introduction

This is a basic containerized development environment that includes the
Claude coding agent.  You can install additional dependencies by adding
them to `Docker/Dockerfile`.  You can run a command inside the container
by running:

    $ ./in-container <command>

This environment isolates Claude from the host filesystem.  It can only see
the current directory and the container's home directory.

The current directory is mounted under the home directory, `/home/develop`.
The path is relative to `~/Code` on the host.  For example, `~/Code/AI/Claude`
is mounted at `/home/develop/AI/Claude`.  Directories outside `~/Code` use
their full path.

The home directory is the `in-container-home` Docker volume.  It is shared by
every repo that uses `in-container`, just like a normal home directory.

## Configure Claude

In order to configure Claude, run:

    $ ./in-container claude

And follow the directions on the screen.

When it asks you to trust the folder, select the "Yes, I trust this
folder" option.  Otherwise, Claude won't be able to do anything.

You can continue to use Claude in subsequent sessions once it's
configured.  The configuration is saved in the `in-container-home`
volume, along with other settings like `gh` credentials.  You don't
need to re-authorize unless you delete the volume.

## Run a Specific Version of Claude

You can run a specific version of Claude by specifying an explicit
`CLAUDE_VERSION`.  For example:

    $ CLAUDE_VERSION=2.1.3 ./in-container claude

This will build an image with that version.  It uses `latest` if you don't
specify `CLAUDE_VERSION`.  You can also specify `stable` if you prefer that
channel.

Docker will cache each version separately.  Switching versions will be fast if
it's already cached.  `latest` and `stable` are cached too so you will have to
specify a specific version or rebuild the image manually using `--no-cache`.
You can either add `--no-cache` to the `docker build` line in `in-container`
temporarily or build it separately:

    $ DOCKER_BUILDKIT=0 docker build --no-cache -f Docker/Dockerfile -t claude-dev:latest Docker

Note that `DOCKER_BUILDKIT=0` is necessary since that setting is used
inside the `in-container` script.  It uses the legacy builder which uses a
different build cache than the BuildKit builder.  If it's omitted, it will
build in the BuildKit cache but, inside `in-container`, it will use the image
cached in the legacy cache.
