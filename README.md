# Sales analysis

## Overview
Analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve customer retention and maximise revenue.

## Business Questions
1. **Customer Segemntation:** How is customer lifetime value (LTV) distributed across different customer segments, and which segments contribute the most to total revenue?
2. **Cohort Analysis:** How do different customer groups generate revenue?
3. **Customer Retention:** Which customers haven't purchased recently?
## Analysis Approach

### 1. Customer Segmentation Analysis
- Categorized customers based on TLV
- Assigned customers to high, mid and low-value segments
- Calculated key metrics

Query: [customer_segmentation.sql](/customer_segmentation.sql)

**Visualisation:**

![Revenue distribution by customer segment](/images/revenue%20distribution%20by%20customer%20segment)
![Customer Count by Segment](/images/customer%20count%20by%20segment)
![Average LTV by Segment](/images/average%20ltv%20by%20segment)
![Customer Distribution vs Revenue by Segment](/images/customer%20distribution%20vs%20revemue%20by%20segment)

## Key Findings

- **High-value customers (25% of customers) generate ~65.6% of total revenue**, with an average LTV of **~10,946**, making them the most valuable segment.
- **Mid-value customers (50% of customers) contribute ~32.3% of total revenue**, with an average LTV of **~2,693**.
- **Low-value customers (25% of customers) contribute only ~2.1% of total revenue**, with an average LTV of **~351**.
- **Revenue is highly concentrated among top customers**, where a relatively small segment drives the majority of lifetime revenue.

## Business Insights

- **Customer retention should prioritize high-value customers**, as losing them would significantly impact total revenue.
- **Mid-value customers represent the largest growth opportunity**, since targeted upselling and engagement strategies could move them into the high-value segment.
- **Marketing spend on low-value customers should be optimized**, as their revenue contribution per customer is relatively small.


### 2. Cohort Analysis
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase
- Analyses customer retention at a cohort level

Query: [cohort_analysis.sql](/cohort_analysis.sql)

**Visualisation:**
![Cohort Analysis](/images/cohort_analysis_graph.png)

## Key Findings & Business Insights

- **Post-2019 monetization decline:** Customer revenue per cohort remained stable (~$2.6k–$2.9k) from 2015–2019 but declines consistently for newer cohorts.
- **ARPU decay trend:** Exponential trend indicates roughly **5% decline in revenue per customer per cohort year**, suggesting systematic monetization erosion.
- **Growth vs monetization trade-off:** Some years (e.g., 2022) show high customer acquisition but lower revenue per customer, indicating potential acquisition-quality dilution.
- **Unit economics risk:** Falling ARPU alongside increasing acquisition volume may weaken **LTV/CAC ratios** and long-term profitability.

### 3. Customer retention analysis
- Identified customers at the risk of churning
- Analysed last purchase patterns
- Calculated customer-specific metrics

Query: [retention_analysis.sql](/retention_analysis.sql)

**Visualisation:**
![Active vs Churned Customers by Cohort Year](/images/Active%20vs%20Churned%20Customers%20by%20Cohort%20Year.png)
![Overall Customer Status Distribution (Active vs Churned)](/images/Overall%20Customer%20Status%20Distribution%20(Active%20vs%20Churned).png)

## Key Findings

- **Customer churn is consistently very high across all cohorts**, with roughly **90–92% of customers churned** and only **8–10% remaining active**.
- **Retention rates remain relatively stable across years**, indicating no significant improvement or decline in customer retention over time.
- **Recent cohorts (2022–2023) show slightly higher retention (~10%)**, suggesting a small improvement in customer engagement or acquisition quality.
- **The majority of customers from every cohort stop purchasing within 6 months**, based on the churn definition used in the analysis.

## Business Insights

- **Customer retention is a major challenge**, as only about **1 in 10 customers remain active**, indicating a highly transactional customer base.
- **Improving early customer engagement is critical**, since most churn occurs shortly after the first purchase.
- **Retention strategies such as loyalty programs, personalized offers, or follow-up marketing campaigns could help reduce churn**.

## Strategic Recommendations

Based on the cohort revenue analysis, LTV segmentation, and retention analysis, the following strategic actions can help improve customer lifetime value and overall revenue.

### 1. Prioritize Retention of High-Value Customers
High-value customers generate the majority of total revenue (~65%). Losing even a small portion of this segment can significantly impact revenue.

Actions:
- Implement loyalty or VIP programs for top customers
- Provide personalized offers or early access to products
- Offer priority customer support or exclusive benefits

### 2. Upsell and Convert Mid-Value Customers
Mid-value customers represent the largest segment of the customer base and contribute a significant portion of revenue. Moving these customers into the high-value segment can substantially increase total revenue.

Actions:
- Use targeted promotions or bundle offers
- Recommend complementary products based on purchase history
- Introduce tiered rewards programs that encourage higher spending

### 3. Improve Early Customer Engagement to Reduce Churn
Retention analysis shows that only about 9–10% of customers remain active, indicating most customers churn within a short time period.

Actions:
- Implement post-purchase engagement campaigns
- Send follow-up emails, discounts, or product recommendations after the first purchase
- Encourage repeat purchases through time-limited incentives

### 4. Identify Characteristics of Retained Customers
A small group of customers remains active across cohorts. Understanding what differentiates these customers can help replicate successful behaviors across the broader customer base.

Actions:
- Analyze purchasing patterns of retained customers
- Identify frequently purchased products or categories
- Target new customers with similar profiles or behaviors

### 5. Optimize Marketing Spend Toward High-Value Potential Customers
Since revenue is highly concentrated among top segments, acquisition strategies should prioritize customers likely to generate higher lifetime value.

Actions:
- Focus marketing campaigns on high-value customer personas
- Use lookalike audiences based on top-performing customers
- Shift budget away from low-value acquisition channels

## Technical Details
- **Database:** PostgreSQL
- **Analysis Tools:** DBeaver, PostgreSQL, PGadmin
- **Visualisation** ChatGPT 