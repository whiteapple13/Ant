-- label(灰转黑)
DROP TABLE IF EXISTS wen_train_label;
CREATE TABLE IF NOT EXISTS wen_train_label AS
SELECT event_id, IF(is_fraud = 0, 0, 1) AS is_fraud
FROM atec_1000w_ins_data;


-- 基础特征
    -- (11) wen_train_one_hot
    -- (30) wen_train_ic_features
    -- (29) wen_train_discrete_order(需要先执行字段排序.odps)
-- 比较特征
    -- (60) wen_train_compare_last_hour
    -- (60) wen_train_compare_last_day
-- 历史特征
    -- hour_0
        -- wen_train_hour_0_feature_0
        -- wen_train_hour_0_feature_1
        -- wen_train_hour_0_feature_2
    -- hour_1
        -- wen_train_hour_1_feature_0
        -- wen_train_hour_1_feature_1
        -- wen_train_hour_1_feature_2
    -- day_1
        -- wen_train_day_order_1_feature_0
        -- wen_train_day_order_1_feature_1
        -- wen_train_day_order_1_feature_2

SELECT  wen_train_label.event_id AS event_id
       ,is_fraud
,is_one_people_encode
    ,mobile_oper_platform_oh1
    ,mobile_oper_platform_oh2
    ,mobile_oper_platform_oh3
    ,operation_channel_oh1
    ,operation_channel_oh2
    ,operation_channel_oh3
    ,operation_channel_oh4
    ,is_peer_pay_null
    ,is_peer_pay_oh1
    ,is_peer_pay_oh2
,ic_prov
    ,icb_prov
    ,icm_prov
    ,icc_prov
    ,ccb_prov
    ,ccm_prov
    ,ccc_prov
    ,cbcm_prov
    ,cbcc_prov
    ,cmcc_prov
    ,pi_prov
    ,pc_prov
    ,pcb_prov
    ,pcm_prov
    ,pcc_prov
    ,ic_city
    ,icb_city
    ,icm_city
    ,icc_city
    ,ccb_city
    ,ccm_city
    ,ccc_city
    ,cbcm_city
    ,cbcc_city
    ,cmcc_city
    ,pi_city
    ,pc_city
    ,pcb_city
    ,pcm_city
    ,pcc_city
,client_ip_row_number
    ,network_row_number
    ,device_sign_row_number
    ,info_1_row_number
    ,info_2_row_number
    ,ip_prov_row_number
    ,ip_city_row_number
    ,cert_prov_row_number
    ,cert_city_row_number
    ,card_bin_prov_row_number
    ,card_bin_city_row_number
    ,card_mobile_prov_row_number
    ,card_mobile_city_row_number
    ,card_cert_prov_row_number
    ,card_cert_city_row_number
    ,is_one_people_row_number
    ,mobile_oper_platform_row_number
    ,operation_channel_row_number
    ,pay_scene_row_number
    ,amt_row_number
    ,card_cert_no_row_number
    ,income_card_no_row_number
    ,income_card_cert_no_row_number
    ,income_card_mobile_row_number
    ,income_card_bank_code_row_number
    ,province_row_number
    ,city_row_number
    ,is_peer_pay_row_number
    ,version_row_number
