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

export class Const {
    public static readonly BUILD_PATCH: string = "EP.U3D.EDITOR.ARCH.BashArch.BuildPatch"
    public static readonly PUSH_PATCH: string = "EP.U3D.EDITOR.ARCH.BashArch.PushPatch"
    public static readonly BUILD_ARCHIVE: string = "EP.U3D.EDITOR.ARCH.BashArch.BuildArchive"
    public static readonly PUSH_ARCHIVE: string = "EP.U3D.EDITOR.ARCH.BashArch.PushArchive"

    public static get WORKSAPCE() {
        let workspace = process.env.WORKSPACE == null ? path.resolve("./") : path.resolve(process.env.WORKSPACE)
        return workspace
    }
}