# cyanite &nbsp; [![bluebuild build badge](https://github.com/zekurio/cyanite/actions/workflows/build.yml/badge.svg)](https://github.com/zekurio/cyanite/actions/workflows/build.yml)

Cyanite is a customized version of [Bazzite](https://bazzite.gg).

## Available Images

| Image | Base Image |
|-------|------------|
| cyanite-gnome | ghcr.io/ublue-os/bazzite-gnome |
| cyanite | ghcr.io/ublue-os/bazzite |
| cyanite-gnome-asus-nvidia-open | ghcr.io/ublue-os/bazzite-gnome-asus-nvidia-open |

## Installation

> [!WARNING]  
> [This is an experimental feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable), try at your own discretion.

To rebase an existing atomic Fedora installation to the latest build:

1. First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/zekurio/IMAGE_NAME:latest
  ```
2. Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
3. Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/zekurio/IMAGE_NAME:latest
  ```
4. Reboot again to complete the installation
  ```
  systemctl reboot
  ```

Replace `IMAGE_NAME` with one of the available images, listed above.

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If built on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/zekurio/cyanite
```
