//-----------------------------------------------------------------------//
//                     GNU GENERAL PUBLIC LICENSE                        //
//                        Version 2, June 1991                           //
//                                                                       //
// Copyright (C) EFramework, https://eframework.cn, All rights reserved. //
// Everyone is permitted to copy and distribute verbatim copies          //
// of this license document, but changing it is not allowed.             //
//                   SEE LICENSE.md FOR MORE DETAILS.                    //
//-----------------------------------------------------------------------//

import * as libfs from "fs"
import * as libpath from "path"
import * as cp from "child_process"
import * as crypto from "crypto"

export class Helper {
    public static HOOKs: any = {}
    public static Empty: string = ""

    public static ISNULL(o) { return o == null || o == undefined }

    public static ISVALUETYPE(o): boolean {
        if (Helper.ISNULL(o)) {
            return false
        } else {
            if (typeof (o) == "number") {
                return true
            } else if (typeof (o) == "string") {
                return true
            } else if (typeof (o) == "boolean") {
                return true
            } else {
                return false
            }
        }
    }

    public static ISFREETYPE(o): boolean {
        if (Helper.ISNULL(o) || Helper.ISVALUETYPE(o) || Helper.ISFUNCTION(o)) {
            return false
        } else {
            return true
        }
    }

    public static ISFUNCTION(o): boolean {
        if (Helper.ISNULL(o)) {
            return false
        } else if (Helper.ISVALUETYPE(o)) {
            return false
        } else if (typeof (o) == "function") {
            for (var k in o) {
                if (k != "__proto__" && o.hasOwnProperty(k)) {
                    if (typeof (o[k]) == "function") {
                        return false
                    }
                }
            }
            return true
        } else {
            return false
        }
    }

    public static ISMETAFIELD(o, v): boolean {
        if (o != null && v != null) {
            for (var k in o) {
                if (o[k] == v) {
                    return false
                }
            }
            for (var k in o.prototype) {
                try {
                    if (o.prototype[k] == v) {
                        return true
                    }
                } catch { }
            }
        }
        return false
    }

    public static KEY(o, v): string {
        if (o != null && v != null) {
            for (var k in o) {
                if (o[k] == v) {
                    return k
                }
            }
            for (var k in o.prototype) {
                try {
                    if (o.prototype[k] == v) {
                        return k
                    }
                } catch { }
            }
        }
        return null
    }

    public static VALUE(o, k): any {
        if (o != null && k != null) {
            var r = o[k]
            if (Helper.ISNULL(r) && o.prototype != null) {
                r = o.prototype[k]
            }
            return r
        } else {
            return null
        }
    }

    public static BIND(obj, id: number, func: Function, that: any = null, once: boolean = false) {
        if (obj != null && func != null) {
            var temp = obj[id]
            if (temp == null) {
                temp = new Array()
                obj[id] = temp
            }
            var has = false
            for (var i = 0; i < temp.length; i++) {
                var ret = temp[i]
                if (ret.Func == func) {
                    has = true
                    break
                }
            }
            if (has == false) {
                temp.push({ Func: func, Once: once, That: that })
            }
        }
    }

    public static UNBIND(obj, id: number, func: Function) {
        if (obj != null && func != null) {
            var temp: Array<any> = obj[id]
            if (temp != null) {
                for (var i = 0; i < temp.length; i++) {
                    var ret = temp[i]
                    if (ret.Func == func) {
                        temp.splice(i, 1)
                        break
                    }
                }
            }
        }
    }

    public static UNBINDALL(obj, id: number) {
        if (obj != null) {
            var temp = obj[id]
            if (temp != null) {
                obj[id] = null
            }
        }
    }

    public static NOTIFY(obj, id: number, ...args) {
        if (obj != null) {
            var temp: Array<any> = obj[id]
            if (temp != null) {
                for (var i = 0; i < temp.length; i++) {
                    var ret = temp[i]
                    if (ret.Func != null) {
                        ret.Func.apply(ret.That != null ? ret.That : obj, args)
                        if (ret.Once) {
                            temp.splice(i, 1)
                            i--
                        }
                    }
                }
            }
        }
    }

