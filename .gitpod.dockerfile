FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN wget https://get.symfony.com/cli/installer -O - | bash

USER gitpod
# Apply user-specific settings

# Give back control
USER root
