%Inclass assignment 8

%Using the swalign function
% A. Create a random DNA sequence of length 100. 
function rr=randdnaseq(x)
s=randi(4,1,x);
% set up an array with 500 random numbers, range 1 to 4 in it.
d='';
for ii=1:x
    if s(ii)==1
        d(ii)='A';
    elseif s(ii)==2
        d(ii)='T';
    elseif s(ii)==3
        d(ii)='G';
    else d(ii)='C';
    end
%For every 1 in s, input A in d; and substitue rest values as well.
end
rr=d;
end
randdnaseq(100)

ans =

    'CACGATGCCACCTCATCCCGACCGCGTGAGATAACGTCATTCCATTGGCTGGAATCTGACTGGCCGAATCTCACTATGTTCGGCTCCTGAAGCCAGTATA'
seq1='CACGATGCCACCTCATCCCGACCGCGTGAGATAACGTCATTCCATTGGCTGGAATCTGACTGGCCGAATCTCACTATGTTCGGCTCCTGAAGCCAGTATA'
% B. Create a second sequence from the first one by changing the middle 20 basepairs (at positions 41-60)

seq2 = [seq1(1:40) randseq(20) seq1(60:100)];
seq2='CACGATGCCACCTCATCCCGACCGCGTGAGATAACGTCATCTGAGTGGGTAACACGCATATGGCCGAATCTCACTATGTTCGGCTCCTGAAGCCAGTATA'    
% C. run swalign on the two sequences with the default parameters
figure;
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','Showscore',true);
% D. run swalign with much higher and lower values of the GapOpen parameter
% and explain the results. 

%Gap opening parameter refers to the cost that a open a gap make take. The higher the cost is, the less possible to have a great gap in the alignment. Thus the figure with higher Gapopen parameter becomes more continurosly.


% E. run swalign with a low value of GapOpen but a high value of ExtendGap,
% explain the result
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','Gapopen',1,'ExtendGap',100,'Showscore',true)
start =

     1
     1
%Although the gapopen penalty is low, the cost for extending the alignment is too high, that the alignment gap can occur in the first pair(41), but cannot extend in the later parts.
% F. run swalign align with the default value of GapOpen and a low value
% of ExtendGap and explain the result. 
figure;
[score,align,start]=swalign(seq1,seq2,'Alphabet','nt','ExtendGap',1,'Showscore',true)


% Since the gap extending penalty is low, the greater gap can occur in the graph.