    public static INVOKE(obj, k: string, ...args) {
        if (obj != null && k != null) {
            var func = obj[k]
            if (func != null && typeof (func) == "function") {
                return func.apply(obj, args)
            }
        }
    }

    public static EXIST<T>(arr: T[], condition: (item: T) => boolean): boolean {
        if (arr && condition) {
            for (let i = 0; i < arr.length; i++) {
                if (condition(arr[i])) return true
            }
        }
        return false
    }

    public static FIND<T>(list: T[], condition: (item: T) => boolean): T {
        if (list && condition) {
            for (let index = 0; index < list.length; index++) {
                const element = list[index];
                if (condition(element)) {
                    return element
                }
            }
        }
        return null
    }

    public static FindIndex<T>(list: T[], condition: (item: T) => boolean): number {
        if (list && condition) {
            for (let index = 0; index < list.length; index++) {
                const element = list[index];
                if (condition(element)) {
                    return index
                }
            }
        }
        return -1
    }

    public static COPY(o: any): any {
        return Helper.CLONE(o)
    }

    public static CLONE(o: any, ...filter: Array<string>): any {
        if (Helper.ISFREETYPE(o)) {
            var no: any = {}
            no.__proto__ = o.__proto__
            if (o instanceof Array) {
                no.length = o.length
            }
            for (var k in o) {
                var v = o[k]
                var skip = false
                if (filter != null && filter.length > 0) {
                    for (var i = 0; i < filter.length; i++) {
                        if (k == filter[i]) {
                            skip = true
                            break
                        }
                    }
                }
                if (skip) {
                    no[k] = v
                } else if (Helper.ISFREETYPE(v)) {
                    no[k] = Helper.COPY(v)
                }
                else {
                    no[k] = v
                }
            }
            return no
        } else {
            return o
        }
    }

    public static HOOK(ctx, from, to) {
        var ret = null
        var err = null
        if (Helper.ISNULL(ctx) == false && Helper.ISNULL(to) == false && Helper.ISFREETYPE(ctx) && typeof (to) == "function") {
            var isString = false
            if (typeof (from) == "function") {
                from = Helper.KEY(ctx, from)
            } else if (typeof (from) == "string") {
                isString = true
            } else {
                from = null
                err = "Hook failed caused by invalid arg 'from'."
            }
            if (from) {
                if (!Helper.HOOKs[ctx]) { Helper.HOOKs[ctx] = {} }
                if (!Helper.HOOKs[ctx][from]) {
                    ret = Helper.VALUE(ctx, from)
                    if (ret != null && typeof (ret) == "function") {
                        var isMetaField = Helper.ISMETAFIELD(ctx, ret)
                        if (isMetaField) {
                            ctx.prototype[from] = to
                        } else {
                            ctx[from] = to
                        }
                        Helper.HOOKs[ctx][from] = ret
                        if (Helper.HOOKs.ISMETAFIELD == null) { Helper.HOOKs.ISMETAFIELD = {} }
                        if (Helper.HOOKs.ISMETAFIELD[ctx] == null) { Helper.HOOKs.ISMETAFIELD[ctx] = {} }
                        Helper.HOOKs.ISMETAFIELD[ctx][from] = isMetaField
                    } else if (isString) {
                        ret = to
                        ctx[from] = to
                    } else {
                        err = "Hook failed caused by nil or invalid target."
                    }
                } else {
                    err = "Hook failed caused by multiple hook."
                }
            }
        } else {
            err = "Hook failed caused by invalid args."
        }
        if (err) {
            Helper.LogError(err)
        }
        return ret
    }

