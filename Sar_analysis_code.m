%%%%Radar Research project
%%%%Created by Stephen Johnston
%For the purposes of Pentahertz
%8/18/2019

%frequency
%phase
%magnitude
%triangle wave takes 6.41ms to rise, slope is 234

tri = 234*(0:1/(48000):6.41/1000);
 
movement = 0; %Change this to an input later on
%The difference in frequency correlates to a difference in distance for
%standing still objects
%The difference in phase correlates to the angle of transmission
%Taking the measurement from multiple spots lets you determine x-y,
%because you can find out which measurements differ in predicted phase and
%which stays the same. If it stays the same, the object is in the y
%direction
%If it changes, it is in the x direction


%Magnitude also represents distance via inverse square law
%Limit of 153m in distance before the wave resets
%If the frequency is higher than the frequency that the device is currently
%at by more than 5khz, disregard it
%This limits how close an object can be by 2m
i = 1;
input = (0:1/(50000):6.41/1000);
Input_fft = fft(input(i))
%i = 0;
%while i <= size(Input_fft)
%if Input_fft(i) > pred_freq + 5000
%    Input_fft(i) = [];
%    i = i - 1;
%end
%i = i + 1;
%end
%%%%This scrubs the input for any preventable noise from previous emissions
%%%%or otherwise
%%%%It won't work until we have image rejection



%Now I need the frequency related to time
%2.23Ghz is the max frequency
%Assume the current frequency is above input and recently transmitted
%The max difference can only be 50khz, which limits us drastically
%This means that the max range is going to be 5.12m
%Rev B might use a seperate microcontroller with a high frequency input.
%That would allow me to expand this range to a way higher limit (100 or so
%m)


%I need to relate the frequency with the current index of the recieved
%file.


pred_freq = 2.370*10^9 + (100*10^6/1.52)*tri;
i = 1;

while i <= size(input_fft(i))
    %Find the frequency of your current predicted frequency minus the input
    %frequency (it can't be plus)
    %Find out how far away this is from the index
    %Utilize this index as a correlation to the time between
    %use that to find the distance
    %You might have a problem with the analog input having a maximum of
    %only 40khz
    
    
    
    
    
    
    
end



