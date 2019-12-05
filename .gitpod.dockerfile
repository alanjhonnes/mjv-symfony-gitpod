FROM gitpod/workspace-full:latest

#USER root
# Install custom tools, runtime, etc.

USER gitpod
RUN wget https://get.symfony.com/cli/installer -O - | bash

ENV PATH="$HOME/.symfony/bin:$PATH"
# Apply user-specific settings

# Give back control
USER root
