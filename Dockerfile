FROM phasecorex/red-discordbot

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        # Dependencies for cryptography
        build-essential \
        libssl-dev \
        libffi-dev \
        python-dev \
        # Dependecies for Rust
        curl \
    ; \
    rm -rf /var/lib/apt/lists/*;
    
# Update new packages
RUN apt-get update

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
