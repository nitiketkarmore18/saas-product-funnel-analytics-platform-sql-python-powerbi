# SaaS Product Funnel Analytics Platform

Enterprise-Level Business Intelligence & Analytics Dashboard for SaaS Product Monitoring, Funnel Analytics, Revenue Intelligence, User Behavior Analysis, Churn Tracking, and Executive KPI Reporting.

---

# Project Overview

The SaaS Product Funnel Analytics Platform is a multi-page enterprise Business Intelligence solution developed to analyze and monitor SaaS user acquisition, onboarding performance, subscription conversion, revenue growth, churn behavior, user engagement, and time-based business trends.

The project transforms raw SaaS operational data into interactive executive dashboards using SQL, Python, Power BI, DAX, and modern data analytics workflows.

The platform was designed to simulate real-world SaaS analytics environments commonly used within enterprise product organizations and analytics-driven companies.

---

# Business Problem Statement

Modern SaaS companies generate large volumes of user, engagement, subscription, and revenue data across multiple platforms. However, organizations often struggle to:

- monitor user funnel progression
- track premium subscription conversion
- analyze churn and retention trends
- understand user engagement behavior
- centralize KPI reporting
- monitor revenue growth patterns
- perform executive-level business analysis

Traditional spreadsheet-based reporting systems fail to provide interactive analytics, operational intelligence, and centralized business visibility.

This project addresses these challenges through the implementation of a centralized SaaS analytics platform capable of delivering interactive dashboards, executive reporting, and business intelligence insights.

---

# Business Objectives

## Strategic Objectives

- Improve SaaS funnel visibility
- Enhance executive decision-making
- Centralize KPI reporting
- Improve monetization monitoring
- Support retention optimization

## Analytical Objectives

- Analyze user acquisition trends
- Track premium conversion rate
- Monitor churn behavior
- Evaluate revenue contribution
- Analyze user engagement
- Track business growth over time

## Technical Objectives

- Build enterprise-level Power BI dashboards
- Implement SQL-based business analytics
- Conduct EDA using Python
- Engineer KPI-driven DAX measures
- Develop multi-page dashboard architecture

---

# Dashboard Pages

## 1. Project Overview Dashboard

Contains:
- Project overview
- Business problem statement
- Business objectives
- Technology stack
- Navigation system

---

## 2. Executive Overview Dashboard

Contains:
- KPI cards
- Funnel analytics
- Revenue overview
- Device analysis
- Traffic source analysis
- Active vs churned users
- Executive insights

---

## 3. User Behavior Analytics Dashboard

Contains:
- Session analytics
- Feature usage analysis
- Login frequency distribution
- User engagement tracking
- Top engaged users
- User behavior insights

---

## 4. Revenue & Conversion Analytics Dashboard

Contains:
- Revenue monitoring
- Premium conversion analysis
- ARPU tracking
- Revenue by country
- Revenue by plan type
- Top revenue users
- Monetization insights

---

## 5. Time Intelligence Analytics Dashboard

Contains:
- Revenue trend analysis
- User growth trend
- Churn trend analysis
- Session activity trend
- Monthly performance summary
- Time-based business insights

---

# Technology Stack

| Technology | Purpose |
|---|---|
| Power BI | Dashboard development & visualization |
| Python | Data preprocessing & EDA |
| Pandas | Data cleaning & transformation |
| NumPy | Numerical computation |
| SQL | Business querying & KPI extraction |
| DAX | KPI calculations & measures |
| CSV Dataset | Data storage & processing |
| Business Intelligence | Executive reporting |
| Data Visualization | Interactive analytics |

---

# System Architecture

```text
Raw SaaS Dataset
        ↓
Python ETL & Data Cleaning
        ↓
Processed Dataset
        ↓
SQL Business Analytics
        ↓
Power BI Data Modeling
        ↓
DAX KPI Engineering
        ↓
Interactive Dashboards
        ↓
Business Insights & Reporting
```

---

# Analytics Workflow Methodology

## Phase 1 — Data Collection
Collected structured SaaS user funnel and subscription data.

## Phase 2 — Data Cleaning & ETL
Performed preprocessing using Python and Pandas:
- missing value handling
- duplicate removal
- data transformation
- feature engineering

## Phase 3 — Exploratory Data Analysis
Analyzed:
- revenue trends
- user engagement
- funnel progression
- churn distribution
- traffic source performance

## Phase 4 — SQL Analytics
Performed:
- KPI extraction
- aggregation analysis
- churn analysis
- revenue grouping
- funnel analytics

## Phase 5 — Dashboard Engineering
Developed interactive Power BI dashboards using:
- KPI cards
- slicers
- navigation buttons
- line charts
- funnel charts
- donut charts
- matrix tables

## Phase 6 — Business Intelligence Reporting
Generated:
- executive insights
- operational intelligence
- strategic KPI reporting

---

# Dataset Description

The dataset contains SaaS operational and user funnel information.

## Key Dataset Attributes

| Attribute | Description |
|---|---|
| user_id | Unique user identifier |
| signup_date | Registration date |
| country | User region |
| device_type | Device usage |
| traffic_source | Acquisition source |
| subscription_type | Subscription category |
| monthly_revenue | Revenue generated |
| total_sessions | User sessions |
| avg_session_duration | Session duration |
| churn_status | Active/churned status |

---

# KPI Engineering & Mapping

| KPI | Formula |
|---|---|
| Total Users | COUNT(user_id) |
| Premium Users | COUNT(Premium Users) |
| Total Revenue | SUM(monthly_revenue) |
| Active Users | COUNT(Active Users) |
| Churn Rate | Churned Users / Total Users |
| Premium Conversion Rate | Premium Users / Total Users |
| ARPU | Revenue / Premium Users |
| Avg Session Duration | AVG(avg_session_duration) |

