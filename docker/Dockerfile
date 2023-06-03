FROM docker.io/rocm/dev-ubuntu-22.04:5.5.1

# for RX 6750XT
ENV HSA_OVERRIDE_GFX_VERSION=10.3.0
ENV PATH="/home/ml-learn/.local/bin:${PATH}"

RUN useradd -m -s /bin/bash -u 1000 -g 100 ml-learn

USER ml-learn

# https://pytorch.org/get-started/locally/
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.4.2 && \
    pip3 install numpy pandas scikit-learn matplotlib && \
    pip3 install mypy black pylint nbqa && \
    pip3 install jupyter jupyterthemes && \
    jt -t onedork

WORKDIR /home/ml-learn/work

CMD [ "jupyter-notebook" ]