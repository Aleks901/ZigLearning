
const std = @import("std");

pub const Player = struct {
    id: u32,
    name: []const u8,
    health: u8,
    mana: u8,
};

pub const Enemy = struct {
    id: u32,
    name: []const u8,
    health: u8,
    mana: u8
};

pub fn attackTarget(target: *Enemy) !void
{
    target.health -= 1;
}

test "Attack function reduces enemy health" {
    var enemy = Enemy
    {
        .health = 10,
        .id = 1,
        .mana = 10,
        .name = "TestEnemy"
    };
    try attackTarget(&enemy);
    try std.testing.expectEqual(9, enemy.health);
}