const std = @import("std");

pub fn main() void {
    const env_map = std.process.getEnvMap(std.debug.global_allocator) catch @panic("unable to get env map");
    std.testing.expect(env_map.count() == 0);
}
