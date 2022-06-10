$appDir = App-Dir "Bench.Rust"

if ([System.Environment]::Is64BitOperatingSystem) {
    & "$appDir\rustup-init.exe" -y --no-modify-path `
        --default-toolchain "stable-gnu" `
        --default-host "x86_64-pc-windows-gnu"
} else {
    & "$appDir\rustup-init.exe" -y --no-modify-path `
        --default-toolchain "stable-gnu" `
        --default-host "i686-pc-windows-gnu" `
        --target "i686-pc-windows-msvc"
}