    public static UNHOOK(ctx, from) {
        var ret = null
        var err = null
        if (Helper.ISNULL(ctx) == false && Helper.ISFREETYPE(ctx)) {
            var isString = false
            if (typeof (from) == "function") {
                from = Helper.KEY(ctx, from)
            } else if (typeof (from) == "string") {
                isString = true
            } else {
                from = null
                err = "Unhook failed caused by invalid arg 'from'."
            }
            if (from) {
                if (Helper.HOOKs[ctx]) {
                    ret = Helper.HOOKs[ctx][from]
                    if (ret != null && typeof (ret) == "function") {
                        var isMetaField = false
                        if (Helper.HOOKs.ISMETAFIELD != null && Helper.HOOKs.ISMETAFIELD[ctx] != null) {
                            isMetaField = Helper.HOOKs.ISMETAFIELD[ctx][from]
                        }
                        if (isMetaField) {
                            ctx.prototype[from] = ret
                        } else {
                            ctx[from] = ret
                        }
                    } else if (isString) {
                        ctx[from] = null
                    } else {
                        err = "Unhook failed caused by nil or invalid target."
                    }
                    Helper.HOOKs[ctx][from] = null
                    if (Helper.HOOKs.ISMETAFIELD != null && Helper.HOOKs.ISMETAFIELD[ctx] != null) {
                        Helper.HOOKs.ISMETAFIELD[ctx][from] = null
                    }
                } else {
                    err = "Unhook failed caused by nil hook map."
                }
            }
        } else {
            err = "Unhook failed caused by invalid args."
        }
        if (err) {
            Helper.LogError(err)
        }
        return ret
    }

    public static DELETE(arr: Array<any>, idx: number) {
        if (arr != null) {
            if (idx < arr.length) {
                arr.splice(idx, 1)
            }
        }
    }

    public static Remove<T>(arr: Array<T>, condition: (item: T) => boolean): boolean {
        for (let i = 0; i < arr.length; i++) {
            if (condition(arr[i])) {
                Helper.DELETE(arr, i)
                return true
            }
        }
        return false
    }

    public static INSERT(arr: Array<any>, ele: any, idx: number = -1) {
        if (arr != null && ele != null) {
            if (idx == -1) {
                idx = arr.length
            }
            arr.splice(idx, 0, ele)
        }
    }

    public static SORT<T>(arr: T[], func: (o1: T, o2: T) => (boolean)) {
        if (arr != null && func != null && arr instanceof Array) {
            arr.sort((o1, o2) => {
                if (func(o1, o2)) {
                    return -1
                } else {
                    return 1
                }
            })
        }
    }

    public static SubRange<T>(list: T[], start: number = 0, end: number = -1) {
        const result: T[] = []
        if (list) {
            if (end == -1) end = list.length
            end = Math.min(list.length, end)
            start = Math.max(start, 0)
            for (let i = start; i < end; i++) {
                result.push(list[i])
            }
        }
        return result
    }

    public static AddRange<T>(list: Array<T>, elements: Iterable<T> | ArrayLike<T>) {
        if (list && elements)
            list.push.apply(list, Array.from(elements))
    }

    public static DeleteRange(list: Array<any>, idx: number, length?: number) {
        if (list) {
            if (Helper.ISNULL(length)) length = list.length - idx
            for (let i = 0; i < length; i++) {
                this.DELETE(list, idx)
            }
        }
    }

    public static HASHCODE(o): number {
        if (Helper.ISNULL(o) == false) {
            var s = JSON.stringify(o)
            if (s == null) {
                return -1
            } else {
                var h = 0, i, chr, len
                if (s.length === 0) return h
                for (i = 0, len = s.length; i < len; i++) {
                    chr = s.charCodeAt(i)
                    h = ((h << 5) - h) + chr
                    h |= 0
                }
                return h
            }
        } else {
            return -1
        }
    }

    public static IsNullOrEmpty(str: string): boolean {
        return !(str != null && str != "")
    }

    public static IndexOf(str: string, _of: string): number {
        if (Helper.IsNullOrEmpty(str) == false && Helper.IsNullOrEmpty(_of) == false) {
            return str.indexOf(_of)
        }
        return -1
    }

    public static LastIndexOf(str: string, _of: string): number {
        if (Helper.IsNullOrEmpty(str) == false && Helper.IsNullOrEmpty(_of) == false) {
            return str.lastIndexOf(_of)
        }
        return -1
    }

    /**
     * [from, to)
     * @param str 
     * @param from 
     * @param to 
     */
    public static Sub(str: string, from: number, to: number): string {
        if (Helper.IsNullOrEmpty(str) == false) {
            return str.substring(from, to)
        }
        return null
    }

    public static Replace(str: string, from: string, to: string): string {
        if (Helper.IsNullOrEmpty(str) == false && Helper.IsNullOrEmpty(from) == false && Helper.ISNULL(to) == false) {
            return str.replace(new RegExp(from, "gm"), to)
        }
        return str
    }

