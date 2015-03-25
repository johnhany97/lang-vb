# Docker Exec Image: C#

A Dockerfile describing an container capable of executing C# source files.

# Build

```sh
git clone https://github.com/docker-exec/csharp.git
docker build -t dexec/csharp .
```

# Usage

In a directory containing a script e.g. foo.cs, run:

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.cs:/tmp/dexec/build/foo.cs \
    dexec/csharp foo.cs
```

## Passing arguments to the script

Arguments can be passed to the script using any of the following forms:

```
-a argument
--arg argument
--arg=argument
```

Each argument passed must be prefixed in this way, e.g.

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.cs:/tmp/dexec/build/foo.cs \
    dexec/csharp foo.cs \
    --arg='hello world' \
    --arg=foo \
    --arg=bar
```

## Passing arguments to the compiler

Arguments can be passed to the compiler using any of the following forms:

```
-b argument
--build-arg argument
--build-arg=argument
```

Each argument passed must be prefixed in this way, e.g.

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.cs:/tmp/dexec/build/foo.cs \
    dexec/csharp foo.cs \
    --build-arg=-some-compiler-option \
    --build-arg=some-compiler-option-value
```
