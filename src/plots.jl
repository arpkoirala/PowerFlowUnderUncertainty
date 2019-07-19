export  plotHistogram,
        plotHistogram_gen,
        plotHistogram_i,
        plotHistogram_v

function plotHistogram(x::Vector; kwargs...)
    bins = haskey(kwargs, :bins) ? kwargs[:bins] : 70
    color = haskey(kwargs, :color) ? kwargs[:color] : "blue"
    plt[:hist](x,normed=true,bins=bins, color=color)
    haskey(kwargs,:xlabel) ? xlabel(kwargs[:xlabel]) : nothing
    haskey(kwargs,:ylabel) ? ylabel(kwargs[:ylabel]) : nothing
    grid(true)
end

function plotHistogram_gen(pg::Matrix, name::String; kwargs...)
    haskey(kwargs,:fignum) ? figure(kwargs[:fignum]) : figure()
    plt[:subplot](121)
    plotHistogram(pg[1,:]; xlabel=name*"_1", ylabel="ρ("*name*"_1)", kwargs...)
    plt[:subplot](122)
    plotHistogram(pg[2,:]; xlabel=name*"_2", ylabel="ρ("*name*"_2)", kwargs...)
end

function plotHistogram_v(v::Matrix, name::String; kwargs...)
    haskey(kwargs,:fignum) ? figure(kwargs[:fignum]) : figure()
    plt[:subplot](221)
    plotHistogram(v[1,:]; xlabel=name*"_1", ylabel="ρ("*name*"_1)", kwargs...)
    plt[:subplot](222)
    plotHistogram(v[2,:]; xlabel=name*"_2", ylabel="ρ("*name*"_2)", kwargs...)
    plt[:subplot](223)
    plotHistogram(v[3,:]; xlabel=name*"_3", ylabel="ρ("*name*"_3)", kwargs...)
    plt[:subplot](224)
    plotHistogram(v[4,:]; xlabel=name*"_4", ylabel="ρ("*name*"_4)", kwargs...)
end

function plotHistogram_i(i::Matrix, name::String; kwargs...)
    haskey(kwargs,:fignum) ? figure(kwargs[:fignum]) : figure()
    plt[:subplot](321)
    plotHistogram(i[1,:]; xlabel=name*"_1", ylabel="ρ("*name*"_1)", kwargs...)
    plt[:subplot](322)
    plotHistogram(i[2,:]; xlabel=name*"_2", ylabel="ρ("*name*"_2)", kwargs...)
    plt[:subplot](323)
    plotHistogram(i[3,:]; xlabel=name*"_3", ylabel="ρ("*name*"_3)", kwargs...)
    plt[:subplot](324)
    plotHistogram(i[4,:]; xlabel=name*"_4", ylabel="ρ("*name*"_4)", kwargs...)
    plt[:subplot](325)
    plotHistogram(i[5,:]; xlabel=name*"_5", ylabel="ρ("*name*"_5)", kwargs...)
end