    public static Trim(str: string): string {
        if (Helper.IsNullOrEmpty(str) == false) {
            return str.trim()
        }
        return str
    }

    public static Split(str: string, _of: string): string[] {
        if (Helper.IsNullOrEmpty(str) == false && Helper.IsNullOrEmpty(_of) == false) {
            return str.split(_of)
        }
        return null
    }

    public static Contains(str: string, _of: string): boolean {
        return Helper.IndexOf(str, _of) >= 0
    }

    public static StartWith(str: string, _of: string): boolean {
        return Helper.IndexOf(str, _of) == 0
    }

    public static EndWith(str: string, _of: string): boolean {
        if (Helper.IsNullOrEmpty(str) == false && Helper.IsNullOrEmpty(_of) == false) {
            var idx = str.lastIndexOf(_of)
            return idx != -1 && idx == str.length - _of.length
        }
        return false
    }

    public static Format(fmt: string, ...args: any[]): string {
        if (fmt) {
            if (args.length > 0) {
                var index = 0
                var doReplace = function (rplc) {
                    if (Helper.ISNULL(rplc)) {
                        rplc = "undefined"
                    }
                    if (rplc instanceof Array) {
                        for (var i = 0; i < rplc.length; i++) {
                            var temp = rplc[i]
                            doReplace(temp)
                        }
                    }
                    else {
                        var str: string
                        var reg = new RegExp("({)" + index + "(})", "g")
                        if (typeof (rplc) == "string") {
                            str = <string>rplc
                        } else {
                            str = rplc.toString()
                        }
                        fmt = fmt.replace(reg, str)
                        index++
                    }
                }
                for (var i = 0; i < args.length; i++) {
                    var temp = args[i]
                    if (temp != null) {
                        doReplace(temp)
                    }
                }
            }
            return fmt
        }
        else {
            return null
        }
    }

    public static Log(format: any, ...args: Array<any>): void {
        Helper.HandleLog(format, 0, args)
    }

    public static LogError(format: any, ...args: Array<any>): void {
        Helper.HandleLog(format, 1, args)
    }

    public static LogWarning(format: any, ...args: Array<any>): void {
        Helper.HandleLog(format, 2, args)
    }

    private static HandleLog(format: any, type: number, ...args: Array<any>): void {
        if (format) {
            if (typeof (format) == "string") {
                var str: string
                if (type == 0) {
                    str = Helper.Format("[Info]{0}", Helper.Format(<string>format, args))
                    console.log(str)
                } else if (type == 1) {
                    str = Helper.Format("[Error]{0}", Helper.Format(<string>format, args))
                    console.error(str)
                } else if (type == 2) {
                    str = Helper.Format("[Warning]{0}", Helper.Format(<string>format, args))
                    console.warn(str)
                }
            } else {
                if (type == 0) {
                    console.log(format)
                } else if (type == 1) {
                    console.error(format)
                } else if (type == 2) {
                    console.warn(format)
                }
            }
        }
    }

    public static GetTimestamp(): number {
        return Date.parse(new Date().toString()) / 1000
    }

    public static GetMilliSecond(): number {
        return new Date().valueOf()
    }

    public static HasFile(file: string): boolean {
        if (file) {
            try {
                return libfs.existsSync(file)
            } catch { }
        }
        return false
    }

    public static FileMD5(filePath: string): string {
        let md5str = ""
        if (Helper.HasFile(filePath)) {
            let data = Helper.OpenFile(filePath)
            let buf = Buffer.from(data)
            let md5 = crypto.createHash("md5")
            md5.update(buf)
            md5str = md5.digest("hex")
        }
        return md5str
    }

    public static StrMD5(str: string): string {
        let md5str = ""
        let md5 = crypto.createHash("md5")
        md5.update(str)
        md5str = md5.digest("hex")
        return md5str
    }

    public static OpenText(filePath: string): string {
        if (Helper.HasFile(filePath)) {
            let b = libfs.readFileSync(filePath)
            if (b) {
                return b.toString()
            } else {
                return ""
            }
        }
        return ""
    }

    public static OpenFile(filePath: string): ArrayBuffer { return libfs.readFileSync(filePath) }

