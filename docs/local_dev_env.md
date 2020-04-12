# Local development environment

By default we use Docker based local development environment.

## Requirements

- [Docker](docker.md)
- [Stonehenge](https://github.com/druidfi/stonehenge)

For sites hosted on Amazee.io, there is additional information [here](https://docs.amazee.io/).

## Setup workflow

- Start [Stonehenge](https://github.com/druidfi/stonehenge)
- Clone project repository
- Start Docker environment with `make fresh`
- Develop

## Switch between Pygmy and Stonehenge

As both tools are listening to same ports, they cannot be running at the same time.

To switch to another, you need to stop the other:

```
$ pygmy stop && stonehenge up
```

And vice versa.

## Links

- [Docker tips](docker-tips.md)
