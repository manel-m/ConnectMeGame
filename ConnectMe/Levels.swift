//
//  Levels.swift
//  MovingBlocks
//
//  Created by Manel matougui on 10/29/19.
//  Copyright © 2019 Manel matougui. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class Levels {
    // random seed 1573399154514
    static let levels: [String] = [
       "_________B__B____________",
       "__OBB__O_________________",
       "_FFY____G____Y__G_____F___",
        "YBG____Y_BG_G_________YYG",
       "FFF___FYBB_Y__B_Y_BB___BY",
       "FFO__FF___FFOO__GWOO_OWG_",
       "__Y__OWO_GWY___W_G__W__OG",
        "_RB_OR_ROB_R_OB___RO___OR",
       "W_WWY____W_BRYWR__B_Y__FF",
        "__RRRWW__W_BB_RF_R_RFFRR_",
        "_WGP___GPWR_W_BRB_PWBW__R",/////2
         "WYY___YYY_RWY__R_FY__FFFY", /////3
        "GO__O_O_O_G___OGO_FFG_OFF",/////67
         "ORYRW___WR_WW_W_Y__RR_RWO", /////4
        "FF__P_O__OO_YPW_WW___Y_YP", /////5
        "__PP__R__YYYY__PPYYRYRPRP", /////6
        "W_OBBW_O__BG_WG____OO_GBB", /////8
        "_W___WYYP_WPPY___WGRR_GWP", /////9
        "_YRFFWRYR_R__YRWRYRW____Y", /////10
        "FFBRGFF_BRB_B_GB____B_BR_", /////12
        "__G__BP_G_YPB___GRPYBB_RB", /////13
        "_BO______OBY_ORR_OO_BO_OY",/////19
        "BWWB_W____P____BBB__P__P_",/////81
        "BBOY__O_Y___PG_P_GGOY__Y_",/////20
        "FFPPP_F_P_GY_Y_PGG_G_G__Y",/////21
        "RRRWRRR__R_____WRBFWB_FFF",/////22
        "OY___FF_YGFFG_O__O_G_GOG_",/////23
         "POO_OYR_R_P_PR__RO__OYYPP",/////24
        "R__FFYWYWOOW___RY_W__WW_Y",/////26
        "___OO__B_GWBYGB_WWBB__Y_W",/////28
        "_B__B__B_GWW_B_WFFWG_F_G_",/////29
        "BR__ORB____GB_GG_GGRO_ORG",/////30
        "YYWBBWPY_B_WY__B___WBYPB_",/////32
        "PRPBBB__RR__F_O_PF_BB__O_",/////33
        "_WBB_WBB__PBPBWPWWPP_PP__",/////35
        "OGGG_PW_PO__WGGP__W_PGG_P",/////36
        "FFF_BFFFR_PBF_R__B_BP__RP",/////37
        "P_GPWG__BB_Y__WBWW_B_Y_WW",/////39
        "WYWOW_B__B___B___P_OOYBYP",/////40
        "__PW__WR_RWRPPP_WP_WWWPR_",/////41
        "YP_P_PWRW___WWW_PYRPPW___",/////43
        "_ORPRO____OPPPO_R____P___",/////44
        "_OP____R_P__OORWWYRYYW___",/////45
        "WY__WBWO_B___O_Y__YOOBYB_",/////46
        "OGGGYY_Y_G__G_GGGG__OYGO_",/////47
        "_PBBOPPBOP___FF___FF__BFF",/////48
        "_BBOBPBP__PO__PB___PBBBPB",/////49
        "GP_O____PO___GWFOP__FWPWG",/////52
        "_RFFG___RWGGP__RW____P__G",/////53
        "__RY_P_R_P_YPYPPYPPY_R__R",/////56
        "BY_FFBYYBF_Y_Y_YY__YOO__Y",/////59
        "B_Y_O_OGYGGG__BO_OYF____F",/////60
        "__Y_P_YR__PR__YYOR_O_RORR",/////61
        "YWO_YOY_YYOW_YO__F___FF__",/////64
        "Y_B_B_RYPP_YR____BPFBBRFF",/////65
         "_GWGGYWGY_GR__RYOYO______",/////68
        "RBR_B_OBBB__OBO__R_O__B_B",/////69
        "RRWFFRR_O_O____WRRWORR_O_",/////70
        "B______PWB_PW_PF_W__FFFFW",/////71
        "OFFFFRRFFFO_RO____O__RRO_",/////73
        "GP_OBO__RBG_P_P_P_P_RO__R",/////74
        "_GW_____PGPG_G_PWPWG_P__G",/////75
         "B_OGPP_O__O_GBBOOG_B__GO_",/////77
         "GRRW____B_R_WBGG_GWGWGW__",/////79
        "BWWB_W____P____BBB__P__P_",/////81
        "YP_P_PY__F__WFF_PYYF_WW_W",/////82
        "_YPRP____F___RFBY__F_RBFF",/////83
        "_RYRY_R_YR_R___YFF_PRFF_P",/////84
        "O_GRO__BOOO_BRB_B__RBBOG_",/////85
        "__PWB_BBPBBW__P___W_WWBWW",/////86
        "POOB_BGBP_BBB_O__GP___G_O",/////87
        "WWG_YGG__Y__W_Y_WO_YOG_YY",/////88
        "RO_G_WR__WW_R__WRO__G_G_G",/////90
        "OP_FFRORFR_______PPPRPPO_",/////91
        "YY___G_B__WFF__BB_WWYYYG_",/////92
        "W_OP_R_WY__YPRY_OO_R__PPW",/////93
        "WB__B_BBRR__B_RR_R_W__WB_",/////95
        "O____B_YYY______Y_B__OYBO",/////97
        "_G_OYO_Y_F__OGFR_R__R_R_G",/////98
        "O___PO__W_O_GOWWRRP___GPR",/////99
        "___BPBGFPRPGFG_R_B__R__BB",/////100
         "P_Y_O__ROWP__W_W_Y_PW_WWR",/////17
         "_Y_BYR_PRYYBY_BY___PR_PRY", /////14
          "OYF__O_F_OG_F___G_RRG_RYO", /////11
        "_PYBBOBYO__P_YBOYO_Y_YO__",/////34
         "Y_B_BY_R__YPPYBB_YYYYR__R",/////31
         "WWB_GGBYY_W_GGG_W___W_GYW",/////55
          "F_OGGFFGO_F_GWG_B_W_B_B__",/////50
        "B__FFB_GPB__Y__PYPPPGB_P_",/////76
         "RR_YPYR_G_Y__R_R____FFRGP",/////78
        "WYG_GWGY___G_WF___FFYW_FF",/////27
         "__RY_O__O__OOOROFFRY_F_R_",/////72
        "RRWFFRR_O_O____WRRWORR_O_",/////70
         "_W__GBWGGG_W__BB___OWRRBO",/////96
        "R_G_PPR_P_R_FFGR_RFF___PP",/////57
          "_OO_WRY_WO_W____OROY_FF_R",/////58
          "__WFFP_FFFWB_F_Y__BP_Y_WP",/////42
          "_WOOW_BRWO___O_RWB_WOWOOR", /////16
          "P_PP___R_G_WRG_WPRPGPP_RG",/////94
           "B__ORBRO_R__BGG_G_B_BGBRG",/////66
    ]

    static func loadLevel(grid:Grid, str: String) {
        let chars = Array(str)
        var idx = 0
        for row in 0...4 {
            for col in 0...4 {
                let char = chars[idx]
                if (char == "F") {
                    grid.addBlock(row: row, col: col, color: "black")
                } else if (char == "O") {
                    grid.addBlock(row: row, col: col, color: "orange")
                } else if (char == "B") {
                    grid.addBlock(row: row, col: col, color: "blue")
                } else if (char == "W") {
                    grid.addBlock(row: row, col: col, color: "white")
                } else if (char == "Y") {
                    grid.addBlock(row: row, col: col, color: "yellow")
                } else if (char == "P") {
                    grid.addBlock(row: row, col: col, color: "purple")
                } else if (char == "G") {
                    grid.addBlock(row: row, col: col, color: "green")
                } else if (char == "R") {
                    grid.addBlock(row: row, col: col, color: "red")
                }
                idx += 1
            }
        }
    }

}
