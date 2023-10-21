//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import { Helper } from "./Helper"
import { Notify } from "./Notify"

export class Crash {
    public static async Process(time: number, err: Error): Promise<void> {
        return new Promise<void>(async (resolve) => {
            try {
                let stime: string
                time = Helper.GetTimestamp() - time
                if (time < 0) stime = "NaN";
                else if (time < 60) stime = Helper.Format("{0}s", time)
                else if (time < 3600) stime = Helper.Format("{0}min {1}s", (time / 60).toFixed(0), time % 60)
                else stime = Helper.Format("{0}h {1}min {2}s", (time / 3600).toFixed(0), (time % 3600 / 60).toFixed(0), time % 60)
                let bname = "[Build/Name]"
                if (process.env.BASH_ARCH_ENTRY) bname = process.env.BASH_ARCH_ENTRY.split("@")[0]
                let msg =
                    bname + "\n" +
                    "[Build/User]@" + process.env.BUILD_USER + "\n" +
                    "[Build/Took]" + stime + "\n" +
                    "[Build/Session]" + process.env.BUILD_URL + "\n" +
                    "[Session/Error]" + err
                await Notify.Process(msg)
            } catch (err) { Helper.LogError("[Crash]{0}", err) } finally { resolve() }
        })
    }
}