    public static SaveFile(filePath: string, data: any) {
        if (filePath) {
            if (!Helper.HasDirectory(libpath.dirname(filePath))) {
                Helper.CreateDirectory(libpath.dirname(filePath))
            }
            libfs.writeFileSync(filePath, data)
        }
    }

    public static DeleteFile(filePath: string) {
        if (Helper.HasFile(filePath)) {
            libfs.unlinkSync(filePath)
        }
    }

    public static CopyFile(from: string, to: string) {
        if (from && to) {
            if (libfs.existsSync(from)) {
                if (Helper.HasDirectory(libpath.dirname(to)) == false) {
                    Helper.CreateDirectory(libpath.dirname(to))
                }
                if (libfs.existsSync(to)) {
                    Helper.DeleteFile(to)
                }
                let f = libfs.readFileSync(from)
                libfs.writeFileSync(to, f)
            }
        }
    }

    public static HasDirectory(path: string): boolean {
        if (path) {
            try {
                return libfs.statSync(path).isDirectory()
            } catch { }
        }
        return false
    }

    public static CreateDirectory(path: string): boolean {
        if (path) {
            if (!libfs.existsSync(path)) {
                let strs = path.split(libpath.sep)
                if (path.startsWith(libpath.sep)) strs[0] = libpath.sep // linux
                let temp = ""
                for (let i = 0; i < strs.length; i++) {
                    temp += strs[i]
                    if (temp && temp != "") {
                        if (!libfs.existsSync(temp)) {
                            libfs.mkdirSync(temp)
                        }
                        temp += libpath.sep
                    }
                }
                return true
            }
        }
        return false
    }

    public static CopyDirectory(from: string, to: string) {
        if (from && to) {
            if (libfs.existsSync(from)) {
                from = Helper.NormalizePath(from)
                to = Helper.NormalizePath(to)
                let files = libfs.readdirSync(from)
                files.forEach((file, index) => {
                    let temp = from + libpath.sep + file
                    temp = Helper.NormalizePath(temp)
                    let delta = temp.substring(temp.lastIndexOf(libpath.sep) + 1, temp.length)
                    if (libfs.statSync(temp).isDirectory()) {
                        let dirName = libpath.join(to, delta)
                        if (Helper.HasDirectory(dirName)) {
                            Helper.DeleteDirectory(dirName)
                        }
                        Helper.CreateDirectory(dirName)
                        Helper.CopyDirectory(temp, dirName)
                    } else {
                        Helper.CopyFile(temp, libpath.join(to, delta))
                    }
                })
            }
        }
    }

    public static DeleteDirectory(path: string): boolean {
        if (path) {
            if (libfs.existsSync(path)) {
                let files = libfs.readdirSync(path)
                files.forEach(function (file, index) {
                    let temp = path + libpath.sep + file
                    if (libfs.statSync(temp).isDirectory()) {
                        Helper.DeleteDirectory(temp)
                    } else {
                        libfs.unlinkSync(temp)
                    }
                })
                libfs.rmdirSync(path)
            }
            return true
        }
        return false
    }

