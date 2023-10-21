import { After } from "../libs/After"
import { Before } from "../libs/Before"
import { Const } from "../libs/Const"
import { Crash } from "../libs/Crash"
import { Helper } from "../libs/Helper"
import { Notify } from "../libs/Notify"
import { Unity } from "../libs/Unity"

async function main() {
    let time = Helper.GetTimestamp()
    try {
        let rev = await Before.Process()
        await Unity.Process(Const.BUILD_PATCH, "Default", "Windows")
        await Unity.Process(Const.PUSH_PATCH, "Default", "Windows")
        await Unity.Process(Const.BUILD_PATCH, "Default", "Android")
        await Unity.Process(Const.PUSH_PATCH, "Default", "Android")
        let msg = await After.Process(time, rev)
        if (msg) await Notify.Process(msg)
        process.exit(0)
    } catch (err) {
        Helper.LogError(err)
        await Crash.Process(time, err)
        process.exit(1)
    }
}
main()