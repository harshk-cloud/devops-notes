# Day 8 - Git Rebase and Shortlog

## 1. What is Git Rebase?

Meaning: `git rebase` feature branch ke commits ko target branch ke latest commit ke upar dobara apply karta hai.

Purpose: Feature branch ko main branch ke latest changes ke saath update karna aur linear commit history maintain karna.

Example:
```
    git switch feature
    git rebase main
```
My Notes: Maan lo main branch mein A aur B commits hain, aur feature branch mein C aur D commits hain.

Before Rebase:
```
    main:     A --- B
                   \
    feature:        C --- D
```
Ab feature branch par jaakar `git rebase main` run karenge.

After Rebase:
```
    main:     A --- B
                   \
    feature:        C1 --- D1
```
Linear History:
```
    A --- B --- C1 --- D1
                ^
              feature
```
- Feature branch ke commits naye commit IDs ke saath dobara create ho sakte hain.
- Original C aur D commits ki jagah C1 aur D1 jaise naye commits aate hain.
- Main branch automatically feature branch par switch nahi hoti.
- Rebase karne ke baad feature branch main ke latest commit ke upar aa jaati hai.


## 2. Git Rebase vs Git Merge

Meaning: Rebase commits ko dobara apply karta hai, jabki merge branches ke histories ko combine karta hai.

Purpose: Dono approaches ka difference samajhna.

Example:

Before:
```
    A --- B  main
     \
      C --- D  feature
```
Merge ke baad:
```
    A --- B -------- M  main
     \              /
      C ----------- D
```
Rebase ke baad:
```
    A --- B --- C1 --- D1  feature
```
My Notes:

- Merge existing branch history ko preserve karta hai.
- Merge conflict-free hone par bhi merge commit create kar sakta hai, depending on the merge type.
- Rebase linear history create kar sakta hai.
- Rebase existing commits ko rewrite kar sakta hai.
- Shared branches par rebase karne se doosre developers ko problems ho sakti hain.


## 3. Git Rebase Conflict

Meaning: Rebase conflict tab aata hai jab Git changes ko automatically apply nahi kar pata.

Purpose: Conflicting changes ko manually resolve karke rebase complete karna.

Example:
```
    main:       A --- B
                 \
    feature:      C --- D
```
Maan lo main aur feature branch dono ne same file ke same part ko modify kiya.

Conflict ke waqt:
```
    <<<<<<< HEAD
    Main branch ka content
    =======
    Feature branch ka content
    >>>>>>> commit
```
My Notes:

- `<<<<<<<`, `=======` aur `>>>>>>>` conflict markers hain.
- File ko text editor mein open karna hai.
- Decide karna hai ki kaunsa content rakhna hai.
- Correct content rakhkar conflict markers remove karne hain.
- File save karne ke baad resolved changes ko stage karna hai.


## 4. Git Rebase --Abort

Meaning: `git rebase --abort` current rebase process ko cancel karta hai.

Purpose: Rebase ko cancel karke rebase shuru hone se pehle wali state par wapas jaana.

Example: git rebase --abort

My Notes:

- Ye command tab use hoti hai jab rebase active ho.
- Agar conflict resolve nahi karna hai, to rebase abort kar sakte hain.
- Git current rebase operation ko cancel kar deta hai.


## 5. Git Add During Rebase

Meaning: `git add` resolved file ko staging area mein add karta hai.

Purpose: Git ko batana ki conflict resolve kar diya gaya hai.

Example: git add hello.txt

Ya multiple resolved files ke liye:
```
    git add .
```
My Notes:

- Pehle file mein conflict resolve karo.
- File save karo.
- `git add` se resolved file stage karo.
- Uske baad rebase continue karo.


## 6. Git Rebase --Continue

Meaning: `git rebase --continue` paused rebase process ko aage badhata hai.

Purpose: Conflict resolve hone ke baad remaining commits ko apply karna.

Example:
```
    git add hello.txt
    git rebase --continue
```
My Notes:

- Conflict resolve karne ke baad file stage karni hai.
- `git rebase --continue` command run karni hai.
- Agar doosre commit par conflict aata hai, to same process repeat karna hai.
- Rebase complete hone ke baad Git success message dikha sakta hai.

Complete Workflow:
```
    git switch feature
    git rebase main

    # Resolve conflict in the file
    git add hello.txt
    git rebase --continue

    # If another conflict occurs, repeat the process
```

## 7. What is Git Shortlog?

Meaning: `git shortlog` commit history ko author ke according group karke dikhata hai.

Purpose: Repository mein kis author ne kaunse commits kiye hain, ye dekhna.

Example: git shortlog

My Notes: Maan lo repository mein three developers kaam karte hain.
```
    Gaurav Sharma (12):
        first commit
        second commit
        third commit

    Rahul Sharma (8):
        add login feature
        fix login bug

    Amit Kumar (5):
        update README
        fix configuration
```
- Har author ke naam ke neeche uske commits dikhte hain.
- Number author ke commits ki count batata hai.
- Ye command repository ki commit history ka summary deti hai.


## 8. Git Shortlog -n

Meaning: `git shortlog -n` authors ko commit count ke according sort karta hai.

Purpose: Zyada commits karne wale author ko pehle dikhana.

Example: git shortlog -n

Output Example:
```
    Amit Kumar (15):
        ...

    Gaurav Sharma (12):
        ...

    Rahul Sharma (8):
        ...
```
My Notes:

- `-n` author groups ko commit count ke according sort karta hai.
- Default order mein sorting commit count ke according nahi hoti.
- Example counts sirf samjhane ke liye hain.


## 9. Git Shortlog -e

Meaning: `git shortlog -e` author ke naam ke saath email address bhi dikhata hai.

Purpose: Author ki email information dekhna.

Example:
```
    git shortlog -e
```
Output Example:
```
    Gaurav Sharma <gaurav@example.com> (12):
        first commit
        second commit
```
My Notes:

- `-e` email address show karta hai.
- Email address repository ke commit metadata se aata hai.


## 10. Git Shortlog -n -e

Meaning: `git shortlog -n -e` authors ko commit count ke according sort karta hai aur email address bhi dikhata hai.

Purpose: Author-wise commit summary aur email information ek saath dekhna.

Example: git shortlog -n -e

My Notes:

- `-n` author groups ko commit count ke according sort karta hai.
- `-e` email address dikhata hai.
- Dono options ko ek saath use kar sakte hain.


## 11. Git Shortlog -s

Meaning: `git shortlog -s` har author ke commits ki summary dikhata hai.

Purpose: Sirf author-wise commit count dekhna, bina commit messages ke.

Example: git shortlog -s

Output Example:
```
    15  Amit Kumar
    12  Gaurav Sharma
     8  Rahul Sharma
```
My Notes:

- `-s` summary mode enable karta hai.
- Commit messages output mein nahi dikhte.
- Har author ke naam ke saath uske commits ki count dikhai deti hai.


## 12. Important Git Shortlog Commands

    git shortlog
    git shortlog -n
    git shortlog -e
    git shortlog -n -e
    git shortlog -s

My Notes:

- `git shortlog` - Author-wise commits aur messages.
- `git shortlog -n` - Commit count ke according author sorting.
- `git shortlog -e` - Author email address.
- `git shortlog -n -e` - Sorting aur email address.
- `git shortlog -s` - Sirf author-wise commit summary.


## Key Learnings

- Git Rebase feature branch ke commits ko target branch ke latest commit ke upar apply karta hai.
- Rebase ke baad commits ke IDs change ho sakte hain.
- Merge aur rebase alag approaches hain.
- Rebase conflict ko manually resolve karna pad sakta hai.
- `git rebase --abort` active rebase ko cancel karta hai.
- `git add` resolved files ko staging area mein add karta hai.
- `git rebase --continue` rebase process ko continue karta hai.
- `git shortlog` author-wise commit history dikhata hai.
- `git shortlog -n` commit count ke according author groups sort karta hai.
- `git shortlog -e` email address show karta hai.
- `git shortlog -s` sirf commit summary dikhata hai.
