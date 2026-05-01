# 全国景点打卡系统 - 项目介绍文档

## 📋 项目概述

**项目名称**：全国景点打卡系统（星程长沙）  
**技术架构**：Vue 3 + Spring Boot 3 + MySQL  
**项目类型**：综合性旅游服务平台  
**开发时间**：2025-2026年  

本项目是一个现代化的旅游服务平台，专注于为用户提供景点查询、打卡记录、行程规划、酒店餐厅预订等功能。项目以长沙为试点城市，支持全国景点数据，集成了AI助手、地图可视化、数据可视化等先进功能。

---

## 🏗️ 技术架构

### 后端技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| Spring Boot | 3.1.5 | 核心框架 |
| Java | 17 | 编程语言 |
| MyBatis | 3.0.3 | 持久层框架 |
| MySQL | 8.0.40 | 关系型数据库 |
| JWT | 0.11.5 | 用户认证 |
| jBCrypt | 0.4 | 密码加密 |
| OkHttp | 4.12.0 | HTTP客户端 |
| Gson | 2.10.1 | JSON解析 |
| H2 Database | - | 测试数据库 |

### 前端技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| Vue | 3.3.4 | 前端框架 |
| Vue Router | 4.2.4 | 路由管理 |
| Vuex | 4.1.0 | 状态管理 |
| Element Plus | 2.3.9 | UI组件库 |
| Leaflet | 1.9.4 | 地图组件 |
| ECharts | 5.4.3 | 图表库 |
| vue-echarts | 6.6.1 | Vue图表组件 |
| Axios | 1.5.0 | HTTP客户端 |

---

## 📁 项目结构

```
websc1/
├── frontend/                    # 前端Vue项目
│   ├── src/
│   │   ├── api/                # API接口定义
│   │   ├── assets/             # 静态资源和样式
│   │   ├── components/         # 公共组件
│   │   ├── router/             # 路由配置
│   │   ├── store/              # Vuex状态管理
│   │   ├── utils/              # 工具函数
│   │   └── views/              # 页面组件
│   └── package.json
│
├── src/                         # 后端Spring Boot项目
│   └── main/
│       ├── java/cn/edu/csuft/websc/
│       │   ├── controller/     # 控制器层
│       │   ├── service/        # 服务层
│       │   ├── mapper/         # MyBatis映射器
│       │   ├── entity/         # 实体类
│       │   ├── config/         # 配置类
│       │   ├── util/           # 工具类
│       │   ├── handler/        # 异常处理
│       │   └── interceptor/    # 拦截器
│       └── resources/
│           ├── mapper/         # MyBatis XML映射
│           ├── static/         # 静态资源
│           └── application.properties
│
├── doc/                         # 项目文档
├── tour_travel.sql              # 数据库初始化脚本
└── pom.xml                      # Maven配置
```

---

## 🎯 核心功能

### 1. 用户认证模块
- ✅ 用户注册（用户名+密码，BCrypt加密）
- ✅ 用户登录（JWT Token认证）
- ✅ 用户登出
- ✅ 获取当前用户信息

### 2. 景点查询模块
- ✅ 浏览景点列表（支持分页、按城市/分类筛选）
- ✅ 搜索景点（关键词搜索）
- ✅ 查看景点详情（包含实时信息）
- ✅ 景点分类浏览
- ✅ 景点地图可视化

### 3. 打卡功能模块
- ✅ 创建打卡记录（支持图片上传，Base64格式）
- ✅ 查看景点打卡列表
- ✅ 点赞打卡
- ✅ 删除打卡（仅创建者）

### 4. 评价功能模块
- ✅ 发表景点评价（1-5星评分+文字评价）
- ✅ 查看评价列表
- ✅ 点赞评价
- ✅ 回复评价

### 5. 收藏功能模块
- ✅ 收藏景点
- ✅ 取消收藏
- ✅ 查看收藏列表

### 6. 行程规划模块
- ✅ 创建旅游行程
- ✅ 添加景点/酒店/餐厅到行程
- ✅ 拖拽排序功能
- ✅ 查看行程详情
- ✅ 删除行程
- ✅ 综合路线规划（支持景点、酒店、餐厅混合规划）

### 7. 餐厅和酒店模块
- ✅ 浏览酒店列表
- ✅ 浏览餐厅列表
- ✅ 按区域/价格/评分筛选
- ✅ 查看详情

### 8. AI助手模块
- ✅ 集成Coze AI聊天接口
- ✅ 智能旅行建议

