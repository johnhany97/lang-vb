# Docker Exec Image: VB

A Dockerfile describing an container capable of executing VB source files.

# Build

```sh
git clone https://github.com/johnhany97/lang-vb.git
docker build -t johnhany97/lang-vb .
```

# Usage

In a directory containing a script e.g. foo.vb, run:

```sh
docker run -t --rm \
    -v $(pwd -P)/foo.vb:/tmp/dexec/build/foo.vb \
    johnhany97/lang-vb foo.vb
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
    -v $(pwd -P)/foo.vb:/tmp/dexec/build/foo.vb \
    johnhany97/lang-vb foo.vb \
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
    -v $(pwd -P)/foo.vb:/tmp/dexec/build/foo.vb \
    johnhany97/lang-vb foo.vb \
    --build-arg=-some-compiler-option \
    --build-arg=some-compiler-option-value
```
