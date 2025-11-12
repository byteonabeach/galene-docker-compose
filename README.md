# Galene Docker Build (With Extra Cute Cats!)

![Cute Cat Operator](https://placecats.com/neo_2/300/200) 

A Docker setup for Galene that's as smooth as a cat's purr and as reliable as their ability to knock things off your desk. Purr-fect for videoconferencing!*

## 🐱 What is This?

This repository contains a Dockerfile and Compose setup for [Galene](https://galene.org/), a fully-featured, easy-to-deploy, and resource-friendly videoconferencing system. It's like having a tiny, efficient, and very polite IT admin cat managing your video calls!

## 🎁 Features (Because Cats Love Them!)

*   **Dynamic Fetching:** Our setup dynamically fetches the **latest stable version** of Galene itself. No more outdated, grumpy cat software! It also dynamically fetches and updates Go dependencies (`go get -u ./...`) to ensure you're running with the most recent and secure packages. Think of it as a cat constantly sharpening its claws on the latest tech! 🐾
*   **Configurable Galene:** The `docker-compose.yml` allows you to pass command-line arguments directly to the Galene binary. This means you can set all sorts of default settings Galene supports using the `command:` field. Is your cat camera shy? Adjust the settings! Need a specific group name? Set it! It's like giving your cat a voice command, but for video conferencing.
*   **Manual Build Option:** Don't trust the cats? (We're hurt, but okay.) You can absolutely build the Docker image manually on your own machine using `docker build`. We won't judge (much). It's right there in the `Dockerfile`!

## 🚀 Quick Start (Like a Cat Chasing a Laser Dot)

1.  **Get the Code:** Clone this repository.
    ```bash
    git clone https://github.com/byteonabeach/galene-docker-compose
    cd galene-docker-compose
    ```
2.  **Build and Run:** Use Docker Compose to build the image (using the local `Dockerfile`) and start the service.
    ```bash
    docker-compose up --build
    ```
    *`--build` ensures the image is built fresh from your local `Dockerfile`.*
3.  **Access Galene:** Point your browser to `https://localhost:8443` (or `http://localhost:7443` if you used the `-http` command). Ignore the certificate warning (unless your cat is a certified security expert, which is rare). The default group might be set up, or you can create your own!
4.  **Default Settings:** You can configure default Galene settings directly in the `docker-compose.yml` file using the `command:` section. See the example provided.

## 🐱‍👤 Building Manually (For the Skeptical Cat Owners)

If you prefer to build the image yourself, navigate to the directory containing the `Dockerfile` and run:

```bash
docker build -t your-chosen-image-name .
```
