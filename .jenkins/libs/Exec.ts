//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import * as child_process from "child_process"
import { Helper } from "./Helper"
import { Const } from "./Const"

export class Exec {
    public static async Process(cmd: string, cwd?: string, env?: any): Promise<number> {
        return new Promise<number>((resolve, reject) => {
            if (cwd == null) cwd = Const.WORKSAPCE
            Helper.Log("[Exec]cwd: {0}", cwd)
            Helper.Log("[Exec]cmd: {0}", cmd)
            let err = null
            let proc = child_process.exec(cmd, Helper.ExecOpt(cwd, env), (error, stdout, stderr) => {
                err = error
                if (error) console.error(error)
                if (process.env.VSCODE_INSPECTOR_OPTIONS) {
                    if (stdout) console.log(stdout)
                    if (stderr) console.error(stderr)
                }
            })
            if (process.env.VSCODE_INSPECTOR_OPTIONS == null) {
                proc.stderr.pipe(process.stderr)
                proc.stdout.pipe(process.stdout)
            }
            proc.on("close", (code) => code == 0 ? resolve(code) : reject(err))
        })
    }
}