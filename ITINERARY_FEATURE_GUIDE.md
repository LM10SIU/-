# 行程规划 - 景点、酒店、餐厅综合路线规划

## 功能概述

行程规划模块已升级，现在支持同时规划**景点、酒店、餐厅**的完整旅游行程。用户可以在一个行程中添加不同类型的地点，并统一进行路线规划。

## 数据库结构

### 新增表

#### 1. itinerary_hotel（行程酒店关联表）
```sql
CREATE TABLE itinerary_hotel (
    id BIGINT PRIMARY KEY,
    itinerary_id BIGINT,        -- 行程ID
    hotel_id BIGINT,            -- 酒店ID
    day_number INT,             -- 第几天
    visit_order INT,            -- 访问顺序
    check_in_date VARCHAR(20),  -- 入住日期
    check_out_date VARCHAR(20), -- 退房日期
    create_time DATETIME
);
```

#### 2. itinerary_restaurant（行程餐厅关联表）
```sql
CREATE TABLE itinerary_restaurant (
    id BIGINT PRIMARY KEY,
    itinerary_id BIGINT,        -- 行程ID
    restaurant_id BIGINT,        -- 餐厅ID
    day_number INT,             -- 第几天
    visit_order INT,            -- 访问顺序
    meal_type VARCHAR(20),      -- 用餐类型：早餐/午餐/晚餐
    create_time DATETIME
);
```

## 后端 API

### 酒店管理

#### 1. 获取行程中的酒店列表
```
GET /api/itineraries/{id}/hotels
```

**响应示例：**
```json
{
  "code": 200,
  "data": [
    {
      "id": 1,
      "itineraryId": 1,
      "hotelId": 101,
      "dayNumber": 1,
      "visitOrder": 2,
      "checkInDate": "2026-01-20",
      "checkOutDate": "2026-01-21",
      "name": "长沙君悦酒店",
      "category": "豪华型",
      "district": "天心区",
      "imageUrl": "https://...",
      "longitude": 112.9388,
      "latitude": 28.2282,
      "pricePerNight": 880,
      "rating": 4.8
    }
  ]
}
```

#### 2. 添加酒店到行程
```
POST /api/itineraries/{id}/hotels
Authorization: Bearer {token}

Request Body:
{
  "hotelId": 101,
  "sortOrder": 1,           // 可选，指定排序位置
  "checkInDate": "2026-01-20",
  "checkOutDate": "2026-01-21"
}
```

#### 3. 从行程中移除酒店
```
DELETE /api/itineraries/{id}/hotels/{hotelId}
Authorization: Bearer {token}
```

#### 4. 更新酒店排序
```
PUT /api/itineraries/{id}/hotels/sort
Authorization: Bearer {token}

Request Body:
[
  {
    "hotelId": 101,
    "visitOrder": 1,
    "dayNumber": 1,
    "checkInDate": "2026-01-20",
    "checkOutDate": "2026-01-21"
  }
]
```

### 餐厅管理

#### 1. 获取行程中的餐厅列表
```
GET /api/itineraries/{id}/restaurants
```

**响应示例：**
```json
{
  "code": 200,
  "data": [
    {
      "id": 1,
      "itineraryId": 1,
      "restaurantId": 201,
      "dayNumber": 1,
      "visitOrder": 3,
      "mealType": "午餐",
      "name": "火宫殿（坡子街店）",
      "category": "湘菜",
      "district": "天心区",
      "imageUrl": "https://...",
      "longitude": 112.9388,
      "latitude": 28.2282,
      "avgPrice": 88,
      "rating": 4.6,
      "specialties": "臭豆腐,糖油粑粑,口味虾"
    }
  ]
}
```

#### 2. 添加餐厅到行程
```
POST /api/itineraries/{id}/restaurants
Authorization: Bearer {token}

Request Body:
{
  "restaurantId": 201,
  "sortOrder": 1,        // 可选
  "mealType": "午餐"      // 早餐/午餐/晚餐
}
```

#### 3. 从行程中移除餐厅
```
DELETE /api/itineraries/{id}/restaurants/{restaurantId}
Authorization: Bearer {token}
```

#### 4. 更新餐厅排序
```
PUT /api/itineraries/{id}/restaurants/sort
Authorization: Bearer {token}

Request Body:
[
  {
    "restaurantId": 201,
    "visitOrder": 1,
    "dayNumber": 1,
    "mealType": "午餐"
  }
]
```

### 综合路线规划

#### 获取行程中所有项目（景点、酒店、餐厅）
```
GET /api/itineraries/{id}/all-items
```

**响应示例：**
```json
{
  "code": 200,
  "data": {
    "attractions": [
      {
        "id": 1,
        "itemId": 1,
        "type": "attraction",
        "name": "橘子洲头",
        "dayNumber": 1,
        "visitOrder": 1,
        "longitude": 112.9388,
        "latitude": 28.2282,
        "category": "自然风光",
        "district": "岳麓区"
      }
    ],
    "hotels": [
      {
        "id": 1,
        "itemId": 101,
        "type": "hotel",
        "name": "长沙君悦酒店",
        "dayNumber": 1,
        "visitOrder": 2,
        "longitude": 112.9488,
        "latitude": 28.2382
      }
    ],
    "restaurants": [
      {
        "id": 1,
        "itemId": 201,
        "type": "restaurant",
        "name": "火宫殿",
        "dayNumber": 1,
        "visitOrder": 3,
        "longitude": 112.9588,
        "latitude": 28.2482,
        "mealType": "午餐"
      }
    ]
  }
}
```

## 前端集成

### 使用场景示例

