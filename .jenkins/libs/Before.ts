//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import * as path from "path"
import * as child_process from "child_process"
import { Helper } from "./Helper"
import { Const } from "./Const"

export class Before {
    public static async Process(): Promise<string> {
        return new Promise<string>((resolve, reject) => {
            try {
                let workspace = Const.WORKSAPCE
                let library = path.join(workspace, "Library")
                if (!Helper.HasDirectory(library)) Helper.CreateDirectory(library)
                let push_patch_ret = library + "/push_patch.txt"
                let build_patch_ret = library + "/build_patch.txt"
                let push_archive_ret = library + "/push_archive.txt"
                let build_archive_ret = library + "/build_archive.txt"
                if (Helper.HasFile(push_patch_ret)) Helper.DeleteFile(push_patch_ret)
                if (Helper.HasFile(build_patch_ret)) Helper.DeleteFile(build_patch_ret)
                if (Helper.HasFile(push_archive_ret)) Helper.DeleteFile(push_archive_ret)
                if (Helper.HasFile(build_archive_ret)) Helper.DeleteFile(build_archive_ret)
                let rev = child_process.execSync("git rev-parse HEAD", { cwd: workspace }).toString().trim()
                if (rev.length > 8) rev = rev.substring(0, 8)
                let branch = child_process.execSync("git rev-parse --abbrev-ref HEAD", { cwd: workspace }).toString().trim()
                let ret = branch + ":" + rev
                Helper.Log("[Before]rev: {0}", ret)
                resolve(ret)
            } catch (err) { reject(err) }
        })
    }
}