---@diagnostic disable: undefined-field

local parse = require("present")._parse_slides
describe("present.parse_slide", function()
	it("should parse an empty file", function()
		assert.are.same({
			slides = {
				{
					title = "",
					body = {},
				},
			},
		}, parse({}))
	end)

	it("should parse a file with one slide", function()
		assert.are.same(
			{
				slides = {
					{
						title = "# This is the first slide",
						body = { "This is the body" },
					},
				},
			},
			parse({
				"# This is the first slide",
				"This is the body"
			})
		)
	end)
end)
