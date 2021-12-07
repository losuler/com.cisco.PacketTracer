install:
	flatpak-builder --delete-build-dirs --force-clean --user --install build com.cisco.PacketTracer.yml

uninstall:
	flatpak remove --delete-data com.cisco.PacketTracer

clean:
	rm --recursive --force build .flatpak-builder
