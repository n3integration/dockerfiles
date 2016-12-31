# Riemann
Riemann is an event aggregator, useful for monitoring distributed systems.

## Usage

```bash
docker run -d -p 5555:5555/udp -p 5555:5555/tcp -p 5556:5556 riemann/latest
```

## Configuration

An `/etc/riemann` volume can be mounted to provide a custom configuration file. In this case,
the full path to the configuration file must be provided with the `docker run` command. More
information about the configuration of Riemann can be found [here](http://riemann.io/howto.html).

