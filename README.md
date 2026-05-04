# Strata & Co. Customer Behaviour Analysis -Project Overview
---

## The goal of this project is to investigate purchasing patterns, loyalty segmentation and revenue drivers across 5,050 customers for Strata & Co., a sample retail clothing brand, in order to surface recommendations on product strategy, discount optimisation and subscription programme peformance.
---

This project presents an end-to-end analysis of customer behaviour for a sample clothing retail store. Working across the full analyics pipeline - from raw data ingestion and cleaning through to SQL quering, visualisation and strategic recommendations - the analysis covers 5,050 customers generating a total revenue of $301,350, with an average purchase amount of $59.67 and an average review rating of 3.76/5.

Key findings reveal that clothing is the dominant revenue category, that young adults drive the highest spending, and that subscription status has limited effect on the average spend. The analysis also identifies which products rely most heavily on discounts and how customer loyalty segments are distributed - insights that directly inform the recommendations are in this report.

---
## Insights Summary
In order to evaluate customer behaviour, focus was placed on the following areas:
- Revenue and Sales by Item Category
- Age and Gender Purchase Behaviour
- Subscriptions, Discounts and Loyalty
- Product Rating
- Geographical Revenue Distribution.

### Revenue and Sales by Item Category
  Clothing is the top- peforming category with $135,289 in revenue from 2,250 customers, followed by Accessories ($95,175/1607 customers), Footwear ($46,127/ 7667 customers) and Outerwear ($24,759/ 426 customers). Outerwear has the smallest customer base but a proportionally comparable average purchase amount($58.11/customer vs $60.12/customer for clothing category), suggesting a premium pricing opportunity. 
  
### Age and Gender Purchase Behaviour
  Young Adults account for the highest total revenue at $80,508, followed by Middle Aged customers ($76,927), Senior ($72.160), and Adults($71,755). The distribution is notably balanced, though young adults present the strongest opportunity for loyalty  and subscription growth given their higher engagement.

Revenue segmentation by Gender shows a close split between male and female customers, indicating that neither gender is a significantly stronger revenue driver- marketing and inventory descisions should serve both segments equitably.

### Subscriptions, Discounts and Loyalty
  Subscribed customers do not spend significantly more on average than non-subscribers. This suggests that the subscription programme may not be tied to purchase incentives. This points to an opportunity to redesign the programme with spend-based rewards or exclusive access.

  When it comes to discounts, the analysis reveals that certain items - particularly within the Clothing and Accessories categories- are purchased predominantly with a discount applied. There are also a significant number of customers who used discount codes yet spent more than the average spend, confirming that discounting can attract moderate-to-high value customers when applied strategically rather than broadly.

  Among customers within the returning tier, the split between subscribed and non-subscribed is notable- repeat buyers are not reliably converting to subscriptions, further emphasizing customers may not see the values in the subcription packages offered.

### Product Rating
  Review scores show that the strongest products customers are satisfied with include Sandals (3.85) and Dresses (3.76) among others. This suggest that these footwear and clothing sub-segments could be leveraged in marketing, as also buttresed by the revenue their categories generate.

### Geographical Revenue Distribution
  Geographic  analysis reveals revenue concentration in specific states, with several mid-western and eastern states showing high revenue density. This can inform regional marketing and potential physical or pop-up retail strategies.

--- 
## Recommendations

**1. Redesign the Subscription programme with spend based incentives:**
Since subcribers do not currently out-spend non-subcribers on average, introducing a tiered system that rewards cumulative spend or purchase frequency would create a direct financial incentive and improve retention rates.

**2. Rationalise discount strategy by product:**
Items with high discount dependency should be reviewed for margin impact. Targeted discounting — applied to above-average spenders rather than broad promotional codes — would preserve revenue while maintaining customer acquisition benefits.

**3. Prioritise young adult engagement and loyalty conversion:**
Young adults drive the highest revenue segment. A loyalty conversion programme targeting returning customers in this cohort (through personalised outreach, early access, or subscription trials) could shift a meaningful share into the Loyal tier.

**4. Invest in high-rated product lines for marketing:**
Products with above-average ratings (Sandals, Dress, Sweater) are natural candidates for featured marketing placements, social proof campaigns, and review amplification, as they already demonstrate customer satisfaction.

**5. Optimise inventory around top-three products per category:**
The category-level top-three rankings provide a clear signal for stock prioritisation. During high-demand periods, ensuring these items are well-stocked reduces lost revenue from stockouts.

**6. Explore regional campaigns in high-revenue states:**
Geographic revenue concentration revealed in the map suggests that targeted regional campaigns or pop-up activations in high-performing states could drive further revenue growth with existing brand affinity.
---
## Dashboard
---
The dashboard can be found in Tableau Public [here](https://public.tableau.com/app/profile/frank.baruch.kwaku.nelson/viz/Customerbehaviourdashboard/Dashboard1). This dashboard enebles users to filter by individual items purchased, age, location and size and focuses on Revenue generated and market metrics.
<img width="2046" height="1534" alt="Dashboard 1 (1)" src="https://github.com/user-attachments/assets/5d535e10-0389-4afe-b10d-167cfaec5a44" />

---
## Further work & Next Steps
- While this project surfaces meaningful insights from the available data, several avenues remain open for deeper investigation. Enriching the dataset with marketing channel, returns, and time-of-purchase data would strengthen the behavioural model considerably.
- A/B testing a redesigned subscription offer against the current programme would validate the recommendation to restructure spend-based incentives
- A city-level breakdown of the geographic revenue data could identify high-potential markets not yet captured in the state-level view

---
 ### Skills Used
 | Area | Tools & Technologies |
|---|---|
| Programming | Python (Pandas, NumPy, Matplotlib, Seaborn) |
| Database | MySQL, SQLAlchemy, PyMySQL |
| Query Language | SQL (CTEs, window functions, subqueries, aggregations) |
| Visualisation | Tableau, Seaborn, Matplotlib |
| Data Wrangling | Feature engineering, missing value imputation, data type normalisation |
| Environment | Jupyter Notebook |
