# Source: https://learn.microsoft.com/en-us/windows/wsl/networking#accessing-a-wsl-2-distribution-from-your-local-area-network-lan

netsh interface portproxy add v4tov4 listenport=<yourPortToForward> listenaddress=0.0.0.0 connectport=<yourPortToConnectToInWSL> connectaddress=(wsl hostname -I)
# Enables port forwarding from Windows host machine port to WSL2 environment port
# Update yourPortToForward. Ex: listenport=3000
# Update yourPortToConnectToInWSL Ex: 192.168.x.x 

##########

# Source: https://jwstanly.com/blog/article/Port+Forwarding+WSL+2+to+Your+LAN/

netsh interface portproxy show v4tov4
# View forwarded ports in Powershell with the above command
