//-----------------------------------------------------------------------//
//                       EFRAMEWORK LIMITED LICENSE                      //
//                            Version 2023.10                            //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
//   LICENSED-USER is permitted to refer this license document.          //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import * as path from "path"
import { Helper } from "./Helper"
import { Const } from "./Const"

export class After {
    public static async Process(time: number, rev: string): Promise<string> {
        return new Promise<string>((resolve, reject) => {
            try {
                let workspace = Const.WORKSAPCE
                let library = path.join(workspace, "Library")
                let content = ""
                let push_patch_ret = path.join(library, "push_patch.txt")
                let build_patch_ret = path.join(library, "build_patch.txt")
                let push_archive_ret = path.join(library, "push_archive.txt")
                let build_archive_ret = path.join(library, "build_archive.txt")
                if (Helper.HasFile(push_patch_ret)) content += Helper.OpenText(push_patch_ret)
                if (Helper.HasFile(build_patch_ret)) content += Helper.OpenText(build_patch_ret)
                if (Helper.HasFile(push_archive_ret)) content += Helper.OpenText(push_archive_ret)
                if (Helper.HasFile(build_archive_ret)) content += Helper.OpenText(build_archive_ret)
                if (content == "") {
                    reject("nil build ret")
                } else {
                    let stime: string
                    time = Helper.GetTimestamp() - time
                    if (time < 0) stime = "NaN";
                    else if (time < 60) stime = Helper.Format("{0}s", time)
                    else if (time < 3600) stime = Helper.Format("{0}min {1}s", (time / 60).toFixed(0), time % 60)
                    else stime = Helper.Format("{0}h {1}min {2}s", (time / 3600).toFixed(0), (time % 3600 / 60).toFixed(0), time % 60)
                    let bname = "[Build/Name]"
                    if (process.env.BASH_ARCH_ENTRY) bname = process.env.BASH_ARCH_ENTRY.split("@")[0]
                    content =
                        bname + "\n" +
                        "[Build/User]@" + process.env.BUILD_USER + "\n" +
                        "[Build/Took]" + stime + "\n" +
                        "[Build/Latest]" + rev + "\n" +
                        "[Build/Session]" + process.env.BUILD_URL + "\n" +
                        content
                    resolve(content)
                }
            } catch (err) { reject(err) }
        })
    }
}