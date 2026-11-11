

.PHONY: help native qemu clean

help:
	@echo "Usage: make <target>"
	@echo "Targets:"
	@echo "  native - build for native simulator"
	@echo "  qemu   - build for QEMU x86"
	@echo "  clean  - remove build artifacts"

clean:
	@rm -rf build

native:
	@west build -b native_sim/native/64 .

qemu:
	@west build -b qemu_x86 .