### 9. 可视化模块
- ✅ 数据统计图表（ECharts）
- ✅ 地图可视化（Leaflet）

---

## 📊 数据库设计

### 核心数据表

| 表名 | 中文名 | 主要功能 |
|------|--------|----------|
| `user` | 用户表 | 存储用户基本信息 |
| `attraction` | 景点表 | 存储全国景点信息 |
| `attraction_realtime` | 景点实时信息表 | 存储景点实时人流、天气等 |
| `attraction_review` | 景点评价表 | 存储用户评价 |
| `review_comment` | 评价回复表 | 存储评价的回复 |
| `review_like` | 评价点赞表 | 存储评价点赞记录 |
| `attraction_checkin` | 景点打卡表 | 存储打卡记录 |
| `user_favorite` | 用户收藏表 | 存储收藏记录 |
| `hotel` | 酒店表 | 存储酒店信息 |
| `hotel_booking` | 酒店预订表 | 存储酒店预订记录 |
| `hotel_review` | 酒店评价表 | 存储酒店评价 |
| `restaurant` | 餐厅表 | 存储餐厅信息 |
| `restaurant_review` | 餐厅评价表 | 存储餐厅评价 |
| `itinerary` | 行程表 | 存储用户行程 |
| `itinerary_attraction` | 行程景点关联表 | 行程中的景点 |
| `itinerary_hotel` | 行程酒店关联表 | 行程中的酒店 |
| `itinerary_restaurant` | 行程餐厅关联表 | 行程中的餐厅 |

### 数据库特点
- ✅ 使用UTF8MB4字符集，支持完整的Unicode字符
- ✅ 合理的索引设计，优化查询性能
- ✅ 外键约束保证数据完整性
- ✅ 时间戳记录创建和更新时间
- ✅ 唯一约束防止重复数据

---

## 🌐 API接口设计

### 接口规范
- **基础URL**：`/api`
- **认证方式**：JWT Bearer Token
- **响应格式**：统一JSON格式

### 主要接口分类

#### 认证接口
- `POST /auth/login` - 用户登录
- `POST /auth/register` - 用户注册
- `GET /auth/user` - 获取当前用户信息

#### 景点接口
- `GET /attractions` - 获取景点列表
- `GET /attractions/{id}` - 获取景点详情
- `GET /attractions/search` - 搜索景点
- `GET /attractions/categories` - 获取所有分类
- `GET /attractions/map-data` - 获取地图数据

#### 打卡接口
- `POST /attractions/{id}/checkins` - 创建打卡
- `GET /attractions/{id}/checkins` - 获取打卡列表
- `POST /checkins/{id}/like` - 点赞打卡
- `DELETE /checkins/{id}` - 删除打卡

#### 评价接口
- `POST /attractions/{id}/reviews` - 发表评价
- `GET /attractions/{id}/reviews` - 获取评价列表
- `POST /reviews/{id}/like` - 点赞评价
- `DELETE /reviews/{id}/like` - 取消点赞评价
- `POST /reviews/{id}/comments` - 回复评价
- `GET /reviews/{id}/comments` - 获取评价回复

#### 收藏接口
- `GET /favorites` - 获取收藏列表
- `POST /favorites/{attractionId}` - 收藏景点
- `DELETE /favorites/{attractionId}` - 取消收藏

#### 行程接口
- `POST /itineraries` - 创建行程
- `GET /itineraries` - 获取行程列表
- `GET /itineraries/{id}` - 获取行程详情
- `PUT /itineraries/{id}` - 更新行程
- `DELETE /itineraries/{id}` - 删除行程
- `POST /itineraries/{id}/attractions` - 添加景点到行程
- `PUT /itineraries/{id}/attractions/sort` - 更新景点排序
- `POST /itineraries/{id}/hotels` - 添加酒店到行程
- `POST /itineraries/{id}/restaurants` - 添加餐厅到行程
- `GET /itineraries/{id}/all-items` - 获取所有项目（路线规划）

#### AI助手接口
- `POST /coze/chat` - AI聊天

---

## 🎨 设计系统

### 设计理念
**新中式湘韵 + 现代简约文旅风**

### 配色系统

#### 主色调 - 长沙专属配色
- **星城黛青** `#165DFF`：导航栏、按钮、选中状态
- **湘橘暖橙** `#F59E0B`：强调色、功能入口、收藏/点赞按钮

#### 辅助色 - 食住行功能区分
- **湘味红** `#E64340`：美食/餐厅模块
- **雅灰蓝** `#3690CF`：酒店模块
- **岳麓青** `#18908F`：景点/路线/地图模块

