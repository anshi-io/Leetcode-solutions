# Write your MySQL query statement below
select lib.book_id,
lib.title,
lib.author,
lib.genre,
lib.publication_year,
count(bor.borrower_name) as current_borrowers
from library_books lib
join borrowing_records bor
on lib.book_id=bor.book_id
where bor.return_date is null
group by lib.book_id,lib.total_copies,lib.genre,lib.title,lib.publication_year,lib.author
having lib.total_copies=current_borrowers
order by current_borrowers desc , lib.title asc
