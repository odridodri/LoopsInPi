function big = loopsInPi(numm, pi)
   big = [];
    pii = pi(3:end);
  for i = 1:5000 %loop through th e1 mill
        n = [];
         [place] = strfind(pii, num2str(numm));
         
         tf = ismember(big, numm); %returns smthg like [0 1 0 0]
         if sum(tf) ==0
            if length(place) >0
                x = place(1);
                z = length(num2str(numm));
                big = [big str2num(pii(x:x+z-1))];
            end

            if length(place)~=0 %make new pi, start index from place
                numm = place(1);
            end
         else %if not, then get the place corresponding to 2. 
             if length(place) >0
                x = place(tf+1);
                z = length(num2str(numm));
                numms = numm;
                numm = place(tf+1);
                if str2num(pii(x:x+z-1))~=big(end)
                    big = [big str2num(pii(x:x+z-1))];
                end
             end
             
             switch true
                case length(place) >0 & str2num(pii(x:x+z-1))~=big(end)
                    x = place(tf+1);
                    z = length(num2str(numm)); %9385
                    numm = place(tf+1);
                    big = [big str2num(pii(x:x+z-1))];
                 case str2num(pii(x:x+z-1))== big(end)    
                    numm = numms;
             end
         end
  end
    
    