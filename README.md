# Module One Final Project Feedback

This is a fork of the learn-co-students Module One Final Project template.  As a Technical Coaching Fellow at Flatiron School, I am using branches of this fork to give feedback to students on their projects.

## These are the steps in my feedback process:
(For the purpose of this example, I'm giving feedback to Reid and Kim on https://github.com/knheidorn/boozy_game)
1. Create a new branch for this student project
   - `git checkout -b boozy-game-feedback`
2. Set the remote upstream to the student project. (By default, upstream is https://github.com/learn-co-students/module-one-final-project-guidelines-seattle-web-career-021819.  But we want to pull in changes from the student project fork of that repo.)
   - `git remote -v` will show the current `origin` and `upstream`.  Mine when I started showed that `origin` was https://github.com/hoffm386/module-one-final-project-guidelines-seattle-web-career-021819.git (this repo), and had no `upstream`.
   - `git remote rm upstream` will make sure that the old `upstream` is removed.  (If you get `fatal: No such remote: upstream` that's fine, it just means that there was nothing to remove.)
   - `git remote add upstream https://github.com/knheidorn/boozy_game.git` sets Kim and Reid's "Boozy Game" project fork as my new upstream
   - `git remote -v` should now show that the `origin` is still my repo, and the `upstream` is now "Boozy Game"
3. Pull in student code to feedback branch
   - `git pull upstream master`
   - If you get an error message about a merge conflict, that means you messed up with creating the fork and/or branch.  Go to the student repo, find the most recent commit that was from learn-co (not the student project), and copy the commit hash.  Then run `git reset --hard <commit hash>`, e.g. `git reset --hard 16521b16f174b252619b5307ace8f0e652a66710` for this repo, to go back to https://github.com/knheidorn/boozy_game/commit/16521b16f174b252619b5307ace8f0e652a66710 which was before all of Kim and Reid's changes.  After that, `git pull upstream master` should work.
4. Make suggested changes to the student code on the `boozy-game-feedback` branch
   - `git commit` for each category of suggested changes
   - `git push` as needed to publish to my `origin` here on GitHub
5. When finished suggesting changes, set up a pull request between my `boozy-game-feedback` feature branch and Kim and Reid's "Boozy Game" project fork.
   - https://github.com/knheidorn/boozy_game/compare/master...hoffm386:boozy-game-feedback?expand=1
   - This pull request allows me to write up a summary, and include links to the particular commits that I want to draw to their attention

## Finished Pull Requests:
1. [Kim and Reid](https://github.com/knheidorn/boozy_game/pull/2)
