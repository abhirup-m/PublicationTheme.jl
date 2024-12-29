using ColorSchemes, CairoMakie

COLMAP = ColorSchemes.cherry
function theme_publication()
    set_theme!(merge(theme_ggplot2(), theme_latexfonts()))
    update_theme!(
                  figure_padding = 0,
                  fontsize=28,
                  Axis = (
                    leftspinevisible = true,
                    bottomspinevisible = true,
                    rightspinevisible = true,
                    topspinevisible = true,
                    spinewidth = 1.5,
                         ),
                  Scatter = (
                           markersize=20,
                           colormap = COLMAP,
                          ),
                  ScatterLines = (
                           linewidth = 6,
                           markersize=20,
                           colormap = COLMAP,
                          ),
                  Lines = (
                           linewidth = 4,
                           colormap = COLMAP,
                         ),
                  Legend = (
                            patchsize=(50,20),
                            halign = :right,
                            valign = :top,
                           ),
                 )
end
export theme_publication
