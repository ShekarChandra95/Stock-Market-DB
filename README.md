# Stock-Market-DB

**Stock Market Analytics 📈**

Analyze stocks, investors, portfolios, trades, and market performance using SQL to gain insights into trading behavior, portfolio performance, and investment trends.

**🎯 Business Objectives**  
✅ Analyze stock trading activity  
✅ Track investor portfolios  
✅ Monitor stock price movements  
✅ Measure portfolio performance  
✅ Identify top-performing stocks  
✅ Analyze trading volume  
✅ Calculate investment returns  
✅ Build executive investment dashboards  

**🧠 SQL Concepts You'll Practice**  
✔️ DDL & DML
   
    DML — Data Manipulation Language
    DML commands work with the data inside tables — inserting, reading, updating, deleting rows. These changes are not auto-committed by default in transactional engines like InnoDB — you can COMMIT or ROLLBACK.

✔️ INNER JOIN  
   Inner join return only rows that match in both tables - trades with their stock details.
   
✔️ LEFT JOIN 
   Left join return the matches from the right table to the left table. If there are no matches in the right table, return a NULL value.
   
✔️ Aggregate Functions + GROUP BY 
   Volume/value per stock(COUNT, SUM, AVG, MAX, MIN)
   
✔️ HAVING - stocks >2 trades and > 10K traded value

✔️ CASE WHEN  - trade size bucket, and a sector trend label (Bullish/Neutral/Bearish)

✔️ Date Functions - monthly rollups, inventor tenure, days since IPO

✔️ CTEs  - a two-step build (trade_flow -> latest_price) to compute live unrealized P&L per positioins

✔️ Window Functions - running trade-value totals, day-over-day price change (LAG)

✔️ Ranking Functions - RANK, DENSE_RANK, ROW_NUMBER compared side by side, plus "top 2 trades per portfolio"

✔️ Executive dashboard — one consolidated query ranking investors by activity and traded value.

**📊 Business KPIs You Can Build**  
📈 Total Investors  
📈 Total Trades  
📈 Buy vs Sell Transactions  
📈 Total Trading Volume  
📈 Portfolio Value  
📈 Profit & Loss (P&L)  
📈 Return on Investment (ROI)  
📈 Average Buy Price  
📈 Average Sell Price  
📈 Top Performing Stocks  
📈 Worst Performing Stocks  
📈 Daily Price Change  
📈 Monthly Trading Volume  
📈 Sector-wise Performance  
📈 Most Traded Stocks  
📈 Investor Portfolio Diversification  
📈 Average Holding Size  
📈 Stock Volatility  
📈 Market Capitalization Trend  
📈 Executive Investment Dashboard  
