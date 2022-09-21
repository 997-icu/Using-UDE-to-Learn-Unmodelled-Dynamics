print("hello123")
print("fafafsafasfasfsaf")
print("fffffffffffffffffffffffff \n")
print("\n")

using Plots
using StatsPlots
x = 1:10; y = rand(10); # These are the plotting data
plot(x, y)
x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y)
x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y, title = "Two Lines", label = ["Line 1" "Line 2"], lw = 3)

p1 = plot(x, y) # Make a line plot
p2 = scatter(x, y) # Make a scatter plot
p3 = plot(x, y, xlabel = "This one is labelled", lw = 3, title = "Subtitle")
p4 = histogram(x, y) # Four histograms each with 10 points? Why not!
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)

boxplot!(["Series 1" "Series 2" "Series 3" "Series 4"], y, leg = false)