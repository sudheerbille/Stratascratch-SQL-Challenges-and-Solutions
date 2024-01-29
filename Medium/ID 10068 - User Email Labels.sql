## ID 10068 - User Email Labels ##

Question:
Find the number of emails received by each user under each built-in email label.
The email labels are: 'Promotion', 'Social', and 'Shopping'. Output the user along with the number of promotion, social, and shopping mails count.

Tables: google_gmail_emails, google_gmail_labels

Tables Structure:
  
google_gmail_emails
id: int
from_user: varchar
to_user: varchar
day: int

google_gmail_labels
email_id: int
label: varchar

Solution:
SELECT GE.TO_USER, 
       COUNT(CASE WHEN GL.LABEL IN ('Promotion') THEN GE.ID ELSE NULL END) AS Promotion,
       COUNT(CASE WHEN GL.LABEL IN ('Social') THEN GE.ID ELSE NULL END) AS Social,
       COUNT(CASE WHEN GL.LABEL IN ('Shopping') THEN GE.ID ELSE NULL END) AS Shopping
FROM google_gmail_emails GE
INNER JOIN google_gmail_labels GL
ON GE.ID = GL.EMAIL_ID
WHERE GL.LABEL IN ('Promotion', 'Social', 'Shopping')
GROUP BY 1
ORDER BY 1 ASC;
