$TTL 60
$ORIGIN cathaybank.com.
@         IN SOA sns.dns.icann.org. noc.dns.icann.org. (
          2017042745 ; serial
          7200       ; refresh (2 hours)				
          3600       ; retry (1 hour)			
          1209600    ; expire (2 weeks)				
          3600       ; minimum (1 hour)				
          )
api-dev  IN CNAME cathaybank-dlb-non-prod.lb.anypointdns.net.
api-qa  IN CNAME cathaybank-dlb-non-prod.lb.anypointdns.net.
api-uat  IN CNAME cathaybank-dlb-non-prod.lb.anypointdns.net.
api  IN CNAME cathaybank-dlb-prod.lb.anypointdns.net.