,client_ip_last_hour_eq_avg
    ,network_last_hour_eq_avg
    ,device_sign_last_hour_eq_avg
    ,info_1_last_hour_eq_avg
    ,info_2_last_hour_eq_avg
    ,ip_prov_last_hour_eq_avg
    ,ip_city_last_hour_eq_avg
    ,cert_prov_last_hour_eq_avg
    ,cert_city_last_hour_eq_avg
    ,card_bin_prov_last_hour_eq_avg
    ,card_bin_city_last_hour_eq_avg
    ,card_mobile_prov_last_hour_eq_avg
    ,card_mobile_city_last_hour_eq_avg
    ,card_cert_prov_last_hour_eq_avg
    ,card_cert_city_last_hour_eq_avg
    ,is_one_people_last_hour_eq_avg
    ,mobile_oper_platform_last_hour_eq_avg
    ,operation_channel_last_hour_eq_avg
    ,pay_scene_last_hour_eq_avg
    ,amt_last_hour_eq_avg
    ,card_cert_no_last_hour_eq_avg
    ,opposing_id_last_hour_eq_avg
    ,income_card_no_last_hour_eq_avg
    ,income_card_cert_no_last_hour_eq_avg
    ,income_card_mobile_last_hour_eq_avg
    ,income_card_bank_code_last_hour_eq_avg
    ,province_last_hour_eq_avg
    ,city_last_hour_eq_avg
    ,is_peer_pay_last_hour_eq_avg
    ,version_last_hour_eq_avg
    ,client_ip_last_hour_eq_sum
    ,network_last_hour_eq_sum
    ,device_sign_last_hour_eq_sum
    ,info_1_last_hour_eq_sum
    ,info_2_last_hour_eq_sum
    ,ip_prov_last_hour_eq_sum
    ,ip_city_last_hour_eq_sum
    ,cert_prov_last_hour_eq_sum
    ,cert_city_last_hour_eq_sum
    ,card_bin_prov_last_hour_eq_sum
    ,card_bin_city_last_hour_eq_sum
    ,card_mobile_prov_last_hour_eq_sum
    ,card_mobile_city_last_hour_eq_sum
    ,card_cert_prov_last_hour_eq_sum
    ,card_cert_city_last_hour_eq_sum
    ,is_one_people_last_hour_eq_sum
    ,mobile_oper_platform_last_hour_eq_sum
    ,operation_channel_last_hour_eq_sum
    ,pay_scene_last_hour_eq_sum
    ,amt_last_hour_eq_sum
    ,card_cert_no_last_hour_eq_sum
    ,opposing_id_last_hour_eq_sum
    ,income_card_no_last_hour_eq_sum
    ,income_card_cert_no_last_hour_eq_sum
    ,income_card_mobile_last_hour_eq_sum
    ,income_card_bank_code_last_hour_eq_sum
    ,province_last_hour_eq_sum
    ,city_last_hour_eq_sum
    ,is_peer_pay_last_hour_eq_sum
    ,version_last_hour_eq_sum
,client_ip_last_day_eq_avg
    ,network_last_day_eq_avg
    ,device_sign_last_day_eq_avg
    ,info_1_last_day_eq_avg
    ,info_2_last_day_eq_avg
    ,ip_prov_last_day_eq_avg
    ,ip_city_last_day_eq_avg
    ,cert_prov_last_day_eq_avg
    ,cert_city_last_day_eq_avg
    ,card_bin_prov_last_day_eq_avg
    ,card_bin_city_last_day_eq_avg
    ,card_mobile_prov_last_day_eq_avg
    ,card_mobile_city_last_day_eq_avg
    ,card_cert_prov_last_day_eq_avg
    ,card_cert_city_last_day_eq_avg
    ,is_one_people_last_day_eq_avg
    ,mobile_oper_platform_last_day_eq_avg
    ,operation_channel_last_day_eq_avg
    ,pay_scene_last_day_eq_avg
    ,amt_last_day_eq_avg
    ,card_cert_no_last_day_eq_avg
    ,opposing_id_last_day_eq_avg
    ,income_card_no_last_day_eq_avg
    ,income_card_cert_no_last_day_eq_avg
    ,income_card_mobile_last_day_eq_avg
    ,income_card_bank_code_last_day_eq_avg
    ,province_last_day_eq_avg
    ,city_last_day_eq_avg
    ,is_peer_pay_last_day_eq_avg
    ,version_last_day_eq_avg
    ,client_ip_last_day_eq_sum
    ,network_last_day_eq_sum
    ,device_sign_last_day_eq_sum
    ,info_1_last_day_eq_sum
    ,info_2_last_day_eq_sum
    ,ip_prov_last_day_eq_sum
    ,ip_city_last_day_eq_sum
    ,cert_prov_last_day_eq_sum
    ,cert_city_last_day_eq_sum
    ,card_bin_prov_last_day_eq_sum
    ,card_bin_city_last_day_eq_sum
    ,card_mobile_prov_last_day_eq_sum
    ,card_mobile_city_last_day_eq_sum
    ,card_cert_prov_last_day_eq_sum
    ,card_cert_city_last_day_eq_sum
    ,is_one_people_last_day_eq_sum
    ,mobile_oper_platform_last_day_eq_sum
    ,operation_channel_last_day_eq_sum
    ,pay_scene_last_day_eq_sum
    ,amt_last_day_eq_sum
    ,card_cert_no_last_day_eq_sum
    ,opposing_id_last_day_eq_sum
    ,income_card_no_last_day_eq_sum
    ,income_card_cert_no_last_day_eq_sum
    ,income_card_mobile_last_day_eq_sum
    ,income_card_bank_code_last_day_eq_sum
    ,province_last_day_eq_sum
    ,city_last_day_eq_sum
    ,is_peer_pay_last_day_eq_sum
    ,version_last_day_eq_sum