---

# Key DAX Measures

## Premium Conversion Rate

```DAX
Premium Conversion Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS(saas_user_funnel_dataset),
        saas_user_funnel_dataset[subscription_type] = "Premium"
    ),
    COUNTROWS(saas_user_funnel_dataset)
)
```

## ARPU KPI

```DAX
ARPU KPI =
DIVIDE(
    SUM(saas_user_funnel_dataset[monthly_revenue]),
    CALCULATE(
        COUNTROWS(saas_user_funnel_dataset),
        saas_user_funnel_dataset[subscription_type] = "Premium"
    )
)
```

---

# Business Insights Generated

## Funnel Insights

- Email verification remained above 80%
- Funnel drop-offs identified during onboarding stages
- Premium users represented key monetization segment

## Revenue Insights

- Enterprise and Pro plans generated highest revenue
- Revenue contribution varied by country
- Paid subscriptions drove overall monetization

## User Behavior Insights

- Average session duration remained close to 30 minutes
- Premium users showed stronger engagement
- Login frequency supported recurring user activity

## Churn Insights

- Churn rate remained around 34%
- Retention optimization opportunities identified
- Monthly churn patterns supported strategic monitoring

---

# Visualization Design Principles

| Visualization | Purpose |
|---|---|
| KPI Cards | Executive KPI monitoring |
| Funnel Chart | Funnel progression analysis |
| Donut Charts | Contribution analysis |
| Line Charts | Trend analysis |
| Area Charts | Growth visualization |
| Matrix Tables | Detailed reporting |
| Slicers | Interactive filtering |
| Insight Panels | Business storytelling |

---

# Challenges Faced & Solutions

| Challenge | Solution Implemented |
|---|---|
| KPI aggregation mismatch | Optimized DAX measures |
| ARPU calculation issue | Revised premium-user logic |
| Dashboard navigation complexity | Added page navigation buttons |
| Dashboard alignment issues | Standardized page layouts |
| Percentage formatting issues | Corrected DAX formatting |

---

# Business Recommendations

## Funnel Optimization
- Improve onboarding completion
- Reduce funnel drop-offs
- Optimize premium conversion

## Retention Optimization
- Improve churn monitoring
- Strengthen engagement campaigns
- Analyze churn-prone users

## Revenue Optimization
- Increase premium plan adoption
- Improve monetization strategy
- Expand enterprise user acquisition

---

# Future Enhancements

Potential future improvements include:

- Real-time data integration
- Predictive churn analytics
- Machine learning forecasting
- Advanced DAX measures
- API integration
- Cloud deployment
- Drill-through analytics
- Mobile dashboard optimization

---

# Screenshots

## Project Overview Dashboard

<img width="1197" height="675" alt="Screenshot 2026-05-25 175029" src="https://github.com/user-attachments/assets/c381ce28-235e-4c7d-bcd1-e898ea17c39c" />


## Executive Overview Dashboard

<img width="1278" height="722" alt="Screenshot 2026-05-25 175115" src="https://github.com/user-attachments/assets/3c48b4ec-168a-4dc4-a226-b0a28a02e9da" />


## User Behavior Analytics Dashboard

<img width="1195" height="672" alt="Screenshot 2026-05-25 175138" src="https://github.com/user-attachments/assets/abb55ddb-05d0-4e92-9b63-63f6e47a3921" />


## Revenue & Conversion Dashboard

<img width="1196" height="671" alt="Screenshot 2026-05-25 175156" src="https://github.com/user-attachments/assets/6d90ab48-960a-48d1-93eb-8f2d8425f4e1" />


## Time Intelligence Dashboard

<img width="1196" height="667" alt="Screenshot 2026-05-25 175222" src="https://github.com/user-attachments/assets/28509c3e-8994-42f1-8ebc-7746f0f5188b" />

---

# Project Structure

```text
SaaS-Product-Adoption-Funnel-Analytics/
│
├── Dataset/
│   ├── Raw Dataset/
│   │   └── saas_user_funnel_raw.csv
│   │
│   └── Cleaned Dataset/
|        └── saas_user_funnel_cleaned.csv│   
│
├── SQL Queries/
│   └── saas_funnel_analysis_queries.sql
│
├── Dashboard/
│   └── saas_product_funnel_analytics.pbix
│
├── Screenshots/
│   ├── project_overview_dashboard.png
│   ├── executive_overview_dashboard.png
│   ├── user_behavior_dashboard.png
│   ├── revenue_conversion_dashboard.png
│   └── time_intelligence_dashboard.png
│
├── Architecture_diagrams/
│   ├── enterprise_workflow_architecture.png
│   └── dashboard_navigation_flow.png  
│
├── Report/
│   └──  SaaS_Product_Funnel_Analytics_Report.pdf
│
└── README.md
```

---

# Author

## Nitiket Karmore

Data Analyst | Business Intelligence | Power BI | SQL | Python | SaaS Analytics

B.Tech – Computer Science Engineering (Cybersecurity)  
St. Vincent Pallotti College of Engineering & Technology, Nagpur

---

# References & Bibliography

1. Microsoft Power BI Documentation
2. Microsoft Learn – DAX Documentation
3. Pandas Official Documentation
4. NumPy Documentation
5. SQL Reference Documentation
6. Gartner Business Intelligence Reports
7. Deloitte Analytics Transformation Reports
8. McKinsey Business Intelligence Studies

---

# License

This project is intended for educational, analytical, and portfolio demonstration purposes.
