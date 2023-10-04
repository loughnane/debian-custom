# Use the Debian base image
FROM debian:bookworm

# Copy the packages list into the container
COPY packages.list /tmp/

# Update and install packages from the list
RUN apt-get update && \
    xargs -a /tmp/packages.list apt-get install -y && \
    rm /tmp/packages.list

# Set a default command or entrypoint if needed
# CMD ["/bin/bash"]

