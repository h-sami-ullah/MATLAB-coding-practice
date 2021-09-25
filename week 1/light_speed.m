function [time,distance]=light_speed(distance)
speed=3e5*60;
time=distance./speed;
distance=distance./1.609; 
end
