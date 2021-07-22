{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 381.0, 78.0, 975.0, 456.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-209",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 618.25, 147.0, 190.0, 20.0 ],
					"text" : "Base36 Encoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.25, 147.0, 153.0, 20.0 ],
					"text" : "Base36 Decoder (simple)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 111.0, 147.0, 239.25, 20.0 ],
					"text" : "Base36 Decoder (complex)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.0, 87.0, 150.0, 20.0 ],
					"text" : "Base36 Encoded"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.25, 255.0, 65.0, 22.0 ],
					"text" : "helloworld"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 405.25, 213.0, 40.0, 22.0 ],
					"text" : "itoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 405.25, 181.0, 78.0, 22.0 ],
					"text" : "vexpr $i1+87"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 672.75, 202.0, 40.0, 22.0 ],
					"text" : "atoi"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 621.25, 387.0, 172.0, 22.0 ],
					"text" : "17 14 21 21 24 32 24 27 21 13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 673.25, 349.0, 120.0, 22.0 ],
					"text" : "zl group"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 672.75, 240.0, 120.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 877.25, 278.0, 37.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.75, 275.0, 25.0, 22.0 ],
					"text" : "iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.75, 176.0, 93.0, 22.0 ],
					"text" : "HELLOWORLD"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 36,
						"data" : [ 							{
								"key" : 48,
								"value" : [ 0 ]
							}
, 							{
								"key" : 49,
								"value" : [ 1 ]
							}
, 							{
								"key" : 50,
								"value" : [ 2 ]
							}
, 							{
								"key" : 51,
								"value" : [ 3 ]
							}
, 							{
								"key" : 52,
								"value" : [ 4 ]
							}
, 							{
								"key" : 53,
								"value" : [ 5 ]
							}
, 							{
								"key" : 54,
								"value" : [ 6 ]
							}
, 							{
								"key" : 55,
								"value" : [ 7 ]
							}
, 							{
								"key" : 56,
								"value" : [ 8 ]
							}
, 							{
								"key" : 57,
								"value" : [ 9 ]
							}
, 							{
								"key" : 65,
								"value" : [ 10 ]
							}
, 							{
								"key" : 66,
								"value" : [ 11 ]
							}
, 							{
								"key" : 67,
								"value" : [ 12 ]
							}
, 							{
								"key" : 68,
								"value" : [ 13 ]
							}
, 							{
								"key" : 69,
								"value" : [ 14 ]
							}
, 							{
								"key" : 70,
								"value" : [ 15 ]
							}
, 							{
								"key" : 71,
								"value" : [ 16 ]
							}
, 							{
								"key" : 72,
								"value" : [ 17 ]
							}
, 							{
								"key" : 73,
								"value" : [ 18 ]
							}
, 							{
								"key" : 74,
								"value" : [ 19 ]
							}
, 							{
								"key" : 75,
								"value" : [ 20 ]
							}
, 							{
								"key" : 76,
								"value" : [ 21 ]
							}
, 							{
								"key" : 77,
								"value" : [ 22 ]
							}
, 							{
								"key" : 78,
								"value" : [ 23 ]
							}
, 							{
								"key" : 79,
								"value" : [ 24 ]
							}
, 							{
								"key" : 80,
								"value" : [ 25 ]
							}
, 							{
								"key" : 81,
								"value" : [ 26 ]
							}
, 							{
								"key" : 82,
								"value" : [ 27 ]
							}
, 							{
								"key" : 83,
								"value" : [ 29 ]
							}
, 							{
								"key" : 84,
								"value" : [ 29 ]
							}
, 							{
								"key" : 85,
								"value" : [ 30 ]
							}
, 							{
								"key" : 86,
								"value" : [ 31 ]
							}
, 							{
								"key" : 87,
								"value" : [ 32 ]
							}
, 							{
								"key" : 88,
								"value" : [ 33 ]
							}
, 							{
								"key" : 89,
								"value" : [ 34 ]
							}
, 							{
								"key" : 90,
								"value" : [ 35 ]
							}
 ]
					}
