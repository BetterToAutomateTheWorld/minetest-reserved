MAX_PLAYERS = 50
minetest.register_privilege("reserved_slot")

minetest.register_on_prejoinplayer(function(name, ip)
    if #minetest.get_connected_players() >= MAX_PLAYERS - 2 and
            not minetest.check_player_privs(name, {reserved_slot = true}) then
        return "Too many players in this server."
    end
end)
