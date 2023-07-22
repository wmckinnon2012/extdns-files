;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     server.rangeexternal.com. root.server.rangeexternal.com. (
                              400         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      server.rangeexternal.com.
@       IN      A       (EXT-DNS-IP)
server  IN      A       (EXT-DNS-IP) 
host    IN      A       (EXT-DNS-IP)
client  IN      A       (EXT-DNS-IP)
www     IN      A       (EXT-DNS-IP)

@       IN      NS      ns1.rangeexternal.com.
@       IN      A       (EXT-DNS-IP)
ns1     IN      A       (EXT-DNS-IP)

@       IN      MX      10 admin.rangeexternal.com.
@       IN      A       (EXT-DNS-IP)
admin   IN      A       (EXT-DNS-IP)