,client_ip_dcount
    ,network_dcount
    ,device_sign_dcount
    ,info_1_dcount
    ,info_2_dcount
    ,ip_prov_dcount
    ,ip_city_dcount
    ,cert_prov_dcount
    ,cert_city_dcount
    ,card_bin_prov_dcount
    ,card_bin_city_dcount
    ,card_mobile_prov_dcount
    ,card_mobile_city_dcount
    ,card_cert_prov_dcount
    ,card_cert_city_dcount
    ,is_one_people_dcount
    ,mobile_oper_platform_dcount
    ,operation_channel_dcount
    ,pay_scene_dcount
    ,amt_dcount
    ,card_cert_no_dcount
    ,opposing_id_dcount
    ,income_card_no_dcount
    ,income_card_cert_no_dcount
    ,income_card_mobile_dcount
    ,income_card_bank_code_dcount
    ,province_dcount
    ,city_dcount
    ,is_peer_pay_dcount
    ,version_dcount
,deno
    ,client_ip_num
    ,network_num
    ,device_sign_num
    ,info_1_num
    ,info_2_num
    ,ip_prov_num
    ,ip_city_num
    ,cert_prov_num
    ,cert_city_num
    ,card_bin_prov_num
    ,card_bin_city_num
    ,card_mobile_prov_num
    ,card_mobile_city_num
    ,card_cert_prov_num
    ,card_cert_city_num
    ,is_one_people_num
    ,mobile_oper_platform_num
    ,operation_channel_num
    ,pay_scene_num
    ,amt_num
    ,card_cert_no_num
    ,opposing_id_num
    ,income_card_no_num
    ,income_card_cert_no_num
    ,income_card_mobile_num
    ,income_card_bank_code_num
    ,province_num
    ,city_num
    ,is_peer_pay_num
    ,version_num
    ,client_ip_rate
    ,network_rate
    ,device_sign_rate
    ,info_1_rate
    ,info_2_rate
    ,ip_prov_rate
    ,ip_city_rate
    ,cert_prov_rate
    ,cert_city_rate
    ,card_bin_prov_rate
    ,card_bin_city_rate
    ,card_mobile_prov_rate
    ,card_mobile_city_rate
    ,card_cert_prov_rate
    ,card_cert_city_rate
    ,is_one_people_rate
    ,mobile_oper_platform_rate
    ,operation_channel_rate
    ,pay_scene_rate
    ,amt_rate
    ,card_cert_no_rate
    ,opposing_id_rate
    ,income_card_no_rate
    ,income_card_cert_no_rate
    ,income_card_mobile_rate
    ,income_card_bank_code_rate
    ,province_rate
    ,city_rate
    ,is_peer_pay_rate
    ,version_rate
,amt_avg
    ,amt_min
    ,amt_max
    ,amt_sum
    ,amt_median
    ,amt_stddev
    ,amt_stddev_samp
    ,amt_skewness
    ,amt_kurtosis
,client_ip_dount_hour_1
    ,network_dount_hour_1
    ,device_sign_dount_hour_1
    ,info_1_dount_hour_1
    ,info_2_dount_hour_1
    ,ip_prov_dount_hour_1
    ,ip_city_dount_hour_1
    ,cert_prov_dount_hour_1
    ,cert_city_dount_hour_1
    ,card_bin_prov_dount_hour_1
    ,card_bin_city_dount_hour_1
    ,card_mobile_prov_dount_hour_1
    ,card_mobile_city_dount_hour_1
    ,card_cert_prov_dount_hour_1
    ,card_cert_city_dount_hour_1
    ,is_one_people_dount_hour_1
    ,mobile_oper_platform_dount_hour_1
    ,operation_channel_dount_hour_1
    ,pay_scene_dount_hour_1
    ,amt_dount_hour_1
    ,card_cert_no_dount_hour_1
    ,opposing_id_dount_hour_1
    ,income_card_no_dount_hour_1
    ,income_card_cert_no_dount_hour_1
    ,income_card_mobile_dount_hour_1
    ,income_card_bank_code_dount_hour_1
    ,province_dount_hour_1
    ,city_dount_hour_1
    ,is_peer_pay_dount_hour_1
    ,version_dount_hour_1
