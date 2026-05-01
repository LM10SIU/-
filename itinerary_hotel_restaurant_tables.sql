-- 行程酒店关联表
CREATE TABLE IF NOT EXISTS itinerary_hotel (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    itinerary_id BIGINT NOT NULL COMMENT '行程ID',
    hotel_id BIGINT NOT NULL COMMENT '酒店ID',
    day_number INT DEFAULT 1 COMMENT '第几天',
    visit_order INT NOT NULL COMMENT '访问顺序',
    check_in_date VARCHAR(20) COMMENT '入住日期',
    check_out_date VARCHAR(20) COMMENT '退房日期',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    INDEX idx_itinerary_id (itinerary_id),
    INDEX idx_hotel_id (hotel_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行程酒店关联表';

-- 行程餐厅关联表
CREATE TABLE IF NOT EXISTS itinerary_restaurant (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    itinerary_id BIGINT NOT NULL COMMENT '行程ID',
    restaurant_id BIGINT NOT NULL COMMENT '餐厅ID',
    day_number INT DEFAULT 1 COMMENT '第几天',
    visit_order INT NOT NULL COMMENT '访问顺序',
    meal_type VARCHAR(20) COMMENT '用餐类型：早餐/午餐/晚餐',
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    INDEX idx_itinerary_id (itinerary_id),
    INDEX idx_restaurant_id (restaurant_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='行程餐厅关联表';
