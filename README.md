<div align="center">
<p align="center">
  <p align="center">
    <h3 align="center">Packet Tracer Flatpak</h3>
    <p align="center">
      A Flatpak manifest for Cisco's Packet Tracer.
    </p>
  </p>
</p>
</div>

## About

This is a Flatpak manifest for [Cisco's Packet Tracer](https://www.netacad.com/courses/packet-tracer). The Deb package in which Cisco distributes their binary build of Packet Tracer is not included as the download link for and use of Packet Tracer itself requires a Netacad account.

This is currently based on Packet Tracer 8.2.1 and is intended to track the latest release. For previous releases see [janymal/PacketTracer7-flatpak](https://github.com/janymal/PacketTracer7-flatpak) and [rpallai/flatpak-pt](https://github.com/rpallai/flatpak-pt).

## Building

1. Clone this repository.

    ```bash
    git clone https://github.com/losuler/com.cisco.PacketTracer
    ```

2. Install build dependencies (using your preferred package manager).

    ```bash
    dnf install flatpak-builder
    ```

3. Install Flatpak runtime dependencies.

    ```bash
    flatpak-builder --install-deps-from=flathub --install-deps-only build com.cisco.PacketTracer.yml
    # or
    flatpak install \
        org.kde.Sdk/x86_64/5.15-22.08 \
        io.qt.qtwebengine.BaseApp/x86_64/5.15-22.08
    ```

4. Download the official Deb package to the cloned repository (don't rename it).

    https://skillsforall.com/resources/lab-downloads

5. Build and install the Flatpak.

    ```bash
    cd com.cisco.PacketTracer
    flatpak-builder --install --user build com.cisco.PacketTracer.yml
    ```

## Notes

- Do not remove the `.flatpak-builder` directory that is created during the build (while the Flatpak is installed) as it serves as the local Flatpak repository.
