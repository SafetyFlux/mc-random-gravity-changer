# Display title for player facing direction when gravity is up
title @a[x_rotation=-90..-45] actionbar {"text":"Down", "color":"green"}
title @a[x_rotation=45..90] actionbar {"text":"Up", "color":"red"}
title @a[y_rotation=135..-135, x_rotation=-45..45] actionbar {"text":"North", "color":"blue"}
title @a[y_rotation=-45..45, x_rotation=-45..45] actionbar {"text":"South", "color":"gold"}
title @a[y_rotation=45..135, x_rotation=-45..45] actionbar {"text":"East", "color":"dark_purple"}
title @a[y_rotation=-135..-45, x_rotation=-45..45] actionbar {"text":"West", "color":"yellow"}