install:
	flatpak-builder --delete-build-dirs --force-clean --user --install build com.cisco.PacketTracer.yml

uninstall:
	flatpak uninstall --delete-data com.cisco.PacketTracer.yml

clean:
	rm --recursive --force build .flatpak-builder
