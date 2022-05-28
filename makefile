.PHONY: generate
generate:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: icon
icon:
	flutter pub run flutter_launcher_icons:main