FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN wget https://get.symfony.com/cli/installer -O - | bash \
    && mv /home/gitpod/.symfony/bin/symfony /usr/local/bin/symfony

USER gitpod
# Apply user-specific settings

# Give back control
USER root
