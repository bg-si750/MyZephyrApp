

.PHONY: help native qemu clean hw

help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  native - build for native simulator"
	@echo "  qemu   - build for QEMU x86"
	@echo "  clean  - remove build artifacts"
	@echo "  hw     - build for hardware"

clean:
	@rm -rf build

native:
	@west build -b native_sim/native/64 .

qemu:
	@west build -b qemu_x86 .

hw:
	@west build -b nucleo_h563zi .	

