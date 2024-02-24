# include -
include("Include.jl")


# --- DO NOT TOUCH ANYTHING DAVE, LIFT YOUR FINGERS AWAY FROM THE KEYBOARD ---------------------------------------- #
# runme_two_color.jl
# This will create a rule model, run the simulation, and save the last frame to disk. We recolor the last frame
# to be a three-color image with shades of gray, where 0 is white, 1 is gray, and 2 is black. We then save
# last frame to disk as a JPEG image. The images will be saved in the threecolor directory in the _PATH_TO_MY_IMAGES

# initialize -
number_of_steps = 240;
number_of_states = 2^10;
initial = zeros(Int64, number_of_states);
initial[round(number_of_states/2) |> Int] = 1;
rules = range(0, stop=255, step=1) |> collect; # all elementary rules 0 ... 255
image_dictionary = Dict{Int64, Matrix{Gray{N0f8}}}();

# main loop, process each rule, dump the last frame to disk -
for i ∈ eachindex(rules)

    # build a rule model -
    rulemodel = build(MyOneDimensionalTwoColorElementaryRuleModel, index=i, radius = 3);
    
    # run simulation -
    frames = simulation(rulemodel, initial, steps=number_of_steps, background=0);
    
    # # save the last frame to disk -
    save(File{format"JPEG"}(joinpath(_PATH_TO_TEST_IMAGES, "twocolor", "TEST_R$(i)-F$(number_of_steps).jpeg")), 
         Gray.(1 .- frames[number_of_steps]));
end
# ----------------------------------------------------------------------------------------------------------------- #