//
//  AppDelegate.swift
//  URLNavigatorExt
//
//  Created by goo.gle@foxmail.com on 11/26/2019.
//  Copyright (c) 2019 goo.gle@foxmail.com. All rights reserved.
//

import UIKit
import URLNavigator
import URLNavigatorExt

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigator = Navigator()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Router.registOuterUrl(jsonStr: Router.config, navigator: navigator)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

public enum LoginViewShowMode: Int {
    /// 验证码登录
    case code = 0
    /// 手机号密码登录
    case pwd = 1
    /// 绑定手机号
    case bind = 2
    ///  忘记密码
    case forgetPwd = 3
}

public enum LogicEnum {

    public enum CourseType: Int {
        /// 课节
        case less = 1
        /// 课程
        case course = 2
        /// mini
        case mini = 99
    }

    public enum KyOauthType: Int {
        case wechat = 0
        case weibo = 2
        case qq = 3
    }

    public enum Sex: Int {
        /// 未知，其他
        case unknow = 4
        /// 男
        case male = 1
        /// 女
        case famale = 2
        /// 保密
        case secret = 3

        public static func from(desc: String?) -> Sex? {
            guard let desc = desc else { return nil}
            if desc == self.unknow.desc {
                return self.unknow
            }
            if desc == self.famale.desc {
                return self.famale
            }
            if desc == self.male.desc {
                return self.male
            }
            return self.secret
        }

        public var desc: String {
            switch self {
            case .unknow:
                return "其他性别"
            case .famale:
                return "女"
            case .male:
                return "男"
            case .secret:
                return "保密"
            }
        }
    }

    /// 性取向 1异性恋 2同性恋 3双性恋 4泛性恋 5其他性少数
    public enum SexOri: Int {
        /// 异性恋
        case hetero = 1 // Heterosexuality
        /// 同性恋
        case homo // Homosexuality
        /// 双性恋
        case bi // Bisexuality
        /// 泛性恋
        case pan // pansexual
        /// 其他性少数
        case other
        public var desc: String {
            switch self {
            case .hetero:
                return "异性恋"
            case .homo:
                return "同性恋"
            case .bi:
                return "双性恋"
            case .pan:
                return "泛性恋"
            case .other:
                return "其他性少数"
            }
        }
        public static func from(desc: String) -> SexOri {
            if desc == self.homo.desc {
                return self.homo
            }
            if desc == self.bi.desc {
                return self.bi
            }
            if desc == self.pan.desc {
                return self.pan
            }
            if desc == self.other.desc {
                return self.other
            }
            return self.hetero
        }
    }

    /// 关注类型
    ///
    /// - follow: 关注
    /// - fans: 粉丝
    /// - bothway: 互相关注
    public enum FollowType: Int {
        case follow = 0
        case fans = 1
        case bothway = 2
    }

    /// 回复类型
    ///
    /// - new: 新评论
    /// - toReply: 回复评论
    /// - toUser: 回复他人
    public enum ReplyType: Int {
        case new = 1
        case toReply = 2
        case toUser = 3
        case praiseTopic = 5
        case praiseReply = 6
        case praiseNews = 10 // 文章的回复的点赞
    }

    public enum MatchType: Int {
        case sms = 1
        case voice = 2
    }

    /// 聊天类型
    ///
    /// - normal: 普通聊天
    /// - match: 匹配
    public enum ChatType: Int {
        case normal = 1 // 普通聊天
        case match = 2 // 匹配
    }

    public enum ReportContentType: Int {
        case topic = 1 // 主题
        case reply = 2 // 主题回复
        case newsReply = 3 // 文章回复
        case chatVoice = 4 // 语音聊天
        case chatSms = 5 // 文本聊天
        case people = 6 // 举报他人
    }
    // fixed: https://project.knowyourself.cc/index.php?m=bug&f=view&bugID=5221
    public enum SortType: Int {
        case new = 10 // new
        case hot = 30 // hot
        case early = 20 // 时间正序
        case recommand = 2 // 推荐

        func str() -> String {
            switch self {
            case .new:
                return "最新"
            case .hot:
                return "最热"
            case .early:
                return "最早"
            default:
                return ""
            }
        }
    }

    public enum GroupListType: String {
        case all = "0"
        case mine = "1"
    }

    public enum BackModel: Int {
        case popToRoot = 0
        case pop = 1
    }

    public enum SearchTag: Int {
        case group = 1
        case topic = 2
        case news = 4
        case meditation = 8
        case user = 16
        case exam = 32
        case all = 63
    }

    public enum TopicReplyOptType: Int {
        case praise = 1
        case reply = 2
        case more = 3
        case unknow
    }

    public enum TopicActType: Int {
        case praise = 1
        case star = 2
        case share = 3
        case more = 4
        case unknow
    }

    public enum PhotoSelectType: Int {
        case cancel = 0
        case album = 1
        case camera = 2
        case clear = 3
    }

    public enum ContentType: Int {
        case topic = 1
        case topic_reply = 2
        case news = 3
        case news_reply = 4
        case unknow
    }

    public enum RoleType: Int {
        case admin
        case mine
        case other
        case unknow
    }

    public enum NTFType: Int {
        case reply = 0
        case praise = 1
        case fans = 2
        case sys = 3

        static func from(int: Int) -> NTFType? {
            switch int {
            case 0:
                return .reply
            case 1:
                return .praise
            case 2:
                return .fans
            case 3:
                return .sys
            default:
                return nil
            }
        }
    }

    public enum NewsType: Int {
        case skill = 2
        case special = 1
    }

    public enum OrderType: Int {
        case iap
        case order
    }

    public enum OrderStatus: Int {
        case notBegin = 1
        case ing = 2
        case done = 3
    }
}
