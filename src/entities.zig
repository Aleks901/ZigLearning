
const std = @import("std");

pub const Player = struct {
    id: i32,
    name: []const u8,
    health: i32,
    mana: i32
};

pub const Enemy = struct {
    id: i32,
    name: []const u8,
    health: i32,
    mana: i32
};

pub fn attackTarget(target: *Enemy) !void
{
    target.health -= 1;
}