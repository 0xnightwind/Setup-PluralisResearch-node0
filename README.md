# Setup-PluralisResearch-node0


**1. Clone repo**
```bash
git@github.com:0xnightwind/Setup-PluralisResearch-node0.git
```

**2. Install basics**
```bash
chmod +x basics.sh && ./basics.sh
```

**3. Start a tmux session**
```bash
tmux new -s node0
```

**4. Instantiate the node**
```bash
chmod +x setup_node.sh && ./setup_node.sh
```

**Detach from tmux**
CTRL B+D

**Attach to tmux session**
```bash
tmux a -t node0
```

**Check logs**
```bash
tail -f logs/server.log
```

* For full logs, you can open the file in `node0/logs/server.log`