,deno_hour_1
    ,client_ip_num_hour_1
    ,network_num_hour_1
    ,device_sign_num_hour_1
    ,info_1_num_hour_1
    ,info_2_num_hour_1
    ,ip_prov_num_hour_1
    ,ip_city_num_hour_1
    ,cert_prov_num_hour_1
    ,cert_city_num_hour_1
    ,card_bin_prov_num_hour_1
    ,card_bin_city_num_hour_1
    ,card_mobile_prov_num_hour_1
    ,card_mobile_city_num_hour_1
    ,card_cert_prov_num_hour_1
    ,card_cert_city_num_hour_1
    ,is_one_people_num_hour_1
    ,mobile_oper_platform_num_hour_1
    ,operation_channel_num_hour_1
    ,pay_scene_num_hour_1
    ,amt_num_hour_1
    ,card_cert_no_num_hour_1
    ,opposing_id_num_hour_1
    ,income_card_no_num_hour_1
    ,income_card_cert_no_num_hour_1
    ,income_card_mobile_num_hour_1
    ,income_card_bank_code_num_hour_1
    ,province_num_hour_1
    ,city_num_hour_1
    ,is_peer_pay_num_hour_1
    ,version_num_hour_1
    ,client_ip_rate_hour_1
    ,network_rate_hour_1
    ,device_sign_rate_hour_1
    ,info_1_rate_hour_1
    ,info_2_rate_hour_1
    ,ip_prov_rate_hour_1
    ,ip_city_rate_hour_1
    ,cert_prov_rate_hour_1
    ,cert_city_rate_hour_1
    ,card_bin_prov_rate_hour_1
    ,card_bin_city_rate_hour_1
    ,card_mobile_prov_rate_hour_1
    ,card_mobile_city_rate_hour_1
    ,card_cert_prov_rate_hour_1
    ,card_cert_city_rate_hour_1
    ,is_one_people_rate_hour_1
    ,mobile_oper_platform_rate_hour_1
    ,operation_channel_rate_hour_1
    ,pay_scene_rate_hour_1
    ,amt_rate_hour_1
    ,card_cert_no_rate_hour_1
    ,opposing_id_rate_hour_1
    ,income_card_no_rate_hour_1
    ,income_card_cert_no_rate_hour_1
    ,income_card_mobile_rate_hour_1
    ,income_card_bank_code_rate_hour_1
    ,province_rate_hour_1
    ,city_rate_hour_1
    ,is_peer_pay_rate_hour_1
    ,version_rate_hour_1
,amt_hour_1_avg
    ,amt_hour_1_min
    ,amt_hour_1_max
    ,amt_hour_1_sum
    ,amt_hour_1_median
    ,amt_hour_1_stddev
    ,amt_hour_1_stddev_samp
    ,amt_hour_1_skewness
    ,amt_hour_1_kurtosis
,client_ip_dount_day_order_1
    ,network_dount_day_order_1
    ,device_sign_dount_day_order_1
    ,info_1_dount_day_order_1
    ,info_2_dount_day_order_1
    ,ip_prov_dount_day_order_1
    ,ip_city_dount_day_order_1
    ,cert_prov_dount_day_order_1
    ,cert_city_dount_day_order_1
    ,card_bin_prov_dount_day_order_1
    ,card_bin_city_dount_day_order_1
    ,card_mobile_prov_dount_day_order_1
    ,card_mobile_city_dount_day_order_1
    ,card_cert_prov_dount_day_order_1
    ,card_cert_city_dount_day_order_1
    ,is_one_people_dount_day_order_1
    ,mobile_oper_platform_dount_day_order_1
    ,operation_channel_dount_day_order_1
    ,pay_scene_dount_day_order_1
    ,amt_dount_day_order_1
    ,card_cert_no_dount_day_order_1
    ,opposing_id_dount_day_order_1
    ,income_card_no_dount_day_order_1
    ,income_card_cert_no_dount_day_order_1
    ,income_card_mobile_dount_day_order_1
    ,income_card_bank_code_dount_day_order_1
    ,province_dount_day_order_1
    ,city_dount_day_order_1
    ,is_peer_pay_dount_day_order_1
    ,version_dount_day_order_1
