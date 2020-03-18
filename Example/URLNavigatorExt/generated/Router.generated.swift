// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// Create Time: 2019-11-28 16:22:22
import URLNavigatorExt
import URLNavigator

struct ModelPageConfig {
    let desc: String
    let url: String
    let page: URL
    let priority: Int
}

// swiftlint:disable file_length
public enum Router {
    static var urlPages = [String: ModelPageConfig]()

    /// desc: 第一个viewController
    /// view: ViewController
    /// parameters:
    ///     - blk: (()->Void)? 
    ///     - p7: Int64 
    ///     - p6: Test2Enum default: .d
    ///         - c: 100
    ///         - d: 101
    ///     - p5: Test2Enum? default: .c
    ///         - c: 100
    ///         - d: 101
    ///     - p4: String? 
    ///     - p3: String? default: abc123
    ///     - type1: TestEnum? default: .b
    ///         - a: a
    ///         - b: b
    ///     - type: TestEnum default: .a
    ///         - a: a
    ///         - b: b
    public static let home_page = "\(Scheme.domain)/home"

    /// desc: ViewController01
    /// view: ViewController01
    /// parameters:
    ///     - None
    public static let page01 = "\(Scheme.domain)/page01"

    /// desc: ViewController02
    /// view: ViewController02
    /// parameters:
    ///     - name: String default: 这是一个测试参数
    ///     - uid: Int64 default: 0
    public static let page02 = "\(Scheme.domain)/page02"

    /// MARK: parameter type dic
    static let urlParas: [String: Parameterible.Type?] = [
        Router.home_page: Router.PRHome_Page.self,
        Router.page01: nil,
        Router.page02: Router.PRPage02.self
    ]

    /// desc: 第一个viewController
    /// view: ViewController
    /// path: /home
    /// name: home_page
    public struct PRHome_Page: Parameterible {
        var blk: (()->Void)?
        var p7: Int64
        var p6: Test2Enum
        var p5: Test2Enum?
        var p4: String?
        var p3: String?
        var type1: TestEnum?
        var type: TestEnum

        init(
            type: TestEnum,
            p6: Test2Enum,
            p7: Int64,
            type1: TestEnum? = nil,
            p3: String? = nil,
            p4: String? = nil,
            p5: Test2Enum? = nil,
            blk: (()->Void)? = nil
        ) {
            self.blk = blk
            self.p7 = p7
            self.p6 = p6
            self.p5 = p5
            self.p4 = p4
            self.p3 = p3
            self.type1 = type1
            self.type = type
        }

        public static func instance(by queryItem: [String: String]) -> Self? {
            let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
            let dict = [String: String](uniqueKeysWithValues: items)
                
            var _type: TestEnum? = .a
            if let value = dict["type"] {
                if let _enum = TestEnum(rawValue: value) {
                    _type = _enum
                }
            }
                
            var _p6: Test2Enum? = .d
            if let value = dict["p6"] {
                if let _value = Int(value), let _enum = Test2Enum(rawValue: _value) {
                    _p6 = _enum
                }
            }
                
            var _p7: Int64?
            if let value = dict["p7"] {
                _p7 = Int64(value)
            }
                
            var type1: TestEnum? = .b
            if let value = dict["type1"] {
                if let _enum = TestEnum(rawValue: value) {
                    type1 = _enum
                }
            }
                
            var p3: String? = "abc123"
            if let value = dict["p3"] {
                p3 = value
            }
                
            var p4: String?
            if let value = dict["p4"] {
                p4 = value
            }
                
            var p5: Test2Enum? = .c
            if let value = dict["p5"] {
                if let _value = Int(value), let _enum = Test2Enum(rawValue: _value) {
                    p5 = _enum
                }
            }
            guard
                let type = _type,
                let p6 = _p6,
                let p7 = _p7
            else { return nil }
            return PRHome_Page(
                type: type,
                p6: p6,
                p7: p7,
                type1: type1,
                p3: p3,
                p4: p4,
                p5: p5,
                blk: nil
            )
        }
    }

    /// desc: ViewController02
    /// view: ViewController02
    /// path: /page02
    /// name: page02
    public struct PRPage02: Parameterible {
        var name: String
        var uid: Int64

        init(
            uid: Int64,
            name: String
        ) {
            self.name = name
            self.uid = uid
        }

