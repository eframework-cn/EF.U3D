//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import * as https from "https"
import { Helper } from "./Helper"

export class Notify {
    public static async Process(content: string): Promise<void> {
        return new Promise<void>(async (resolve) => {
            let token = process.env.BASH_YZJ_TOKEN
            let tokens: string[] = Helper.IsNullOrEmpty(token) ? null : token.split(",")
            Helper.Log("[Notify]token: \n{0}", token)
            Helper.Log("[Notify]content: \n{0}", content)
            if (tokens == null || tokens.length == 0) {
                Helper.Log("[Notify]invalid token")
                resolve()
            } else {
                let postData = Buffer.from(JSON.stringify({ content: content }))
                await Promise.all(tokens.map(token => {
                    return new Promise<void>(resolve2 => {
                        let options = {
                            hostname: "www.yunzhijia.com",
                            port: 443,
                            path: "/gateway/robot/webhook/send?yzjtype=0&yzjtoken=" + token,
                            method: "POST",
                            headers: {
                                "Content-Type": "application/json;charset=utf-8",
                                "Content-Length": postData.length
                            }
                        }

                        let req = https.request(options, (res) => {
                            Helper.Log("[Notify][{0}]statusCode: {1}", token, res.statusCode)
                            let data = ""
                            res.on("data", (chunk) => data += chunk.toString())
                            res.on("end", () => {
                                Helper.Log("[Notify][{0}]resp: {1}", token, data)
                                resolve2()
                            })
                        })

                        req.on("error", (e) => {
                            Helper.LogError("[Notify][{0}]err: {1}", token, e);
                            resolve2()
                        })
                        req.write(postData)
                        req.end()
                    })
                }))
                resolve()
            }
        })
    }
}