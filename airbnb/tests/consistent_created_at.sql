SELECT
*
FROM
{{ ref('fct_reviews') }} 
JOIN 
{{ ref('dim_listings_cleansed') }} 
USING (listing_id)
where review_date < created_at