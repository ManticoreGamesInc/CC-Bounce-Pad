--[[
  ____                               _____          _ 
 |  _ \                             |  __ \        | |
 | |_) | ___  _   _ _ __   ___ ___  | |__) |_ _  __| |
 |  _ < / _ \| | | | '_ \ / __/ _ \ |  ___/ _` |/ _` |
 | |_) | (_) | |_| | | | | (_|  __/ | |  | (_| | (_| |
 |____/ \___/ \__,_|_| |_|\___\___| |_|   \__,_|\__,_|
------------------------------------------------------

The bounce pad component will allow creators to place these around the map that could be used to get to certain
areas of the level that could be unreachable by other means.

Bounce pads add an element of fun, and are usually great for obbys.

-----------------------------------------------------------------------------------------------------------------

==========
How to use
==========

Drop the Bounce Map component into the Hierarchy. The root of the component contains various properties that can be changed.

There is an example template with a very basic obby to show how this component could be used.

- BounceStrength

The strength of the velocity that will be applied to the player.

- EnableRagdollAfter

If greater than 0, the player will be ragdolled when this duration has passed.

- Direction

The direction of the velocity.

--]]