//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import { Exec } from "./Exec"
import { Const } from "./Const"
import { Helper } from "./Helper"
import * as path from "path"

export class Unity {
    public static async Process(method: string, channel: string, runtime: string): Promise<number> {
        let prefs = process.env.BASH_ARCH_PREFS
        let ver = process.env.BASH_ARCH_VER
        let domain = process.env.BASH_ARCH_DOMAIN
        let target = runtime
        if (runtime == "Windows") target = "Win64"
        let cwd = Const.WORKSAPCE
        let uver = path.join(cwd, "ProjectSettings/ProjectVersion.txt")
        let ukey = "Unity-"
        if (Helper.HasFile(uver)) {
            let strs = Helper.OpenText(uver).split("\n")
            if (strs.length > 0) {
                ukey += strs[0].replace("m_EditorVersion:", "").replace(" ", "").trim()
            }
        }
        let uexe = process.env[ukey]
        if (uexe == null || uexe == "") throw new Error("missing env: " + ukey)
        let cmd = "\"" + uexe + "\"" + " -quit -batchmode -silent-crashes -nographics -projectPath " + "\"" + cwd + "\"" +
            (method ? " -executeMethod " + method : "") +
            (channel ? " -channel " + channel : "") +
            (runtime ? " -runtime " + runtime : "") +
            (target ? " -buildTarget " + target : "") +
            (prefs ? " -prefs " + prefs : "") +
            (ver ? " -ver " + ver : "") +
            (domain ? " -domain " + domain : "")
        return Exec.Process(cmd, cwd)
    }
}