# This makefile is for building and running development builds of favagtk

.PHONY: build
build:
	flatpak-builder --verbose --force-clean --repo=_repo _build org.gnome.gitlab.johannesjh.favagtk.devel.json

.PHONY: run
run: build
	flatpak-builder --verbose --run _build org.gnome.gitlab.johannesjh.favagtk.devel.json favagtk

dist: build
dist:
	flatpak build-bundle --verbose _repo favagtk.flatpak org.gnome.gitlab.johannesjh.favagtk