    /**
     * 归一化路径，减少相对路径(..)，分隔符替换成/
     * @param f 路径
     * @param lower 是否转换为小写（linux不支持）
     * @returns 
     */
    public static NormalizePath(f: string, lower: boolean = true) {
        if (f) {
            f = libpath.normalize(f).replace(/\\/g, "/").replace(/\/\//g, "/")
            if (process.platform != "linux" && lower) {
                // f = f.toLowerCase() // [20220530]: 转小写导致windows调试异常（无法取消断点）
            }
            return f
        }
        return null
    }

    public static ShowInExplorer(path) {
        let command = null
        switch (process.platform) {
            case 'linux':
                command = 'xdg-open ' + path
                break
            case 'darwin':
                command = 'open ' + path
                break
            case 'win32':
                command = 'start ' + path
                break
        }
        if (command != null) {
            cp.exec(command)
        }
    }

    public static VersionToNumber(version: string): number {
        if (Helper.IsNullOrEmpty(version)) {
            return -1
        }
        var strs: Array<string> = version.split(".")
        if (strs == null || strs.length == 0) {
            return -1
        }
        else {
            var finalVersion = 0
            var large = (strs.length - 1) * 2
            for (var i = 0; i < strs.length; i++) {
                var singleVersion = parseInt(strs[i])
                if (i == 0) {
                    finalVersion = (large == 0 ? singleVersion : singleVersion * (Math.pow(10, large)))
                }
                else if (i == strs.length - 1) {
                    finalVersion += singleVersion
                }
                else {
                    finalVersion += singleVersion * (Math.pow(10, large - i * 2))
                }
            }
            return finalVersion
        }
    }

    public static NumberToVersion(version: number): string {
        var finalVersion = ""
        var str = version.toString()
        var singleVersion = 0
        for (var i = str.length - 1; i >= 0;) {
            var length = (i - 1) >= 0 ? 2 : 1
            var from = i - length + 1
            singleVersion = parseInt(str.substr(from, length))
            finalVersion = singleVersion + finalVersion
            if (i > 1) {
                finalVersion = "." + finalVersion
            }
            i -= 2
        }
        return finalVersion
    }

    public static CharToBuf(str) {
        try {
            var out = new ArrayBuffer(str.length * 2)
            var u16a = new Uint16Array(out)
            var strs = str.split("")
            for (var i = 0; i < strs.length; i++) {
                u16a[i] = strs[i].charCodeAt()
            }
            return out
        } catch {
            return null
        }
    }

    public static BufToChar(buf) {
        try {
            var out = ""
            var u16a = new Uint16Array(buf)
            var single;
            for (var i = 0; i < u16a.length; i++) {
                single = u16a[i].toString(16)
                while (single.length < 4) single = "0".concat(single)
                out += "\\u" + single
            }
            return eval("'" + out + "'")
        } catch {
            return null
        }
    }

    /** 时间格式化: yyyy-MM-dd hh:mm:ss */
    public static DateFormat(date: Date, fmt: string): string {
        if (Helper.ISNULL(date) == false && Helper.IsNullOrEmpty(fmt) == false) {
            var o = {
                "M+": date.getMonth() + 1,                   //月份 
                "d+": date.getDate(),                        //日 
                "h+": date.getHours(),                       //小时 
                "m+": date.getMinutes(),                     //分 
                "s+": date.getSeconds(),                     //秒 
                "q+": Math.floor((date.getMonth() + 3) / 3), //季度 
                "S": date.getMilliseconds()                  //毫秒 
            }
            if (/(y+)/.test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length))
            }
            for (var k in o) {
                if (new RegExp("(" + k + ")").test(fmt)) {
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)))
                }
            }
        }
        return fmt
    }

    public static RANDOM(min: number, max: number) {
        switch (arguments.length) {
            case 1:
                return parseInt((Math.random() * min + 1).toString(), 10)
            case 2:
                return parseInt((Math.random() * (max - min + 1) + min).toString(), 10)
            default:
                return 0
        }
    }

    public static UUID() {
        let d = new Date().getTime();
        let uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            let r = (d + Math.random() * 16) % 16 | 0
            d = Math.floor(d / 16)
            return (c == 'x' ? r : (r & 0x3 | 0x8)).toString(16)
        })
        return uuid
    }

    public static ExecOpt(cwd: string, env?: any): any {
        // signal: https://nodejs.cn/api/process/signal_events.html
        return {
            encoding: "utf8",
            timeout: 0,
            maxBuffer: 16 * 1024 * 1024 * 1024,
            killSignal: "SIGKILL",
            cwd: cwd,
            env: env ? env : process.env
        }
    }

    public static OpenBase64(file) {
        let data = Helper.OpenFile(file)
        return Buffer.from(data).toString("base64")
    }

    public static SaveBase64(file, data) {
        if (data != null) {
            data = Buffer.from(data, "base64")
            Helper.SaveFile(file, data)
        }
    }

    public static GetPlat(): string {
        return process.platform == "win32" ? "windows" : process.platform
    }

    public static GetArch(): string {
        // nodejs-arch:'arm'、'arm64'、'ia32'、'mips'、'mipsel'、'ppc'、'ppc64'、's390'、's390x'、'x64'
        let arch = process.arch as string
        if (process.arch == "x64") { arch = "amd64" }
        else if (process.arch == "ia32") { arch = "386" }
        return arch
    }
}