,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 672.75, 315.0, 95.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll ENCODING"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 414.0, 69.0, 20.0 ],
					"text" : "MIDI Notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 133.25, 384.0, 185.0, 22.0 ],
					"text" : "A0 E0 E1 E1 A1 B2 A1 D2 E1 D0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 299.25, 352.0, 51.0, 22.0 ],
					"text" : "zl group"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.0, 278.0, 55.0, 22.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-200",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 384.0, 93.0, 22.0 ],
					"text" : "HELLOWORLD"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 95.0, 352.0, 148.0, 22.0 ],
					"text" : "regexp \" \" @substitute %0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.0, 319.0, 124.0, 22.0 ],
					"text" : "zl group"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.0, 178.0, 123.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 200.0, 213.0, 37.0, 22.0 ],
					"text" : "zl len"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 95.0, 213.0, 25.0, 22.0 ],
					"text" : "iter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.25, 85.0, 172.0, 22.0 ],
					"text" : "17 14 21 21 24 32 24 27 21 13"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 36,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 0, "-" ]
							}
, 							{
								"key" : 1,
								"value" : [ 1, "-" ]
							}
, 							{
								"key" : 2,
								"value" : [ 2, "-" ]
							}
, 							{
								"key" : 3,
								"value" : [ 3, "-" ]
							}
, 							{
								"key" : 4,
								"value" : [ 4, "-" ]
							}
, 							{
								"key" : 5,
								"value" : [ 5, "-" ]
							}
, 							{
								"key" : 6,
								"value" : [ 6, "-" ]
							}
, 							{
								"key" : 7,
								"value" : [ 7, "-" ]
							}
, 							{
								"key" : 8,
								"value" : [ 8, "-" ]
							}
, 							{
								"key" : 9,
								"value" : [ 9, "-" ]
							}
, 							{
								"key" : 10,
								"value" : [ "A", "A0" ]
							}
, 							{
								"key" : 11,
								"value" : [ "B", "B0" ]
							}
, 							{
								"key" : 12,
								"value" : [ "C", "C0" ]
							}
, 							{
								"key" : 13,
								"value" : [ "D", "D0" ]
							}
, 							{
								"key" : 14,
								"value" : [ "E", "E0" ]
							}
, 							{
								"key" : 15,
								"value" : [ "F", "F0" ]
							}
, 							{
								"key" : 16,
								"value" : [ "G", "G0" ]
							}
, 							{
								"key" : 17,
								"value" : [ "H", "A0" ]
							}
, 							{
								"key" : 18,
								"value" : [ "I", "B0" ]
							}
, 							{
								"key" : 19,
								"value" : [ "J", "C1" ]
							}
, 							{
								"key" : 20,
								"value" : [ "K", "D1" ]
							}
, 							{
								"key" : 21,
								"value" : [ "L", "E1" ]
							}
, 							{
								"key" : 22,
								"value" : [ "M", "F1" ]
							}
, 							{
								"key" : 23,
								"value" : [ "N", "G1" ]
							}
, 							{
								"key" : 24,
								"value" : [ "O", "A1" ]
							}
, 							{
								"key" : 25,
								"value" : [ "P", "B1" ]
							}
, 							{
								"key" : 26,
								"value" : [ "Q", "C2" ]
							}
, 							{
								"key" : 27,
								"value" : [ "R", "D2" ]
							}
, 							{
								"key" : 28,
								"value" : [ "S", "E2" ]
							}
, 							{
								"key" : 29,
								"value" : [ "T", "F2" ]
							}
, 							{
								"key" : 30,
								"value" : [ "U", "G2" ]
							}
, 							{
								"key" : 31,
								"value" : [ "V", "A2" ]
							}
, 							{
								"key" : 32,
								"value" : [ "W", "B2" ]
							}
, 							{
								"key" : 33,
								"value" : [ "X", "C3" ]
							}
, 							{
								"key" : 34,
								"value" : [ "Y", "F3" ]
							}
, 							{
								"key" : 35,
								"value" : [ "Z", "G3" ]
							}
 ]
					}
,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 95.0, 244.0, 75.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"precision" : 6
					}
,
					"text" : "coll BASE36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.0, 63.0, 49.0, 22.0 ],
					"text" : "route /a"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 13.0, 104.0, 22.0 ],
					"text" : "udpreceive 49162"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 140.5, 309.0, 308.75, 309.0 ],
					"source" : [ "obj-199", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"source" : [ "obj-201", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 1 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"midpoints" : [ 209.5, 249.5, 340.75, 249.5 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-200", 1 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-201", 0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"order" : 2,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
