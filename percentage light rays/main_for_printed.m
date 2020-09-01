cmn_fld = 'E:\collage_research_work\feature\TALIP\revison\data org\assame digit_online\';
savefile = ('E:\collage_research_work\feature\TALIP\revison\data org\org_new.csv');
csv = fopen(savefile, 'w');


maxm = 81+1;
for i=1:maxm
    st = strcat('attr_', num2str(i));
    fprintf(csv, '%s,',st);
end
fprintf(csv,'\n');

for i = 0:9
    i
    a = num2str(i);
    folder_in = strcat(cmn_fld,a,'\');
    listing = dir(strcat(folder_in,'*.','png'));
    file_names = {listing.name};
    num_pages = length(file_names);
    for j = 1:num_pages
        img = imread(strcat(folder_in,file_names{j}));
        a = main(img, 9, 9);
        
        class = strcat('a',num2str(i));
        
        l = length(a);
        for k=1:l
            fprintf(csv, '%f,', a(k));
        end
        
        fprintf(csv, '%s\n', class);
        
    end
    
end

fclose(csv);



    