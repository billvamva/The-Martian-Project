%Vasileios Vamvakas
%Student Number: 18062354

fileid = fopen('scra_chunk_100');
A = fread(fileid,'single'); %Testing showed that the data's type is single
if round(A)== A;
    offset = 0;
    for offset = -16:1:15 %Created a for loop that will test for all the possible offset values
    B = A + offset; 
    C = char(B); %Transform data into the corresponding characters
    D = transpose(C); %make text appear horizontally
    output_text = convertCharsToStrings(D); %change text from char type to string
    k = strfind(output_text,'The'); %in each loop check for a common word in the text. In this case 'The'    
        if k>0 %if more than 0 'The' output text
        disp(output_text);
        else 
        D = fliplr(D);
        output_text = convertCharsToStrings(D);
        k = strfind(output_text,'The');
         if k>0
         disp(output_text);
         end
        end   
    end
else
    A = fread(fileid,'int32');
    if round(A)== A;
        for offset = -16:1:15 %Created a for loop that will test for all the possible offset values
        B = A + offset; 
        C = char(B); %Transform data into the corresponding characters
        D = transpose(C); %make text appear horizontally
        output_text = convertCharsToStrings(D); %change text from char type to string
        k = strfind(output_text,'The'); %in each loop check for a common word in the text. In this case 'The'    
            if k>0 %if more than 0 'The' output text
            disp(output_text);
            else 
            D = fliplr(D);
            output_text = convertCharsToStrings(D);
            k = strfind(output_text,'The');
                if k>0
                disp(output_text);
                end
            end   
        end
    else
        A = fread(fileid,'int32');
        for offset = -16:1:15 %Created a for loop that will test for all the possible offset values
    B = A + offset; 
    C = char(B); %Transform data into the corresponding characters
    D = transpose(C); %make text appear horizontally
    output_text = convertCharsToStrings(D); %change text from char type to string
    k = strfind(output_text,'The'); %in each loop check for a common word in the text. In this case 'The'    
        if k>0 %if more than 0 'The' output text
        disp(output_text);
        else 
        D = fliplr(D);
        output_text = convertCharsToStrings(D);
        k = strfind(output_text,'The');
         if k>0
         disp(output_text);
         end
        end   
        end
    end
end