```javascript
// 1. 添加酒店到行程
async function addHotelToItinerary(itineraryId, hotelId) {
  const response = await api.post(`/itineraries/${itineraryId}/hotels`, {
    hotelId: hotelId,
    sortOrder: null,  // 自动排序
    checkInDate: '2026-01-20',
    checkOutDate: '2026-01-21'
  });
  return response.data;
}

// 2. 添加餐厅到行程
async function addRestaurantToItinerary(itineraryId, restaurantId, mealType) {
  const response = await api.post(`/itineraries/${itineraryId}/restaurants`, {
    restaurantId: restaurantId,
    sortOrder: null,
    mealType: mealType  // '早餐' | '午餐' | '晚餐'
  });
  return response.data;
}

// 3. 获取完整的行程内容用于路线规划
async function getAllItineraryItems(itineraryId) {
  const response = await api.get(`/itineraries/${itineraryId}/all-items`);
  const { attractions, hotels, restaurants } = response.data.data;

  // 合并所有项目并按 visitOrder 排序
  const allItems = [
    ...attractions.map(a => ({ ...a, type: 'attraction' })),
    ...hotels.map(h => ({ ...h, type: 'hotel' })),
    ...restaurants.map(r => ({ ...r, type: 'restaurant' }))
  ].sort((a, b) => a.visitOrder - b.visitOrder);

  return allItems;
}

// 4. 使用所有项目进行路线规划
async function planRouteForItinerary(itineraryId) {
  const allItems = await getAllItineraryItems(itineraryId);

  // 筛选有坐标的项目
  const validItems = allItems.filter(
    item => item.longitude && item.latitude
  );

  if (validItems.length < 2) {
    ElMessage.warning('至少需要2个有坐标的地点才能规划路线');
    return;
  }

  // 调用高德地图API规划路线
  const start = `${validItems[0].longitude},${validItems[0].latitude}`;
  const end = `${validItems[validItems.length - 1].longitude},${validItems[validItems.length - 1].latitude}`;
  const waypoints = validItems.slice(1, -1)
    .map(item => `${item.longitude},${item.latitude}`)
    .join(';');

  const response = await api.get(`/map/driving?origin=${start}&destination=${end}&waypoints=${waypoints}`);

  // 在地图上绘制标记时，根据类型使用不同颜色
  validItems.forEach((item, index) => {
    const markerColor = getMarkerColorByType(item.type);
    const iconUrl = getMarkerIconByType(item.type, index);

    // 创建标记...
  });
}

// 根据类型获取标记颜色
function getMarkerColorByType(type) {
  const colors = {
    attraction: '#165DFF',  // 星城黛青 - 景点
    hotel: '#3690CF',       // 雅灰蓝 - 酒店
    restaurant: '#E64340'   // 湘味红 - 餐厅
  };
  return colors[type] || '#165DFF';
}

// 根据类型获取标记图标
function getMarkerIconByType(type, index) {
  const iconMap = {
    attraction: `https://webapi.amap.com/theme/v1.3/markers/n/mark_b${index + 1}.png`,
    hotel: `https://webapi.amap.com/theme/v1.3/markers/n/mark_h${index + 1}.png`,
    restaurant: `https://webapi.amap.com/theme/v1.3/markers/n/mark_r${index + 1}.png`
  };
  return iconMap[type] || iconMap.attraction;
}
```

## UI 设计建议

### 行程管理对话框
应该包含三个标签页：
1. **景点管理** - 原有功能
2. **酒店管理** - 新增
   - 显示酒店列表
   - 拖拽排序
   - 设置入住/退房日期
   - 移除功能
3. **餐厅管理** - 新增
   - 显示餐厅列表
   - 拖拽排序
   - 设置用餐类型（早餐/午餐/晚餐）
   - 移除功能

### 路线规划地图
- 不同类型地点使用不同颜色标记
  - 景点：星城黛青 #165DFF
  - 酒店：雅灰蓝 #3690CF
  - 餐厅：湘味红 #E64340
- 显示每个地点的类型图标
- 信息窗口显示完整的地点信息

## 数据库初始化

执行以下SQL脚本创建新表：

```bash
# MySQL命令行
mysql -u root -p your_database < itinerary_hotel_restaurant_tables.sql
```

或直接在MySQL客户端中执行：
```sql
source itinerary_hotel_restaurant_tables.sql;
```

## 测试数据

可以添加一些测试酒店和餐厅到行程中：

```javascript
// 添加长沙君悦酒店
await api.post('/itineraries/1/hotels', {
  hotelId: 1,
  checkInDate: '2026-01-20',
  checkOutDate: '2026-01-21'
});

// 添加火宫殿餐厅
await api.post('/itineraries/1/restaurants', {
  restaurantId: 1,
  mealType: '午餐'
});

// 获取完整行程用于路线规划
const response = await api.get('/itineraries/1/all-items');
console.log(response.data.data);
```

## 注意事项

1. **坐标验证**：只有有经纬度坐标的地点才能参与路线规划
2. **排序一致性**：所有类型的地点都使用 `visitOrder` 进行统一排序
3. **类型标识**：在路线规划时，需要区分地点类型以使用不同的地图标记
4. **级联删除**：删除行程时，会自动删除关联的酒店和餐厅记录

## 后续优化建议

1. **智能推荐**：根据景点位置推荐附近的酒店和餐厅
2. **时间优化**：考虑酒店的入住/退房时间、餐厅的营业时间
3. **预算计算**：自动计算行程总费用（门票+住宿+餐饮）
4. **路线优化**：智能排序以减少行程总路程
