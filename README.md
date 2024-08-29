# Wiremock Project

This project uses Wiremock to mock APIs and facilitate development and testing.

## Project Structure

```
WIREMOCK
├── files
│   └── ...
├── mappings
│   └── api-stubs.json
├── compose.yaml
├── Dockerfile
└──README.md
```

## Prerequisites

- Docker
- Docker Compose

## Installation and Startup

1. Clone this repository:
   ```
   git clone [REPO_URL]
   cd [REPO_NAME]
   ```

2. Launch the container with Docker Compose:
   ```
   docker-compose up -d
   ```

Wiremock will be accessible at `http://localhost:8080`.

## Configuration

The project uses Docker Compose to configure and launch Wiremock. Here are the main configurations:

- Docker Compose version: 3.8
- Wiremock image: wiremock/wiremock:latest
- Exposed port: 8080
- Mounted volumes:
  - `./mappings:/home/wiremock/mappings`
  - `./files:/home/wiremock/__files`

### Launch Options

Wiremock is launched with the following options:
- `--verbose`: Verbose mode for more detailed logs
- `--enable-browser-proxying`: Activates browser proxying
- `--trust-all-proxy-targets`: Trusts all proxy targets

## Development

The project is configured to automatically synchronize changes in the `files` and `mappings` directories. This allows for developing and testing Wiremock stubs without having to restart the container.

## Dockerfile

A custom Dockerfile is included to extend the base Wiremock image. It:
1. Creates a new user `wiremockuser`
2. Changes the owner of the Wiremock working directory
3. Switches to the non-root user for execution
4. Copies mappings and files to the appropriate locations

## Contributing

To contribute to this project, please follow these steps:
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## License

[Insert license information here if applicable]