        public static func instance(by queryItem: [String: String]) -> Self? {
            let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
            let dict = [String: String](uniqueKeysWithValues: items)
                
            var _uid: Int64? = 0
            if let value = dict["uid"] {
                _uid = Int64(value)
            }
                
            var _name: String? = "这是一个测试参数"
            if let value = dict["name"] {
                _name = value
            }
            guard
                let uid = _uid,
                let name = _name
            else { return nil }
            return PRPage02(
                uid: uid,
                name: name
            )
        }
    }


    static let config = """
        {
            "router": [
                {
                    "desc": "第一个viewController",
                    "path": "/home",
                    "page": "ViewController",
                    "priority": 1
                },
                {
                    "desc": "ViewController01",
                    "path": "/page01",
                    "page": "ViewController01",
                    "priority": 1
                },
                {
                    "desc": "ViewController02",
                    "path": "/page02",
                    "page": "ViewController02",
                    "priority": 1
                }
            ]
        }  
    """
    /// desc: 文本聊天页面
        /// view: ChatViewController
        /// path: /chat
        /// name: chat
        public struct PRChat: Parameterible {
            var targetId: String
            var type: LogicEnum.ChatType

            init(
                type: LogicEnum.ChatType,
                targetId: String
            ) {
                self.targetId = targetId
                self.type = type
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: LogicEnum.ChatType?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LogicEnum.ChatType(rawValue: _value) {
                        _type = _enum
                    }
                }

