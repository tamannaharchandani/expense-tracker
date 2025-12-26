# Features #
1. crud-expenses,categories
2. authentication
3. authorization
4. dashboard
5. categorization - user preference
6. graphs/charts for visualization-monthly,yearly
7. Manage income and expenses
8. Budgeting(optional)
9. Search functionality
10. Bulk upload of transactions
11. Download- report table, charts
12. Forget password(email/otp)
13. Cron job scheduler for mailing weekly or monthly reports to user.- summary
14. Currency conversion(optional)
15. icon image for categories.

# Database schemas #
1. Users- id, name, contact,email,password_hash,metadata.
2. Categories- id,userid,name,metadata,transactiontype.
3. Transaction- id,userid,categoryid,dateoftransaction,amount,notes.
- never store derived attributes in your table.(eg original amt - 300 expense = 200 derived attribute).