,deno_day_order_1
    ,client_ip_num_day_order_1
    ,network_num_day_order_1
    ,device_sign_num_day_order_1
    ,info_1_num_day_order_1
    ,info_2_num_day_order_1
    ,ip_prov_num_day_order_1
    ,ip_city_num_day_order_1
    ,cert_prov_num_day_order_1
    ,cert_city_num_day_order_1
    ,card_bin_prov_num_day_order_1
    ,card_bin_city_num_day_order_1
    ,card_mobile_prov_num_day_order_1
    ,card_mobile_city_num_day_order_1
    ,card_cert_prov_num_day_order_1
    ,card_cert_city_num_day_order_1
    ,is_one_people_num_day_order_1
    ,mobile_oper_platform_num_day_order_1
    ,operation_channel_num_day_order_1
    ,pay_scene_num_day_order_1
    ,amt_num_day_order_1
    ,card_cert_no_num_day_order_1
    ,opposing_id_num_day_order_1
    ,income_card_no_num_day_order_1
    ,income_card_cert_no_num_day_order_1
    ,income_card_mobile_num_day_order_1
    ,income_card_bank_code_num_day_order_1
    ,province_num_day_order_1
    ,city_num_day_order_1
    ,is_peer_pay_num_day_order_1
    ,version_num_day_order_1
    ,client_ip_rate_day_order_1
    ,network_rate_day_order_1
    ,device_sign_rate_day_order_1
    ,info_1_rate_day_order_1
    ,info_2_rate_day_order_1
    ,ip_prov_rate_day_order_1
    ,ip_city_rate_day_order_1
    ,cert_prov_rate_day_order_1
    ,cert_city_rate_day_order_1
    ,card_bin_prov_rate_day_order_1
    ,card_bin_city_rate_day_order_1
    ,card_mobile_prov_rate_day_order_1
    ,card_mobile_city_rate_day_order_1
    ,card_cert_prov_rate_day_order_1
    ,card_cert_city_rate_day_order_1
    ,is_one_people_rate_day_order_1
    ,mobile_oper_platform_rate_day_order_1
    ,operation_channel_rate_day_order_1
    ,pay_scene_rate_day_order_1
    ,amt_rate_day_order_1
    ,card_cert_no_rate_day_order_1
    ,opposing_id_rate_day_order_1
    ,income_card_no_rate_day_order_1
    ,income_card_cert_no_rate_day_order_1
    ,income_card_mobile_rate_day_order_1
    ,income_card_bank_code_rate_day_order_1
    ,province_rate_day_order_1
    ,city_rate_day_order_1
    ,is_peer_pay_rate_day_order_1
    ,version_rate_day_order_1
,amt_day_order_1_avg
    ,amt_day_order_1_min
    ,amt_day_order_1_max
    ,amt_day_order_1_sum
    ,amt_day_order_1_median
    ,amt_day_order_1_stddev
    ,amt_day_order_1_stddev_samp
    ,amt_day_order_1_skewness
    ,amt_day_order_1_kurtosis
FROM wen_train_label
LEFT JOIN wen_train_one_hot ON wen_train_label.event_id = wen_train_one_hot.event_id
LEFT JOIN wen_train_ic_features ON wen_train_label.event_id = wen_train_ic_features.event_id
LEFT JOIN wen_train_discrete_order ON wen_train_label.event_id = wen_train_discrete_order.event_id
LEFT JOIN wen_train_compare_last_hour ON wen_train_label.event_id = wen_train_compare_last_hour.event_id
LEFT JOIN wen_train_compare_last_day ON wen_train_label.event_id = wen_train_compare_last_day.event_id
LEFT JOIN wen_train_hour_0_feature_0 ON wen_train_label.event_id = wen_train_hour_0_feature_0.event_id
LEFT JOIN wen_train_hour_0_feature_1 ON wen_train_label.event_id = wen_train_hour_0_feature_1.event_id
LEFT JOIN wen_train_hour_0_feature_2 ON wen_train_label.event_id = wen_train_hour_0_feature_2.event_id
LEFT JOIN wen_train_hour_1_feature_0 ON wen_train_label.event_id = wen_train_hour_1_feature_0.event_id
LEFT JOIN wen_train_hour_1_feature_1 ON wen_train_label.event_id = wen_train_hour_1_feature_1.event_id
LEFT JOIN wen_train_hour_1_feature_2 ON wen_train_label.event_id = wen_train_hour_1_feature_2.event_id
LEFT JOIN wen_train_day_order_1_feature_0 ON wen_train_label.event_id = wen_train_day_order_1_feature_0.event_id
LEFT JOIN wen_train_day_order_1_feature_1 ON wen_train_label.event_id = wen_train_day_order_1_feature_1.event_id
LEFT JOIN wen_train_day_order_1_feature_2 ON wen_train_label.event_id = wen_train_day_order_1_feature_2.event_id;
