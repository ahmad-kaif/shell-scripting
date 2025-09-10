# Bash Scripting

---

## 🖥️ Key Concepts

### 🔹 Shell  
A **Shell** is a program that provides an interface to interact with the operating system. It takes commands from the user and tells the OS what to do.  

### 🔹 Bash  
**Bash (Bourne Again SHell)** is one of the most widely used Unix/Linux shells. It is both a command interpreter and a scripting language.  

### 🔹 CLI  
**CLI (Command Line Interface)** is a text-based way of interacting with your computer. Unlike GUI (Graphical User Interface), you type commands into a terminal/console.  

---

1. mv
2. rm
3. echo
4. cat
5. less
6. grep
7. mkdir
8. touch
9. chmod
10. man + helo


## chmod
```bash
syntax -> chmod u= g= o= filename (user, group, other)
u = 0 - 7
0 -> nothing
1 -> execute
2 -> write
3 -> 2+1 -> w+x
4 -> read
5 -> 4+1 -> r+write
6 -> 4+2 -> r+w
7 -> 4+2+1 -> r+w+x

chmod 7 7 7 filename
      ^ ^ ^
      | | |
      u g o

```

## ⚡ File Permissions Recap

- **r (read)** → View contents of a file.  
- **w (write)** → Modify contents of a file.  
- **x (execute)** → Run the file as a program/script.  

### Changing Permissions
Use `chmod`:
```bash
chmod 755 file.sh   # Read/write/execute for owner, read/execute for others
chmod +x file.sh    # Add execute permission
