"""
    function simulation(rulemodel::MyOneDimensionalTwoColorElementaryRuleModel, initial::Array{Int64,1};  
        steps::Int64 = 240, background::Int64 = 1) -> Dict{Int64, Array{Int64,2}}

TODO: Fill me in.
"""
function simulation(rulemodel::MyOneDimensionalTwoColorElementaryRuleModel, initial::Array{Int64,1};  
    steps::Int64 = 240, background::Int64 = 1)::Dict{Int64, Array{Int64,2}}
    
    # initialize -
    frames = Dict{Int64, Array{Int64,2}}();
    
    # TODO: Implement the two-color CA here
    # ...
    
    # return
    return frames;
end

"""
    simulation(rulemodel::MyOneDimensionalThreeColorElementaryRuleModel,  initial::Array{Int64,1};  
        steps::Int64 = 10, background::Int64 = 1) -> Dict{Int64, Array{Int64,2}}

TODO: Fill me in.
"""
function simulation(rulemodel::MyOneDimensionalThreeColorElementaryRuleModel,  initial::Array{Int64,1};  
    steps::Int64 = 10, background::Int64 = 1)::Dict{Int64, Array{Int64,2}}
    
    # initialize -
    frames = Dict{Int64, Array{Int64,2}}();
    
    # TODO: Implement the three-color CA here
    # ...
    
    # return
    return frames;
end