# This file has been generated using `bazel run scripts:selenium_manager`

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def selenium_manager():
    http_file(
        name = "download_sm_linux",
        executable = True,
        sha256 = "7572971a9f6e4e1622793528d817a1746bfb2d87bf44ee2d5ec4ca6665d5ef8b",
        url = "https://github.com/SeleniumHQ/selenium_manager_artifacts/releases/download/selenium-manager-e396475/selenium-manager-linux",
    )

    http_file(
        name = "download_sm_macos",
        executable = True,
        sha256 = "de31da0ebac505d05b019d9a7113cd099a330fe6b75d0ce297e51454d44be488",
        url = "https://github.com/SeleniumHQ/selenium_manager_artifacts/releases/download/selenium-manager-e396475/selenium-manager-macos",
    )

    http_file(
        name = "download_sm_windows",
        executable = True,
        sha256 = "c8ed9ebfa23faf029fd5060a121b99a09e98a29a83212d8d0d644e62e07a47d0",
        url = "https://github.com/SeleniumHQ/selenium_manager_artifacts/releases/download/selenium-manager-e396475/selenium-manager-windows.exe",
    )

    # Bootstrap URL for the stacked bindings change. Regenerate this file with
    # `bazel run scripts:selenium_manager` after the first SBOM release to pin
    # its immutable tag and SHA-256.
    http_file(
        name = "download_sm_sbom",
        url = "https://github.com/SeleniumHQ/selenium_manager_artifacts/releases/latest/download/selenium-manager-sbom.cdx.json",
    )

def _selenium_manager_artifacts_impl(_ctx):
    selenium_manager()

selenium_manager_artifacts = module_extension(
    implementation = _selenium_manager_artifacts_impl,
)
