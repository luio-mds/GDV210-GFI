shader_set(shd_grayscale)
shader_set_uniform_f(shader_get_uniform(shd_grayscale, "u_GrayscaleAmount"), 1 - (global.player_health/100));