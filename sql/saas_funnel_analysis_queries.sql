CREATE DATABASE saas_funnel_analytics;

USE saas_funnel_analytics;

SELECT * FROM saas_user_funnel_dataset
LIMIT 10;

# show all users data
SELECT * FROM saas_user_funnel_dataset;

# total users
SELECT COUNT(*) AS total_users
FROM saas_user_funnel_dataset;

# total verified users
SELECT COUNT(*) AS verified_users
FROM saas_user_funnel_dataset
WHERE email_verified = TRUE;

# verification rate
SELECT 
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM saas_user_funnel_dataset),2) AS verification_rate
FROM saas_user_funnel_dataset
WHERE email_verified = TRUE;

# workspace created users
SELECT COUNT(*) AS workspace_users
FROM saas_user_funnel_dataset
WHERE workspace_created = TRUE;


# workspace creation rate
SELECT 
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM saas_user_funnel_dataset),2) AS workspace_creation_rate
FROM saas_user_funnel_dataset
WHERE workspace_created = TRUE;

# onboarding completed users
SELECT COUNT(*) AS onboarded_users
FROM saas_user_funnel_dataset
WHERE onboarding_completed = TRUE;

# onboarding completion rate
SELECT 
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM saas_user_funnel_dataset),2) AS onboarding_completion_rate
FROM saas_user_funnel_dataset
WHERE onboarding_completed = TRUE;

SELECT * FROM saas_user_funnel_dataset;

# premium users count
SELECT COUNT(*) AS premium_users
FROM saas_user_funnel_dataset
WHERE subscription_type = 'Premium';

# premium conversion rate
SELECT 
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM saas_user_funnel_dataset),2) AS premium_conversion_rate
FROM saas_user_funnel_dataset
WHERE subscription_type = 'Premium';

# churned users count
SELECT COUNT(*) AS churned_users
FROM saas_user_funnel_dataset
WHERE churn_status = 'Churned';

# churn rate
SELECT 
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM saas_user_funnel_dataset),2) AS churn_rate
FROM saas_user_funnel_dataset
WHERE churn_status = 'Churned';

# active vs inactive users
SELECT 
    active_status,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY active_status;

# users by device type
SELECT 
    device_type,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY device_type;

# users by country
SELECT 
    country,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY country
ORDER BY total_users DESC;

# users by traffic source
SELECT 
    traffic_source,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY traffic_source
ORDER BY total_users DESC;

# most used features
SELECT 
    first_feature_used,
    COUNT(*) AS usage_count FROM saas_user_funnel_dataset
WHERE first_feature_used IS NOT NULL
GROUP BY first_feature_used
ORDER BY usage_count DESC;

# average session duration
SELECT 
    ROUND(AVG(avg_session_duration),2) AS avg_session_duration
FROM saas_user_funnel_dataset;

# total revenue
SELECT 
    SUM(monthly_revenue) AS total_revenue FROM saas_user_funnel_dataset;

# revenue by plan type
SELECT 
    plan_type,
    SUM(monthly_revenue) AS total_revenue FROM saas_user_funnel_dataset
GROUP BY plan_type
ORDER BY total_revenue DESC;

# premium users by country
SELECT 
    country,
    COUNT(*) AS premium_users FROM saas_user_funnel_dataset
WHERE subscription_type = 'Premium'
GROUP BY country
ORDER BY premium_users DESC;

# login frequency analysis
SELECT 
    login_frequency,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY login_frequency
ORDER BY total_users DESC;

# cohort analysis

SELECT 
    cohort_month,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY cohort_month
ORDER BY cohort_month;

# retention analysis

SELECT 
    CASE
        WHEN retention_days <= 30 THEN '0-30 Days'
        WHEN retention_days <= 90 THEN '31-90 Days'
        WHEN retention_days <= 180 THEN '91-180 Days'
        ELSE '180+ Days'
    END AS retention_group,
COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY retention_group
ORDER BY total_users DESC;

# premium users by device type

SELECT 
    device_type,
    COUNT(*) AS premium_users FROM saas_user_funnel_dataset
WHERE subscription_type = 'Premium'
GROUP BY device_type
ORDER BY premium_users DESC;

# revenue by traffic source

SELECT 
    traffic_source,
    SUM(monthly_revenue) AS total_revenue FROM saas_user_funnel_dataset
GROUP BY traffic_source
ORDER BY total_revenue DESC;

# average session duration by subscription

SELECT 
    subscription_type,
    ROUND(AVG(avg_session_duration),2) AS avg_session_duration FROM saas_user_funnel_dataset
GROUP BY subscription_type;

# churn analysis by plan type

SELECT 
    plan_type,
    churn_status,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY plan_type, churn_status
ORDER BY plan_type;

# onboarding drop-off analysis

SELECT
    COUNT(*) AS total_users,
    SUM(email_verified = 1) AS verified_users,
	SUM(workspace_created = 1) AS workspace_users,
	SUM(onboarding_completed = 1) AS onboarded_users
FROM saas_user_funnel_dataset;

# highly engaged users

SELECT 
    user_id,
    total_sessions,
    feature_usage_count,
    avg_session_duration FROM saas_user_funnel_dataset
ORDER BY total_sessions DESC
LIMIT 10;

# top revenue generating countries

SELECT 
    country,
    SUM(monthly_revenue) AS total_revenue FROM saas_user_funnel_dataset
GROUP BY country
ORDER BY total_revenue DESC;

# plan type distribution

SELECT 
    plan_type,
    COUNT(*) AS total_users FROM saas_user_funnel_dataset
GROUP BY plan_type
ORDER BY total_users DESC;