#### 中性色
- **背景主色**：`#FFFFFF`（纯白）
- **区块分隔**：`#F9FAFB`（极浅灰）
- **深灰黑**：`#1F2328`（主标题）
- **中灰**：`#4E5969`（正文）
- **浅灰**：`#86909C`（备注小字）

### 组件规范

#### 圆角系统
- 小：4px（标签、小按钮）
- 中：8px（按钮、输入框、卡片）
- 大：12px（对话框、大卡片）
- 特大：16px（特殊区块）
- 圆：50%（头像、徽章）

#### 阴影系统
- 轻：`0 2px 8px rgba(0, 0, 0, 0.04)`（默认卡片）
- 中：`0 4px 16px rgba(0, 0, 0, 0.08)`（hover状态）
- 重：`0 8px 32px rgba(0, 0, 0, 0.12)`（弹窗）

---

## 🚀 快速开始

### 环境要求
- JDK 17+
- Node.js 16+
- MySQL 8.0+
- Maven 3.6+

### 后端启动
```bash
# 1. 配置数据库
# 修改 src/main/resources/application.properties 中的数据库连接信息

# 2. 初始化数据库
mysql -u root -p < tour_travel.sql

# 3. 启动后端服务
cd d:/websc1
mvn clean package
java -jar target/websc-0.0.1-SNAPSHOT.jar
```

### 前端启动
```bash
# 1. 安装依赖
cd d:/websc1/frontend
npm install

# 2. 启动开发服务器
npm run serve

# 3. 访问 http://localhost:8080
```

---

## 📖 使用文档

### 默认账户
- **管理员**：用户名 `admin` / 密码 `admin123`
- **普通用户**：用户名 `user` / 密码 `user123`

### 主要页面

| 路径 | 页面名称 | 功能描述 |
|------|----------|----------|
| `/` | 首页 | 系统主页面，景点推荐 |
| `/login` | 登录页 | 用户登录 |
| `/attractions` | 景点列表 | 景点浏览、搜索、筛选 |
| `/attractions/:id` | 景点详情 | 景点详细信息、评价、打卡 |
| `/restaurants` | 餐厅列表 | 餐厅浏览和筛选 |
| `/hotels` | 酒店列表 | 酒店浏览和筛选 |
| `/map` | 地图页 | 景点地图可视化 |
| `/itinerary` | 行程规划 | 创建和管理行程 |
| `/explore` | 探索页 | 发现新景点 |
| `/favorites` | 收藏列表 | 用户收藏的景点 |
| `/visualization` | 数据可视化 | 统计图表展示 |
| `/ai-assistant` | AI助手 | 智能旅行助手 |
| `/profile` | 个人中心 | 用户信息管理 |

---

## ✨ 项目特色

1. **完整的旅游生态系统**：集成景点、酒店、餐厅三大模块
2. **智能行程规划**：支持多类型地点混合规划和路线优化
3. **AI助手集成**：提供智能旅行建议
4. **地图可视化**：基于Leaflet的交互式地图
5. **现代化UI设计**：新中式湘韵风格，响应式布局
6. **安全认证**：JWT + BCrypt加密
7. **丰富的互动功能**：打卡、评价、收藏、点赞
8. **数据可视化**：ECharts图表展示

---

## 🔧 技术亮点

1. **前后端分离架构**：Vue 3 + Spring Boot
2. **RESTful API设计**：清晰的接口规范
3. **数据库设计规范**：合理的表结构和索引设计
4. **JWT无状态认证**：可扩展性强
5. **图片缓存机制**：提升前端性能
6. **拖拽排序功能**：直观的用户体验
7. **响应式设计**：支持多终端访问

---

## 📝 开发团队

**项目单位**：中南林业科技大学  
**开发时间**：2025-2026年  

---

## 📄 许可证

本项目仅供学习和研究使用。

---

## 🔗 相关文档

- [API接口规范](./doc/API接口规范.md)
- [数据库逻辑模型](./doc/数据库逻辑模型.md)
- [软件需求说明书](./doc/软件需求说明书.md)
- [需求规格说明书](./doc/需求规格说明书.md)
- [项目开发计划书](./doc/项目开发计划书.md)
- [行程功能指南](./ITINERARY_FEATURE_GUIDE.md)
- [前端设计系统](./frontend/DESIGN_SYSTEM.md)

---

**最后更新**：2026年1月17日
