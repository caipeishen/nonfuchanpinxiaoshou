<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"农户管理",
			            "menuJump":"列表",
			            "tableName":"shangjia"
			        }
			    ],
			    "menu":"农户管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"农产品信息管理",
                        "menuJump":"列表",
                        "tableName":"goods"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"农产品信息评价管理",
                        "menuJump":"列表",
                        "tableName":"goodsCommentback"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"农产品信息订单管理",
                        "menuJump":"列表",
                        "tableName":"goodsOrder"
                    }
                ],
                "menu":"农产品信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻信息管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"新闻信息管理"
            }
			,{
			      "child":[
			          {
			              "buttons":[
			                  "新增",
			                  "修改",
			                  "删除"
			              ],
			              "menu":"农副产品管理",
			              "menuJump":"列表",
			              "tableName":"dictionaryGoods"
			          }
			          ,
			          {
			              "buttons":[
			                  "新增",
			                  "修改",
			                  "删除"
			              ],
			              "menu":"新闻类型管理",
			              "menuJump":"列表",
			              "tableName":"dictionaryNews"
			          }
			      ],
			      "menu":"基础数据管理"
			  }
			,{
				"child":[
					{
						"buttons":[
							"新增",
							"修改",
							"删除"
						],
						"menu":"轮播图管理",
						"menuJump":"列表",
						"tableName":"config"
					}
				],
				"menu":"轮播图信息"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"农产品信息管理",
	                    "menuJump":"列表",
	                    "tableName":"goods"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "修改"
	                    ],
	                    "menu":"农产品信息评价管理",
	                    "menuJump":"列表",
	                    "tableName":"goodsCommentback"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
							"报表"
	                    ],
	                    "menu":"农产品信息订单管理",
	                    "menuJump":"列表",
	                    "tableName":"goodsOrder"
	                }
	            ],
	            "menu":"农产品信息管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"新闻信息管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"新闻信息管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"农户",
	    "tableName":"shangjia"
	}
];

var hasMessage = '';
