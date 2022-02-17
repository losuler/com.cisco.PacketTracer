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

This is currently based on Packet Tracer 8.1.1 and is intended to track the latest release. For previous releases see [janymal/PacketTracer7-flatpak](https://github.com/janymal/PacketTracer7-flatpak) and [rpallai/flatpak-pt](https://github.com/rpallai/flatpak-pt).

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
    flatpak install \
        org.freedesktop.Platform/x86_64/20.08 \
        org.freedesktop.Sdk/x86_64/20.08
    ```
    
   if you use KDE Plasma can install Flatpak Kde runtime dependencies

    ```bash
    flatpak install org.kde.Platform/x86_64/5.15-21.08
    flatpak install org.kde.Sdk/x86_64/5.15-21.08
    ```
 

4. Download the official Deb package.

    https://www.netacad.com/portal/resources/packet-tracer

5. Build and install the Flatpak.

    ```bash
    flatpak-builder --install build com.cisco.PacketTracer.yml
    ```
  Or 
  ```bash
	flatpak-builder --install build com.cisco.PacketTracer.KDE.yml
  ```
 In case to use KDE

## Notes

- Do not remove the `.flatpak-builder` directory that is created during the build (while the Flatpak is installed) as it serves as the local Flatpak repository.
