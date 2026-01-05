const std = @import("std");
const ZigLearning = @import("ZigLearning");



pub fn main() !void {
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
    
    const testPlayer = ZigLearning.Entity.Player 
    {
        .id = 1,
        .health = 10,
        .mana = 10,
        .name = "Aleks"
    };

    var testEnemy = ZigLearning.Entity.Enemy
    {
        .id = 1,
        .health = 10,
        .mana = 10,
        .name = "Enemy Entity"
    };

    std.debug.print(
        "Player name: {s}, Health: {}\n",
        .{testPlayer.name, testPlayer.health} 
    );

    try ZigLearning.Entity.attackTarget(&testEnemy);

    std.debug.print("Enemy health: {}", .{testEnemy.health});
}

