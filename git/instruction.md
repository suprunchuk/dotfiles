`Note`: This instruction uses aliases from git config file

## Creating a new branch, working on it, and merging to main 

1. Ensure you're on the latest main:

```bash
git co 
```

```bash
main git p
```

2. Create and switch to new dev branch:

```bash
git go dev
```

3. Push new branch and set upstream:

```bash
git push
```

4. Work on dev branch. Check status and commit changes:

```bash
git s
```
```bash
git ca
```

5. Push changes:

```bash
git push
```

6. Create pull request (PR) via web interface.

7. After PR approval, merge via web interface.

8. Switch to main and pull changes:

```bash
git co main
```

```bash
git p
```

9. (Optional) Delete local dev branch:

```bash
git dm
```

10. (Optional) Delete remote dev branch:

```bash
git push origin --delete dev
```