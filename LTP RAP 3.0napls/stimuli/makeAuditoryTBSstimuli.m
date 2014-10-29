
%load old file with 10ms of high freq noise:
[hy fs nbits] = wavread('high10old.wav');

%load old file with 10ms of low freq noise:
[ly fs nbits] = wavread('low10old.wav');

%now set their peak magnitude to be equal to .75
nhy = (hy./max(abs(hy))).*.75;
nly = (ly./max(abs(ly))).*.75;

%then write them out as stero files:
wavwrite([nhy nhy], fs, nbits, 'high10.wav')
wavwrite([nly nly], fs, nbits, 'low10.wav')


%next, write both new noise files to double burst deviants.  That is, but a
%second noise burst approximately 25ms after the onset of the first noise
%burst.  This double noise sound will serve as a deviant in the baseline
%blocks (i.e. - it will be the target).

ldev = zeros(1544, 1);
hdev = ldev;

%this is the original burst:
ldev(1:441) = nly;
hdev(1:441) = nhy;

%this is the second, starting at 1102 (~25ms)
ldev(1102:1542) = nly;
hdev(1102:1542) = nhy;


% %save them as stero files:
wavwrite([hdev hdev], fs, nbits, 'high10d.wav')
wavwrite([ldev ldev], fs, nbits, 'low10d.wav')

%finally, create the theta bursts:
ltb = zeros(2646,1);
htb = ltb;

ltb(1:1544) = ldev;
htb(1:1544) = hdev;

%add third noise burst at 50ms:
ltb(2205:2645) = nly;
htb(2205:2645) = nhy;

%At this point, we can create our three different theta-burst stimulus
%trains.  Each needs 600 noise bursts.

%The first is continuous:
cltbs = zeros(44100*40, 1);
chtbs = cltbs;
for i = 1:8820:length(chtbs)
    %every 200ms, add a h or ltb:
    cltbs(i:(i+2645)) = ltb;
    chtbs(i:(i+2645)) = htb;
end

%save these:
wavwrite([chtbs chtbs], fs, nbits, 'cHtbs.wav');
wavwrite([cltbs cltbs], fs, nbits, 'cLtbs.wav');

%next is intermediate:

%since this one is 5s of continuous followed by 10s of silence, repeated
%every 15s for a total of 110s (600 pulses), I'm going to build a 15s chunk
%and use repmat to concatenate that chunk 8 times (5s X 15 stim/s =
%75s/chunnk and 600/75 = 8 reps)

imltbs = repmat([cltbs(1:220500); zeros(441000,1)],8,1);
imhtbs = repmat([chtbs(1:220500); zeros(441000,1)],8,1);
%save these:
wavwrite([imhtbs imhtbs], fs, nbits, 'imHtbs.wav');
wavwrite([imltbs imltbs], fs, nbits, 'imLtbs.wav');

%last, intermittent stimulation:

%since this is 2s of continuous tbs followed by 8s of silence, repeated
%every 10s for a total of 190s (600 pulses), I'm going to build a 10s chunk
%and use repmat to concatenate that chunk 20 times (2s X 15 stim/s =
%30s/chunk and 600/30 = 20 reps)

iltbs = repmat([cltbs(1:88200); zeros(352800,1)], 20,1);
ihtbs = repmat([chtbs(1:88200); zeros(352800,1)], 20,1);
%save these:
wavwrite([ihtbs ihtbs], fs, nbits, 'iHtbs.wav');
wavwrite([iltbs iltbs], fs, nbits, 'iLtbs.wav');