                var _targetId: String?
                if let value = dict["targetid"] {
                    _targetId = value
                }
                guard
                    let type = _type,
                    let targetId = _targetId
                else { return nil }
                return PRChat(
                    type: type,
                    targetId: targetId
                )
            }
        }

        /// desc: 圈子选择(不支持)
        /// view: CircleSelectorViewController
        /// path: /circle/selector
        /// name: circle_selector
        public struct PRCircle_Selector: Parameterible {
            var complete: ((Int) -> Void)?

            init(
                complete: ((Int) -> Void)? = nil
            ) {
                self.complete = complete
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRCircle_Selector(
                    complete: nil
                )
            }
        }

        /// desc: 城市选择器(不支持)
        /// view: CitySelectorViewController
        /// path: /city_selector
        /// name: city_selector
        public struct PRCity_Selector: Parameterible {
            var complete: ((Int) -> Void)?
            var pcaCodes: [Int]?
            var title: String
            var level: Int

            init(
                level: Int,
                title: String,
                pcaCodes: [Int]? = nil,
                complete: ((Int) -> Void)? = nil
            ) {
                self.complete = complete
                self.pcaCodes = pcaCodes
                self.title = title
                self.level = level
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _level: Int?
                if let value = dict["level"] {
                    _level = Int(value)
                }

                var _title: String?
                if let value = dict["title"] {
                    _title = value
                }
                guard
                    let level = _level,
                    let title = _title
                else { return nil }
                return PRCity_Selector(
                    level: level,
                    title: title,
                    pcaCodes: nil,
                    complete: nil
                )
            }
        }

        /// desc: 聊愈-个人档案
        /// view: ConsultArchiveViewController
        /// path: /consult/archive
        /// name: consult_archive
        public struct PRConsult_Archive: Parameterible {
            var onCompletion: (() -> Void)?

            init(
                onCompletion: (() -> Void)? = nil
            ) {
                self.onCompletion = onCompletion
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRConsult_Archive(
                    onCompletion: nil
                )
            }
        }

        /// desc: 聊愈-历史对话
        /// view: ConsultHistoryChatViewController
        /// path: /consult/history_detail
        /// name: consult_history_detail
        public struct PRConsult_History_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRConsult_History_Detail(
                    id: id
                )
            }
        }

        /// desc: 聊愈-信息填写
        /// view: ConsultInputViewController
        /// path: /consult/input
        /// name: consult_input
        public struct PRConsult_Input: Parameterible {
            var onCompletion: ((Int) -> Void)?

            init(
                onCompletion: ((Int) -> Void)? = nil
            ) {
                self.onCompletion = onCompletion
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRConsult_Input(
                    onCompletion: nil
                )
            }
        }

        /// desc: 聊愈-知情须知
        /// view: ConsultProtoViewController
        /// path: /consult/intro
        /// name: consult_intro
        public struct PRConsult_Intro: Parameterible {
            var onComplete: ((Bool) -> Void)?

            init(
                onComplete: ((Bool) -> Void)? = nil
            ) {
                self.onComplete = onComplete
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRConsult_Intro(
                    onComplete: nil
                )
            }
        }

        /// desc: 订单评价页面
        /// view: ConsultRateViewController
        /// path: /consult/rate
        /// name: consultRate
        public struct PRConsultrate: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRConsultrate(
                    id: id
                )
            }
        }

        /// desc: 轻咨询订单评价详情
        /// view: ConsultRatedDetailViewController
        /// path: /consult/ratedetail
        /// name: consult_rate_detail
        public struct PRConsult_Rate_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRConsult_Rate_Detail(
                    id: id
                )
            }
        }

        /// desc: 轻咨询聊天页面
        /// view: ConsultViewController
        /// path: /consult
        /// name: homeConsult
        public struct PRHomeconsult: Parameterible {
            var id: String

            init(
                id: String
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: String?
                if let value = dict["id"] {
                    _id = value
                }
                guard
                    let id = _id
                else { return nil }
                return PRHomeconsult(
                    id: id
                )
            }
        }

        /// desc: 好友列表
        /// view: ContactViewController
        /// path: /mine/friends
        /// name: mine_friends
        public struct PRMine_Friends: Parameterible {
            var type: Int?

            init(
                type: Int? = nil
            ) {
                self.type = type
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var type: Int?
                if let value = dict["type"] {
                    if let _value = Int(value) {
                        type = _value
                    }
                }
                return PRMine_Friends(
                    type: type
                )
            }
        }

        /// desc: 日记详情
        /// view: DiaryDetailViewController
        /// path: /diary/detail
        /// name: diary_detail
        public struct PRDiary_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRDiary_Detail(
                    id: id
                )
            }
        }

        /// desc: 动态发布与编辑
        /// view: DynamicEditerViewController
        /// path: /dynamic/edit
        /// name: dynamic_editer
        public struct PRDynamic_Editer: Parameterible {
            var attachment: UIImage?
            var ext_data: String?
            var ext_type: Int?
            var id: Int64?
            var type: Int
            var blk: ((Int64) -> Void)?

            init(
                type: Int,
                blk: ((Int64) -> Void)? = nil,
                id: Int64? = nil,
                ext_type: Int? = nil,
                ext_data: String? = nil,
                attachment: UIImage? = nil
            ) {
                self.attachment = attachment
                self.ext_data = ext_data
                self.ext_type = ext_type
                self.id = id
                self.type = type
                self.blk = blk
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: Int?
                if let value = dict["type"] {
                    if let _value = Int(value) {
                        _type = _value
                    }
                }

                var id: Int64?
                if let value = dict["id"] {
                    id = Int64(value)
                }

                var ext_type: Int?
                if let value = dict["ext_type"] {
                    if let _value = Int(value) {
                        ext_type = _value
                    }
                }

                var ext_data: String?
                if let value = dict["ext_data"] {
                    ext_data = value
                }
                guard
                    let type = _type
                else { return nil }
                return PRDynamic_Editer(
                    type: type,
                    blk: nil,
                    id: id,
                    ext_type: ext_type,
                    ext_data: ext_data,
                    attachment: nil
                )
            }
        }

        /// desc: 动态回复详情
        /// view: DynamicReplyViewController
        /// path: /community/reply
        /// name: topic_reply
        public struct PRTopic_Reply: Parameterible {
            var topicId: Int64
            var id: Int64

            init(
                id: Int64,
                topicId: Int64
            ) {
                self.topicId = topicId
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }

                var _topicId: Int64?
                if let value = dict["topicid"] {
                    _topicId = Int64(value)
                }
                guard
                    let id = _id,
                    let topicId = _topicId
                else { return nil }
                return PRTopic_Reply(
                    id: id,
                    topicId: topicId
                )
            }
        }

        /// desc: 讨论(文章)详情页面
        /// view: DynamicViewController
        /// path: /community/topic
        /// name: topic_detail
        public struct PRTopic_Detail: Parameterible {
            var tag_color: UIColor?
            var type: Int?
            var input: Bool?
            var id: Int64

            init(
                id: Int64,
                input: Bool? = nil,
                type: Int? = nil,
                tag_color: UIColor? = nil
            ) {
                self.tag_color = tag_color
                self.type = type
                self.input = input
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }

                var input: Bool?
                if let value = dict["input"] {
                    input = Bool(value)
                }

                var type: Int?
                if let value = dict["type"] {
                    if let _value = Int(value) {
                        type = _value
                    }
                }
                guard
                    let id = _id
                else { return nil }
                return PRTopic_Detail(
                    id: id,
                    input: input,
                    type: type,
                    tag_color: nil
                )
            }
        }

        /// desc: 测试详情页
        /// view: ExamDetailViewController
        /// path: /exam
        /// name: exam_detail
        public struct PRExam_Detail: Parameterible {
            var order_id: Int64?
            var id: Int64

            init(
                id: Int64,
                order_id: Int64? = nil
            ) {
                self.order_id = order_id
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }

                var order_id: Int64?
                if let value = dict["order_id"] {
                    order_id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRExam_Detail(
                    id: id,
                    order_id: order_id
                )
            }
        }

        /// desc: 测试首页列表(new)
        /// view: ExamHomeViewController
        /// path: /exam/home
        /// name: exam_home
        public struct PRExam_Home: Parameterible {
            var cate: Int64?

            init(
                cate: Int64? = nil
            ) {
                self.cate = cate
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var cate: Int64?
                if let value = dict["cate"] {
                    cate = Int64(value)
                }
                return PRExam_Home(
                    cate: cate
                )
            }
        }

        /// desc: 测试进程页面
        /// view: ExamProcessViewController
        /// path: /exam/process
        /// name: exam_process
        public struct PRExam_Process: Parameterible {
            var plan: Bool
            var id: Int64

            init(
                id: Int64,
                plan: Bool
            ) {
                self.plan = plan
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }

                var _plan: Bool?
                if let value = dict["plan"] {
                    _plan = Bool(value)
                }
                guard
                    let id = _id,
                    let plan = _plan
                else { return nil }
                return PRExam_Process(
                    id: id,
                    plan: plan
                )
            }
        }

        /// desc: 小组详情页面
        /// view: GroupDetailViewController
        /// path: /community/group
        /// name: group_detail
        public struct PRGroup_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRGroup_Detail(
                    id: id
                )
            }
        }

        /// desc: 互助会详情页
        /// view: HeoDetailViewController
        /// path: /heo/detail
        /// name: heo_detail
        public struct PRHeo_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRHeo_Detail(
                    id: id
                )
            }
        }

        /// desc: 互助会聊天室
        /// view: HeoRoomViewController
        /// path: /heo/room
        /// name: heo_room
        public struct PRHeo_Room: Parameterible {
            var id: String

            init(
                id: String
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: String?
                if let value = dict["id"] {
                    _id = value
                }
                guard
                    let id = _id
                else { return nil }
                return PRHeo_Room(
                    id: id
                )
            }
        }

        /// desc: 举报页面
        /// view: KyReportViewController
        /// path: /report
        /// name: report
        public struct PRReport: Parameterible {
            var type: LogicEnum.ReportContentType
            var id: Int64

            init(
                id: Int64,
                type: LogicEnum.ReportContentType
            ) {
                self.type = type
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }

                var _type: LogicEnum.ReportContentType?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LogicEnum.ReportContentType(rawValue: _value) {
                        _type = _enum
                    }
                }
                guard
                    let id = _id,
                    let type = _type
                else { return nil }
                return PRReport(
                    id: id,
                    type: type
                )
            }
        }

        /// desc: 浏览器组件
        /// view: KyWebViewController
        /// path: /redirect
        /// name: webView
        public struct PRWebview: Parameterible {
            var title: String?
            var url: String

            init(
                url: String,
                title: String? = nil
            ) {
                self.title = title
                self.url = url
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _url: String?
                if let value = dict["url"] {
                    _url = value
                }

                var title: String?
                if let value = dict["title"] {
                    title = value
                }
                guard
                    let url = _url
                else { return nil }
                return PRWebview(
                    url: url,
                    title: title
                )
            }
        }

        /// desc: 验证码输入界面
        /// view: LoginCodeViewController
        /// path: /login/code
        /// name: login_code
        public struct PRLogin_Code: Parameterible {
            var type: Int?

            init(
                type: Int?
            ) {
                self.type = type
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: Int?
                if let value = dict["type"] {
                    if let _value = Int(value) {
                        _type = _value
                    }
                }
                guard
                    let type = _type
                else { return nil }
                return PRLogin_Code(
                    type: type
                )
            }
        }

        /// desc: 登录页面
        /// view: LoginViewController
        /// path: /login
        /// name: login
        public struct PRLogin: Parameterible {
            var type: LoginViewShowMode
            var country_code: String

            init(
                country_code: String,
                type: LoginViewShowMode
            ) {
                self.type = type
                self.country_code = country_code
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _country_code: String?
                if let value = dict["country_code"] {
                    _country_code = value
                }

                var _type: LoginViewShowMode?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LoginViewShowMode(rawValue: _value) {
                        _type = _enum
                    }
                }
                guard
                    let country_code = _country_code,
                    let type = _type
                else { return nil }
                return PRLogin(
                    country_code: country_code,
                    type: type
                )
            }
        }

        /// desc: 正在匹配页面(不支持)
        /// view: MatchingViewController
        /// path: /matching
        /// name: matching
        public struct PRMatching: Parameterible {
            var lat: Double
            var lon: Double
            var type: LogicEnum.MatchType

            init(
                type: LogicEnum.MatchType,
                lon: Double,
                lat: Double
            ) {
                self.lat = lat
                self.lon = lon
                self.type = type
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: LogicEnum.MatchType?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LogicEnum.MatchType(rawValue: _value) {
                        _type = _enum
                    }
                }

                var _lon: Double?
                if let value = dict["lon"] {
                    _lon = Double(value)
                }

                var _lat: Double?
                if let value = dict["lat"] {
                    _lat = Double(value)
                }
                guard
                    let type = _type,
                    let lon = _lon,
                    let lat = _lat
                else { return nil }
                return PRMatching(
                    type: type,
                    lon: lon,
                    lat: lat
                )
            }
        }

        /// desc: 冥想播放页面 type-课程类型:1:单音频 2:系列课 99:mini冥想
        /// view: MeditationPlayerViewController
        /// path: /meditation/play
        /// name: meditation_player
        public struct PRMeditation_Player: Parameterible {
            var type: Int
            var less_id: Int64?
            var course_id: Int64?

            init(
                type: Int,
                course_id: Int64? = nil,
                less_id: Int64? = nil
            ) {
                self.type = type
                self.less_id = less_id
                self.course_id = course_id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: Int?
                if let value = dict["type"] {
                    _type = Int(value)
                }

                var course_id: Int64?
                if let value = dict["course_id"] {
                    course_id = Int64(value)
                }

                var less_id: Int64?
                if let value = dict["less_id"] {
                    less_id = Int64(value)
                }
                guard
                    let type = _type
                else { return nil }
                return PRMeditation_Player(
                    type: type,
                    course_id: course_id,
                    less_id: less_id
                )
            }
        }

        /// desc: 个人主页-我的圈子
        /// view: MineCircleListViewController
        /// path: /community/list
        /// name: usr_circle
        public struct PRUsr_Circle: Parameterible {
            var uid: Int64?

            init(
                uid: Int64? = nil
            ) {
                self.uid = uid
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var uid: Int64?
                if let value = dict["uid"] {
                    uid = Int64(value)
                }
                return PRUsr_Circle(
                    uid: uid
                )
            }
        }

        /// desc: 我的社交关系：我的关注，我的粉丝
        /// view: MineSRViewController
        /// path: /mine/sr
        /// name: usr_sr
        public struct PRUsr_Sr: Parameterible {
            var type: LogicEnum.FollowType
            var uid: Int64?

            init(
                type: LogicEnum.FollowType,
                uid: Int64? = nil
            ) {
                self.type = type
                self.uid = uid
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: LogicEnum.FollowType?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LogicEnum.FollowType(rawValue: _value) {
                        _type = _enum
                    }
                }

                var uid: Int64?
                if let value = dict["uid"] {
                    uid = Int64(value)
                }
                guard
                    let type = _type
                else { return nil }
                return PRUsr_Sr(
                    type: type,
                    uid: uid
                )
            }
        }

        /// desc: 消息通知页面
        /// view: NTFCenterViewController
        /// path: /user/ntfcenter
        /// name: ntf_center
        public struct PRNtf_Center: Parameterible {
            var type: LogicEnum.NTFType

            init(
                type: LogicEnum.NTFType
            ) {
                self.type = type
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _type: LogicEnum.NTFType?
                if let value = dict["type"] {
                    if let _value = Int(value), let _enum = LogicEnum.NTFType(rawValue: _value) {
                        _type = _enum
                    }
                }
                guard
                    let type = _type
                else { return nil }
                return PRNtf_Center(
                    type: type
                )
            }
        }

        /// desc: 计划包:成就页面
        /// view: PlanCelebrateViewController
        /// path: /plan/celebrate
        /// name: plan_celebrate
        public struct PRPlan_Celebrate: Parameterible {
            var info: Int?

            init(
                info: Int? = nil
            ) {
                self.info = info
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRPlan_Celebrate(
                    info: nil
                )
            }
        }

        /// desc: 计划包详情页
        /// view: PlanDetailViewController
        /// path: /plan/detail
        /// name: plan_detail
        public struct PRPlan_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRPlan_Detail(
                    id: id
                )
            }
        }

        /// desc: 练习动态
        /// view: PlanDynamicViewController
        /// path: /plan/dynamic
        /// name: plan_dynamic
        public struct PRPlan_Dynamic: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRPlan_Dynamic(
                    id: id
                )
            }
        }

        /// desc: 计划包进程页，输入框
        /// view: PlanInputerViewController
        /// path: /plan/inputer
        /// name: plan_inputer
        public struct PRPlan_Inputer: Parameterible {
            var onSended: ((String) -> Void)?
            var maxLength: Int
            var placeholder: String?
            var text: String?

            init(
                maxLength: Int,
                text: String? = nil,
                placeholder: String? = nil,
                onSended: ((String) -> Void)? = nil
            ) {
                self.onSended = onSended
                self.maxLength = maxLength
                self.placeholder = placeholder
                self.text = text
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _maxLength: Int?
                if let value = dict["maxlength"] {
                    _maxLength = Int(value)
                }

                var text: String?
                if let value = dict["text"] {
                    text = value
                }

                var placeholder: String?
                if let value = dict["placeholder"] {
                    placeholder = value
                }
                guard
                    let maxLength = _maxLength
                else { return nil }
                return PRPlan_Inputer(
                    maxLength: maxLength,
                    text: text,
                    placeholder: placeholder,
                    onSended: nil
                )
            }
        }

        /// desc: 计划包:打卡页面
        /// view: PlanMakeCardViewController
        /// path: /plan/card
        /// name: plan_card
        public struct PRPlan_Card: Parameterible {
            var info: Int?

            init(
                info: Int? = nil
            ) {
                self.info = info
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRPlan_Card(
                    info: nil
                )
            }
        }

        /// desc: 计划包WebView
        /// view: PlanWebViewController
        /// path: /plan/web
        /// name: plan_web
        public struct PRPlan_Web: Parameterible {
            var path: String

            init(
                path: String
            ) {
                self.path = path
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _path: String?
                if let value = dict["path"] {
                    _path = value
                }
                guard
                    let path = _path
                else { return nil }
                return PRPlan_Web(
                    path: path
                )
            }
        }

        /// desc: 个人主页-编辑昵称(不支持)
        /// view: ProfileEditNameViewController
        /// path: /me/edit/name
        /// name: profile_edit_nick
        public struct PRProfile_Edit_Nick: Parameterible {
            var txt: String

            init(
                txt: String
            ) {
                self.txt = txt
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _txt: String?
                if let value = dict["txt"] {
                    _txt = value
                }
                guard
                    let txt = _txt
                else { return nil }
                return PRProfile_Edit_Nick(
                    txt: txt
                )
            }
        }

        /// desc: 个人主页-编辑签名(不支持)
        /// view: ProfileEditSignViewController
        /// path: /me/edit/sign
        /// name: profile_edit_sign
        public struct PRProfile_Edit_Sign: Parameterible {
            var txt: String

            init(
                txt: String
            ) {
                self.txt = txt
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _txt: String?
                if let value = dict["txt"] {
                    _txt = value
                }
                guard
                    let txt = _txt
                else { return nil }
                return PRProfile_Edit_Sign(
                    txt: txt
                )
            }
        }

        /// desc: 个人主页
        /// view: ProfileViewController
        /// path: /user/profile
        /// name: profile
        public struct PRProfile: Parameterible {
            var uid: Int64?

            init(
                uid: Int64? = nil
            ) {
                self.uid = uid
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var uid: Int64?
                if let value = dict["uid"] {
                    uid = Int64(value)
                }
                return PRProfile(
                    uid: uid
                )
            }
        }

        /// desc: 发布帖子
        /// view: PublishPostViewController
        /// path: /community/post/publish
        /// name: post_publish
        public struct PRPost_Publish: Parameterible {
            var complete: ((Int64) -> Void)?
            var attachment: UIImage?
            var group_id: Int64?
            var subject_id: Int64?
            var post_id: Int64?

            init(
                post_id: Int64? = nil,
                subject_id: Int64? = nil,
                group_id: Int64? = nil,
                attachment: UIImage? = nil,
                complete: ((Int64) -> Void)? = nil
            ) {
                self.complete = complete
                self.attachment = attachment
                self.group_id = group_id
                self.subject_id = subject_id
                self.post_id = post_id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var post_id: Int64?
                if let value = dict["post_id"] {
                    post_id = Int64(value)
                }

                var subject_id: Int64?
                if let value = dict["subject_id"] {
                    subject_id = Int64(value)
                }

                var group_id: Int64?
                if let value = dict["group_id"] {
                    group_id = Int64(value)
                }
                return PRPost_Publish(
                    post_id: post_id,
                    subject_id: subject_id,
                    group_id: group_id,
                    attachment: nil,
                    complete: nil
                )
            }
        }

        /// desc: 互助会详情页
        /// view: RoomDetailViewController
        /// path: /heo/room/detail
        /// name: heo_room_detail
        public struct PRHeo_Room_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRHeo_Room_Detail(
                    id: id
                )
            }
        }

        /// desc: 冥想系列课详情
        /// view: SeriesCourseViewController
        /// path: /meditation
        /// name: series_conurse
        public struct PRSeries_Conurse: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRSeries_Conurse(
                    id: id
                )
            }
        }

        /// desc: 设置/修改密码界面(不支持)
        /// view: SettingPasswordViewController
        /// path: /user/setting/password
        /// name: setting_pwd
        public struct PRSetting_Pwd: Parameterible {
            var model: LogicEnum.BackModel

            init(
                model: LogicEnum.BackModel
            ) {
                self.model = model
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _model: LogicEnum.BackModel?
                if let value = dict["model"] {
                    if let _value = Int(value), let _enum = LogicEnum.BackModel(rawValue: _value) {
                        _model = _enum
                    }
                }
                guard
                    let model = _model
                else { return nil }
                return PRSetting_Pwd(
                    model: model
                )
            }
        }

        /// desc: 文章专题详情
        /// view: SpecialDetailViewController
        /// path: /artiche/theme
        /// name: artiche_theme
        public struct PRArtiche_Theme: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRArtiche_Theme(
                    id: id
                )
            }
        }

        /// desc: 话题列表
        /// view: TabHotTopicViewController
        /// path: /community/subject/list
        /// name: subject_list
        public struct PRSubject_List: Parameterible {
            var complete: ((Int) -> Void)?

            init(
                complete: ((Int) -> Void)? = nil
            ) {
                self.complete = complete
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                return PRSubject_List(
                    complete: nil
                )
            }
        }

        /// desc: 话题详情页
        /// view: TopicDetailViewControllerV2
        /// path: /community/subject
        /// name: subject_detail
        public struct PRSubject_Detail: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRSubject_Detail(
                    id: id
                )
            }
        }

        /// desc: VoIP:语音通话界面
        /// view: VoIPViewController
        /// path: /voip
        /// name: voip
        public struct PRVoip: Parameterible {
            var uid: String

            init(
                uid: String
            ) {
                self.uid = uid
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _uid: String?
                if let value = dict["uid"] {
                    _uid = value
                }
                guard
                    let uid = _uid
                else { return nil }
                return PRVoip(
                    uid: uid
                )
            }
        }

        /// desc: 语音匹配
        /// view: VoiceMatchViewController
        /// path: /match/voice
        /// name: match_voice
        public struct PRMatch_Voice: Parameterible {
            var id: Int64

            init(
                id: Int64
            ) {
                self.id = id
            }

            public static func instance(by queryItem: [String: String]) -> Self? {
                let items = queryItem.map({ ($0.key.lowercased(), $0.value) })
                let dict = [String: String](uniqueKeysWithValues: items)

                var _id: Int64?
                if let value = dict["id"] {
                    _id = Int64(value)
                }
                guard
                    let id = _id
                else { return nil }
                return PRMatch_Voice(
                    id: id
                )
            }
        }

    }
