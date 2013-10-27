(
{
	var out, trig, env;
	trig = MySaw.kr(1);
	env = EnvGen.ar(Env.perc(0.01, 0.2), trig, 0.5);
	out = SinOsc.ar(200, 0, env);
}.scope;
)

(
{
	var out, clock, trig, env1, env2;
	clock = LFSaw.kr(1);
	trig = MySaw.kr(clock * 20);
	env1 = EnvGen.ar(Env.perc(0.01,0.3), clock);
	env2 = EnvGen.ar(Env.perc(0.01, 0.1), trig);
	out = Saw.ar([200, 220], [env1, env2]);
}.scope;
)

(
{
	var out, clock, trig, env1, env2;
	var note1, note2;
	clock = LFSaw.kr(LFNoise2.ar(1, 2, 0.5));
	trig = MySaw.kr(clock * 12);
	env1 = EnvGen.ar(Env.perc(0.2,0.7), clock);
	env2 = EnvGen.ar(Env.perc(0.01, 0.1), trig);

	note1 = Demand.kr(trig, 0, Dwrand([0, 2, 4, 5, 7, 9, 11, 12], [5,4,3,4,5,3,1,5].normalizeSum, inf)) + 50;
    note2 = Demand.kr(clock, 0, Dwrand([0, 2, 4, 5, 7, 9, 11, 12], [5,4,3,4,5,3,1,5].normalizeSum, inf)) + 62;

	out = Saw.ar([note1.midicps, note2.midicps], [env1, env2]);
	out = RLPF.ar(out, TExpRand.kr(500, 2200, clock), 0.1);
}.scope;
)