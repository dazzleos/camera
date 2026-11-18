//! Camera, an app for taking photos and videos with a Raspberry Pi camera module, for Dazzle: built with Dazzle's modules and
//! tools (see Dazzle's build.zig, `addApp`).
//!
//!     zig build                 the program, and its archive and catalogue (zig-out/apps)
//!     zig build test            its tests, on this computer
//!
//! With a Dazzle (or kete) checkout of your own beside it:
//! `zig build --fork=../dazzle`.

const std = @import("std");
const dazzle = @import("dazzle");

pub fn build(b: *std.Build) void {
    _ = dazzle.addApp(b, .{
        .name = "dazzle-camera",
        .icon = .photo_camera,
        .title = "Camera",
        .description = "Take photos and videos",
        .about = "Take photos and record videos with a Raspberry Pi camera module, with a live view to frame them. They are kept in your files, to see and share.",
    });
}
