require "tableutil"

function data()
return {
	info = {
	minorVersion = 0,
	severityAdd = "NONE",
	severityRemove = "NONE",
	name = _("British Rail Class 43 HST"),
	description = _("Intercity Swallow liveried British High Speed Trains composed of Class 43 diesel locomotives and Mk3 coaching stock. This mod comes with two variants, the standard 8x Mk3 Coaches topped and tailed with 2x Class 43s (220m long) and the shortend version comprising 5x Mk3 Coaches topped and tailed with 2x Class 43s (151m long and in a formation sometimes used by Cross Country today).\nThe Mk3 coaches will not be released on their own as the models are a little too small - this is not noticable when they are kept in set formations but would be if mixed with other locomotives.\n \nUnlocked 1975-1983\nMaximum Speed 201kp/h\nCapacity 76 per Mk3 coach\nLifespan 45 years\n \nModels by mfurseman for Train Fever\nConverted to Transport Fever by 9th Wonder with thanks to killakanz"),
	authors = { -- OPTIONAL one or multiple authors
		{
			name = "9th Wonder", -- author name
			role = "CREATOR", -- OPTIONAL "CREATOR", "CO_CREATOR", "TESTER" or "BASED_ON" or "OTHER"
			tfnetId = "" -- OPTIONAL train-fever-net author id
		},		
		{
		name = "mfurseman", -- author name
		role = "BASED_ON", -- OPTIONAL "CREATOR", "CO_CREATOR", "TESTER" or "BASED_ON" or "OTHER"
		tfnetId = "" -- OPTIONAL train-fever-net author id
		}
	},
	tags = { "locomotive", "diesel", "vehicle", "train", "passenger", "set", "British", "Europe" },
	},
}
end