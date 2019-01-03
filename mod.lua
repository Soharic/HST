require "tableutil"

function data()
return {
	info = {
	minorVersion =  0,
	severityAdd = "NONE",
	severityRemove = "NONE",
	name = _("British Rail Class 43 HST"),
	description = _("The British High Speed Train, composed of 2x Class 43 diesel locomotives and 4-9x Mk3 coaching stock. This mod contains several version across multiple years from 1975 to present.\n \nModels by mfurseman for Train Fever\nConverted to Transport Fever by Soharic\nLiveries by ThisIsAUsername\nThanks to killakanz"),
	authors = { -- OPTIONAL one or multiple authors
		{
			name = "9th Wonder", -- author name
			role = "CREATOR", -- OPTIONAL "CREATOR", "CO_CREATOR", "TESTER" or "BASED_ON" or "OTHER"
			tfnetId = "26464" -- OPTIONAL train-fever-net author id
		},		
		{
			name = "mfurseman",
			role = "BASED_ON",
			tfnetId = ""
		},
		{
			name = "ThisIsAUsername",
			role = "OTHER",
			tfnetId = ""
		}
	},
	tags = { "locomotive", "diesel", "vehicle", "train", "passenger", "set", "British", "Europe" },
	},
}
end