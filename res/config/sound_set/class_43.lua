local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/142/142_drive.wav", gain = 1.0, refDist = 25.0, rolloffFact = 1.0, hasVelocity = true },
		{ name = "vehicle/142/142_idle.wav", gain = 5.0, refDist = 25.0, rolloffFact = 1.0, hasVelocity = true },
		{ name = "vehicle/142/142_brake_squeal.wav", gain = 1.0, refDist = 25.0, rolloffFact = 1.0, hasVelocity = true },
		{ name = "vehicle/train_diesel/_wheels_ringing.wav", gain = 1.0, refDist = 25.0, rolloffFact = 1.0, hasVelocity = true },
	},
	events =  {
		clacks = {
			names = {
				"vehicle/clack/modern/part_1.wav",
				"vehicle/clack/modern/part_2.wav",
				"vehicle/clack/modern/part_3.wav",
				"vehicle/clack/modern/part_4.wav",
				"vehicle/clack/modern/part_5.wav",
				"vehicle/clack/modern/part_6.wav",
				"vehicle/clack/modern/part_7.wav",
				"vehicle/clack/modern/part_8.wav",
				"vehicle/clack/modern/part_9.wav",
				"vehicle/clack/modern/part_10.wav"
			},
			refDist = 15.0
		},
		horn = { names = { "vehicle/hst/2_tone.mp3" }, refDist = 50.0 },
		openDoors = { names = { "vehicle/142/142_doors_open.wav" }, refDist = 25.0 },
		closeDoors = { names = { "vehicle/142/142_doors_close.wav" }, refDist = 25.0 }
	},

	updateFn = function (input)
		local axleRefWeight = 1.0
		
		return {
			tracks = {
				{ 
					gain = soundeffectsutil.sampleCurve({ { .1, .0 }, { .2, .5 }, { .4, 1.0 } }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { .1, 0.8 }, {0.2, 1.0}, {0.6, 1.0}, {0.65, 0.7}, }, input.speed01)
				},
				{ 
					gain = soundeffectsutil.sampleCurve({ { .00, 1.0 }, { .2, .5 }, { .4, .0} }, input.power01),
					pitch = soundeffectsutil.sampleCurve({ { .0, 1.0 }, { 1.0, 0.8 } }, input.speed01)
				},
				soundeffectsutil.brake(input.speed, input.brakeDecel, 1.0),
				soundeffectsutil.squeal(input.speed, input.sideForce*2, input.maxSideForce)
			},
			events = {
				clacks = soundeffectsutil.clacks(input.speed, input.weight, input.numAxles, axleRefWeight, input.gameSpeedUp),
				horn = { gain = 1.0, pitch = 1.0 },
				openDoors = { gain = 5.0, pitch = 2.0},
				closeDoors = { gain = 5.0, pitch = 2.0},
			}
		}
	end
}
end