CREATE VIEW logistics_actstock_view AS
    SELECT supply_point_id, sum(quantity)
    FROM logistics_productstock product_id
    WHERE product_id IN(SELECT id FROM logistics_product WHERE sms_code IN('sp','tp','ep','fp'))
    GROUP BY supply_point_id
    ORDER BY supply_point_id;
