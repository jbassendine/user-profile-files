ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/get_translatables.py fr 8238
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/get_translatables.py fr 8238 > lead_with_purpose_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py fr 8238 > lead_with_purpose_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8238 > lead_with_purpose_translatables.csv
 cd ~/Development/mount-nomadic-dev/nomadic-scripts/
ls
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
set @edition_id = 71;
select
    token as 'Token/Name',
    closing_date as 'Closing date',
    coalesce(amount_reduced, 0) as 'Dollars Reduced', 
    coalesce(percentage_reduced, 0) as 'Percentage Reduced', 
    applies_to as 'Monthly/Annual', 
    valid_for_months as 'Valid for months after signup', 
    valid_for_years  as 'Valid for years after signup', 
    t_active_subscriptions as 'Active subscriptions',
    t_all_subscriptions as 'Active subscriptions',
    t_active_users as 'Active subscriptions'
from
    discount_code dc
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        where ps.active = 1
        and edition_id = @edition_id
        group by discount_token
    ) t_active_subscriptions on t_active_subscriptions.discount_token = dc.token
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        where edition_id = @edition_id
        group by discount_token
    ) t_all_subscriptions on t_all_subscriptions.discount_token = dc.token
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        inner join platform_subscription_invitation psi on psi.subscription_id=ps.id
        where ps.active = 1
        and psi.active = 1
        and edition_id = @edition_id
        group by discount_token
    ) t_active_users on t_active_users.discount_token = dc.token
where
    edition_id = 71;
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
set @edition_id = 71;
select
    token as 'Token/Name',
    closing_date as 'Closing date',
    coalesce(amount_reduced, 0) as 'Dollars Reduced', 
    coalesce(percentage_reduced, 0) as 'Percentage Reduced', 
    applies_to as 'Monthly/Annual', 
    valid_for_months as 'Valid for months after signup', 
    valid_for_years  as 'Valid for years after signup', 
    t_active_subscriptions.ct as 'Active subscriptions',
    t_all_subscriptions.ct as 'Active subscriptions',
    t_active_users.ct as 'Active subscriptions'
from
    discount_code dc
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        where ps.active = 1
        and edition_id = @edition_id
        group by discount_token
    ) t_active_subscriptions on t_active_subscriptions.discount_token = dc.token
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        where edition_id = @edition_id
        group by discount_token
    ) t_all_subscriptions on t_all_subscriptions.discount_token = dc.token
    inner join (
        select
            discount_token,
            count(ps.id) as 'ct'
        from
            platform_subscription ps 
        inner join platform_subscription_invitation psi on psi.subscription_id=ps.id
        where ps.active = 1
        and psi.active = 1
        and edition_id = @edition_id
        group by discount_token
    ) t_active_users on t_active_users.discount_token = dc.token
where
    edition_id = 71;
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~
cd .password-store/
cat README.md 
pass generate rippling.com 20
pass edit rippling.com
git s
git diff
git s
git diff
cd ~/Development/nomadic-gatling-tests/
cat README.md 
./mvnw gatling:test -Dgatling.simulationClass=com.io.gatling.demo.LoadTestLoginMessy
./mvnw gatling:test -Dgatling.simulationClass=com.io.gatling.demo.LoadTestLoginTidy
./mvnw gatling:test -Dgatling.simulationClass=com.io.gatling.demo.LoadTestLoginMessy
./mvnw gatling:test -Dgatling.simulationClass=com.io.gatling.demo.Probe
cat README.md 
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.Probe
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LoadTestLoginTidy
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp recheck_program_completion.py live@live-selected:/tmp && ssh -t live@live-selected 'python /tmp/recheck_program_completion.py "" vitor.rocio@bnymellon.com.br'
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp recheck_program_completion.py live@live-selected:/tmp && ssh -t live@live-selected 'python /tmp/recheck_program_completion.py "Leading in the New Normal Program" vitor.rocio@bnymellon.com.br'
scp mark_completed_program.py live@live-selected:/tmp && ssh -t live@live-selected 'python /tmp/mark_completed_program.py "Leading in the New" vitor.rocio@bnymellon.com.br'
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh live@live-selected
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
echo live-selected
ssh -t live@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py de < lead_with_purpose_translatables-de-DE.xlsx 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py de < lead_with_purpose_translatables-de-DE.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < lead_with_purpose_translatables-es-ES.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < lead_with_purpose_translatables-fr-FR.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < lead_with_purpose_translatables-it-IT.
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < lead_with_purpose_translatables-it-IT.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < lead_with_purpose_translatables-pt-BR.
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < lead_with_purpose_translatables-pt-BR.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < lead_with_purpose_translatables-th-TH.csv 
ssh nomadic@nomadic-dev
python
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
 cd ~/Development/mount-nomadic-dev/nomadic-scripts/
scp get_fm_output.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/get_fm_output.py
ls
scp get_fm_output.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/get_fm_output.py
ssh -t live@live-selected launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
pass edit aws.amazon.com
vi README.md 
cat README.md 
pass git log
cd .password-store/
cat README.md 
pass edit aws.amazon.com
cat README.md 
pass generate aws.amazon.com 20
git
git 
pass git log
pass git init
git
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
git s
git add .
git s
git stash
git pull --rebase
git pull --rebase origin master
git s
git stash apply
git add add_edition.py 
git s
git cm "Add Edition creation script"
git push origin
git s
git l
sudo umount ~/Development/mount-nomadic-dev
git s
git fetch
git s
git pull
git pull --rebase
git add .
git s
git pull --rebase
git stash
git pull --rebase
git stash apply
cd ..
ip a
curl ipinfo.io/ip
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
git lb
git s
 cd ~/Development/mount-nomadic-dev/nomadic-scripts/
git lb
git s
git lb
git co feature/completion-queries 
git s
git co master
git s
git add .
git s
git co -b feature/create-edition-script
git add create_edition.py 
git s
git add create_edition.py 
git s
git cm "Add create edition script"
git push origin feature/create-edition-script
git s
git add .
git co master
git s
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Downloads/Lead_with_purpose_translatables-th-TH.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < ~/Downloads/lead_with_purpose_translatables-it-IT.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Downloads/Lead_with_purpose_translatables-es-ES.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Downloads/lead_with_purpose_translatables-pt-BR.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo rpm -i nomachine-enterprise-client_8.4.2_2_x86_64.rpm 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/translations/ && scp import_translation_literals.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translation_literals.py
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8316 > the_loop_pt2_translatables.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs.xlsx
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs.csv
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs.py
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs.py > check_for_unpublished_resources_all_recent_p.csv
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/check_for_unpublished_resources_all_recent_programs.py > check_for_unpublished_resources_all_recent_programs.csv
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_all_recent_editions.py live@live-selected:/tmp && ssh live@live-selected python /tmp/check_for_unpublished_resources_all_recent_editions.py > check_for_unpublished_resources_all_recent_editions.csv
cd ~/Development/local-scripts/Reports/ && scp check_for_unpublished_resources_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/check_for_unpublished_resources_edition.py 11
cd ~/Downloads/
ls
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < ~/Downloads/lead_with_purpose_translatables-fr-FR.csv 
cd ~/Development/mount-nomadic-dev/nomadic-platform
gits
git s
git acm "Add completion date column to user/group report"
git push origin enhancement/reports-add-program-completion-date
git rebase master
git co master
git pull --rebase
git co enhancement/reports-add-program-completion-date
git rebase master
git s
git rebase --continue
git co enhancement/reports-add-program-completion-date
git l
git co master
git pull
git co enhancement/reports-add-program-completion-date
git rebase master
git s
git l
git rebase -i HEAD~2
git s
git push origin enhancement/reports-add-program-completion-date
git push -f origin enhancement/reports-add-program-completion-date
git s
git diff
git acm "Fix to shift columns to fit new column"
git l
git co master
git lb
git co enhancement/reports-add-program-completion-date
git s
git acam
git push origin enhancement/reports-add-program-completion-date
git s
git lb
git co fm-api
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git
ls
cd nomadic/
ls
cd ../../..
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git diff
git reset --hard HEAD
git lb
git co enhancement/reports-add-program-completion-date 
git s
git l
git diff HEAD~1
git reset HEAD~1
ssh nomadic@nomadic-dev
python
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh 44.203.73.101
ssh live@44.203.73.101
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/.password-store/
cat README.md 
pass edit aws.amazon.com
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
aws --profile nomadic sts get-caller-identity
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
ls
/usr/local/bin/aws --version
/usr/local/bin/aws --profile nomadic sts get-caller-identity
/usr/local/bin/aws --profile nomadic configure
/usr/local/bin/aws --profile nomadic sts get-caller-identity
git status
git pull
python alternate-asg-deploy.py 
pip install boto3
python alternate-asg-deploy.py 
/usr/local/bin/aws --profile nomadic sts get-caller-identity
vi ~/.aws/credentials 
/usr/local/bin/aws --profile nomadic sts get-caller-identity
/usr/local/bin/aws sts get-caller-identity
python alternate-asg-deploy.py 
ssh live@50.17.111.53
ssh nomadic@thekims.co.uk:10133
dig thekims.co.uk
ssh nomadic@147.12.190.4:10133
ssh nomadic@thekims.co.uk -o port=10133
cd ~/Development/mount-nomadic-dev/nomadic-platform
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ls
cd nomadic/
ls
cd ..
ls
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git fetch
git reset --hard origin/deploy-prod
cd nomadic/learner-portal/
npm ci
git s
cd ../..
ls
git reset --hard origin/deploy-prod
git s
git l
git s
git reset --hard deploy-prod
git ss
git s
git clean -df
git s
git l
git s
git add .
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py 
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Downloads/
ls
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Downloads/Final_Lead_with_purpose_translatables-th-TH\ 240423-Proofed-2.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Downloads/the_loop_pt2_translatables_pt-BR.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Downloads/the_loop_pt2_translatables_es-ES.csv 
ssh live@3.80.136.200
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git fetch
git s
git pull
git co deploy-prod
git co master
git l
git co deploy-prod
git rebase master
git l
git s
git acam
git push -f origin HEAD:deploy-prod
git s
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -L 4001:192.168.75.82:4000 -o port=10133 nomadic@thekims.co.uk
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp add_edition_copy_structured.py live@live-selected:/tmp && scp copy_segment.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_edition_copy_structured.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
d ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/learning_time_from_prod.py > learning_time_from_prod_probe.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/learning_time_from_prod.py > learning_time_from_prod_probe.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod.py > learning_time_from_prod_probe.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod.py > 
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod.py 
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/learning_time_from_prod.py 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/learning_time_from_prod.py > learning_time_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod.py > learning_time_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/learning_time_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/learning_time_from_prod_custom_dates.py
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa_all_time.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa_21_22.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa_22_23.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa_21_22.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > learning_time_axa_all_time.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh live@54.237.215.8
ssh -t live@live-selected launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git diff
git l
git diff HEAD HEAD~1
git s
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git l
git s
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py 
git s
cd ../nomadic-platform
git s
git co master
git s
git fetch
git s
git co -b bug-fix/decimal-place-accenture
git s
git cm "Add toFixed(0) method to code for generating progress message, to limit to integer. Also moved return outside of if block so that execution does not fall through to next code block if there is no time remaining provided."
git s
git push origin bug-fix/decimal-place-accenture
git s
git cm "Add check for undefined and null"
git push origin bug-fix/decimal-place-accenture
git s
git reset --hard HEAD
git co master
git fetch
git l
git s
git pull
git l
git diff HEAD~2
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git l
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py 
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates_AXA_extras_short.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/learning_time_from_prod_custom_dates_AXA_extras_short.py
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates_AXA_extras_short.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates_AXA_extras_short.py > learning_time_axa_2022_short.xlsx
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates_AXA_extras.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates_AXA_extras.py > learning_time_axa_2022.xlsx
learning_time_from_prod_custom_dates_AXA_extras.py
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates_AXA_extras.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates_AXA_extras.py > learning_time_axa_2022_22.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp add_admin_user_accounts.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_admin_user_accounts.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp learning_time_from_prod_custom_dates_AXA_extras.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates_AXA_extras.py > learning_time_axa_2022.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@44.201.136.211
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected
ssh -t ec2-user@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t ec2-user@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@live-selected
ssh ec2-user@live-selected
ssh live@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@44.201.136.211 /home/live/bin/launch-mysql-cli
ssh -t live@live-selected launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp live@live-selected:/home/live/bin/launch-mysql-cli
scp live@live-selected:/home/live/bin/launch-mysql-cli /home/james/Development/
scp /home/james/Development/ live@44.201.136.211:/home/live/bin/launch-mysql-cli
scp /home/james/Development/launch-mysql-cli live@44.201.136.211:/home/live/bin/
ssh -t live@44.201.136.211 /home/live/bin/launch-mysql-cli
scp live@live-selected:/home/live/bin/launch-mysql-cli /home/james/Development/
scp live@live-selected:/home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
scp live@live-selected:/tmp/live-celery-beat-stderr---supervisor-rGWOqm.log /tmp/
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp add_edition_copy_structured.py live@live-selected:/tmp && scp copy_segment.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_edition_copy_structured.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp add_edition_copy_structured.py live@live-selected:/tmp && scp copy_segment.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_edition_copy_structured.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@52.207.248.31
select distinct step_type from achivement_step;
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp add_edition_copy_structured.py live@live-selected:/tmp && scp copy_segment.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_edition_copy_structured.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git reset --hard origin/deploy-prod
git co master
git pull
git l
git co deploy-prod
git rebase master
git push -f origin HEAD:deploy-prod
cd ../..
cd mount-nomadic-dev/nomadic-scripts/
ls
python alternate-asg-deploy.py 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git fetch
git s
git co -b bug-fix/journey-user-progress-mixin
git add nomadic/admin/api/tasks/journey_user_progress_report.py
git s
git cm "Move Journey User Progress Report to using filter and methods from report mixin"
git push -u origin bug-fix/journey-user-progress-mixin
git co master
git acam
git add nomadic/admin/api/tasks/journey_user_progress_report.py
git cam
git l
git s
git reset HEAD
git reset HEAD~1
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git cm "Move Journey User Progress Report to using filter and methods from report mixin"
git s
git co master
git lb
git co bug-fix/journey-user-progress-mixin
git s
git diff
qgit add nomadic/admin/api/views/analytics/downloads.py
git add nomadic/admin/api/views/analytics/downloads.py
git commit --amend
git s
git restore --staged
git restore --staged nomadic/admin/api/views/analytics/downloads.py
git s
git lb
git co bug-fix/journey-user-progress-mixin
git s
git add nomadic/admin/api/views/analytics/downloads.py
git commit --amend
git co master
git lb
git co bug-fix/journey-user-progress-mixin
git s
git co bug-fix/journey-user-progress-mixin
git push -f origin bug-fix/journey-user-progress-mixin
git l
git s
git co master
git s
git pull
git add .
git stash
git l
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase
git rebase master
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py 
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.py
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_che
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.pys
sudo umount ~/Development/mount-nomadic-dev
python
python2
python2.7
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod2.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod3.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod4.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_expiry_information_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py > subscription_detail_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_detail_information_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py > subscription_detail_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py > subscription_detail_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py > subscription_detail_inf
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_expiry_information_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp add_edition_copy_structured.py live@live-selected:/tmp && scp copy_segment.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/add_edition_copy_structured.py
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp assign_resources_to_edition.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/assign_resources_to_edition.py 127 190
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
cd ../
cd ../nomadic-gatling-tests/
ls
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git co -b feature/subscription-reports
git s
git diff
git s
git diff
git s
git push origin feature/subscription-reports
git co master
git s
git add .
git stash
git pull
git co -b enhancement/permissions-report-documentation
git stash pop
git diff
git acm "Fix documentation for permissions report to explain meaning of the two group admin sheets"
git push origin enhancement/permissions-report-documentation
cd ../nomadic-admin/
git s
git diff
git s
git reset HEAD~2
git co feature/subscription-reports
git co -b feature/subscription-reports
git push origin feature/subscription-reports
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp assign_resources_to_edition.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/assign_resources_to_edition.py 127 190
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp assign_resources_to_edition.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/assign_resources_to_edition.py 127 190
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git lb
git co feature/subscription-reports
git s
git add nomadic/auth/payment/models/subscriptions.py 
git cm "Change PlatformSubscription name field to unicode"
git s
git push origin
git push origin feature/subscription-reports
git s
git push origin feature/subscription-reports
git s
git push origin feature/subscription-reports
git s
git diff
git push origin feature/subscription-reports
git diff HEAD
git diff HEAD~1
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp citi_post_program_survey.py live@live-selected:/tmp && ssh live@live-selected python /tmp/citi_post_program_survey.py > citi_post_program_survey.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8464 > embracing_change_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8463 > managing_change_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 172 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 172 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt True > sept_platform_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > sept_platform_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > sept_platform_translatables_fr.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr False > sept_platform_translatables_edition_fr.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt False > sept_platform_translatables_edition_pt.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp assign_resources_to_edition.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/assign_resources_to_edition.py 104 188
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ../nomadic-scripts/
python alternate-asg-deploy.py
pass edit aws.amazon.com
pass generate aws.amazon.com 20
pass edit aws.amazon.com
cd ~/.password-store/
cat README.md 
ssh ec2-user@44.212.2.29
ssh live@3.90.108.197
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.pys
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.py
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < >/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < /Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr > ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8516 8517 8518 > management_i_ii_ii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8516 > management_i_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8517 > management_iii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8517 > management_ii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8518 > management_iii_sept.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
cd ..
ls
cd nomadic-gatling-tests/
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
./mvnw dependency:resolve
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git cm "Use journey sheet code to generate summary sheet, allowing the inclusion of extra properties"
git s
git diff
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git cm "Formatting for column widths and autofilter"
git co master
git co feature/axa-reports 
git s
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git s
git diff
git diff --staged
git cm "Handle retired journeys"
git co master
git s
git push origin feature/axa-reports
git s
git co master
git pull
git s
git pull
git s
git pull
git l
git co seramount/private-community
git fetch
git co deploy-prod
git reset --hard origin/deploy-prod
git l
git rebase -i HEAD~6
git l
git s
git push -f origin HEAD:deploy-prod
git l
python alternate-asg-deploy.py
cd ..
cd nomadic-admin/
git pull
git s
git co master
git pull
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
mvn -v
./mvnw ./mvnw compile
./mvnw compile
cd nomadic-gatling-tests/
cd ~/Development/nomadic-gatling-tests/
./mvnw compile
./mvnw test-compile
./mvnw compile
./mvnw test-compile
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
./mvnw dependency:resolve
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_program.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_program.py > survey_scores_by_program.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/nomadic-gatling-tests/
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git s
git reset --hard HEAD
git s
git pull
git s
git diff
git s
git reset HEAD~1
git s
git diff
git co -b feature/new-columns-user-report
git acm "Add new columns to user report, comments, replies, mentions and total interactions"
git push origin feature/new-columns-user-report
git s
git co master
git co feature/new-columns-user-report
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git l
git rebase master
git l
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git diff
git acm "Split out code for generating yearly and monthly iterators, and add partial boolean and explanation"
git s
git diff
git acm "Add license period iterator and test, and code to consume it"
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
python
sudo umount ~/Development/mount-nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
ls
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /t-t mp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected python /temp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/send_program_certificate.py 7256 531520
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-platform
git s
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-admin/
git s
git diff
git s
git reset --hard HEAD
git co master
git pull
ng build --prod -e prod --base-href=/ng/portal/
git s
git l
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-platform
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
rm -rf ng/portal/*
cp -r ../nomadic-admin/dist/* ng/portal
git s
git acam
git l
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo dnf install testdisk
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd Development/local-scripts/Reports/translations
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < make_it_happen_translatables_v2_multilingual-1-es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < make_it_happen_translatables_v2_multilingual-1-pt.csv 
cd ../nomadic-platform
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git push -f origin HEAD:deploy-prod
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@54.167.135.243
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
htop
sudo dnf install htop
htop
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/.password-store/
ls
cat README.md 
pass edit aws.amazon.com
pass generate aws.amazon.com 20
pass edit aws.amazon.com
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
git s
git push origin feature/subscription-reports
git s
git diff
git push origin feature/subscription-reports
git diff HEAD
git diff HEAD~1
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_expiry_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_expiry_information_from_prod.py > subscription_expiry_information_from_prod.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cliz
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp citi_post_program_survey.py live@live-selected:/tmp && ssh live@live-selected python /tmp/citi_post_program_survey.py > citi_post_program_survey.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8464 > embracing_change_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8463 > managing_change_translatables.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 172 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 172 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt True > managing_change_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt True > sept_platform_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > sept_platform_translatables.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > sept_platform_translatables_fr.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr False > sept_platform_translatables_edition_fr.csv
cd ~/Development/local-scripts/Reports/translations/ && scp get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 pt False > sept_platform_translatables_edition_pt.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp assign_resources_to_edition.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/assign_resources_to_edition.py 104 188
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ../nomadic-scripts/
python alternate-asg-deploy.py
pass edit aws.amazon.com
pass generate aws.amazon.com 20
pass edit aws.amazon.com
cd ~/.password-store/
cat README.md 
ssh ec2-user@44.212.2.29
ssh live@3.90.108.197
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.pys
scp ~/Development/local-scripts/Reports/user_permissions_check.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_permissions_check.py
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < >/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr < /Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py fr > ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True > ~/Downloads/get_translatables_new_language_edition_fr.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8516 8517 8518 > management_i_ii_ii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8516 > management_i_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8517 > management_iii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8517 > management_ii_sept.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8518 > management_iii_sept.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_new_language_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_new_language_edition.py 168 fr True
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
cd ..
ls
cd nomadic-gatling-tests/
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
./mvnw dependency:resolve
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git cm "Use journey sheet code to generate summary sheet, allowing the inclusion of extra properties"
git s
git diff
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git cm "Formatting for column widths and autofilter"
git co master
git co feature/axa-reports 
git s
git add nomadic/admin/api/tasks/journey_user_progress_report.py 
git s
git diff
git diff --staged
git cm "Handle retired journeys"
git co master
git s
git push origin feature/axa-reports
git s
git co master
git pull
git s
git pull
git s
git pull
git l
git co seramount/private-community
git fetch
git co deploy-prod
git reset --hard origin/deploy-prod
git l
git rebase -i HEAD~6
git l
git s
git push -f origin HEAD:deploy-prod
git l
python alternate-asg-deploy.py
cd ..
cd nomadic-admin/
git pull
git s
git co master
git pull
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
mvn -v
./mvnw ./mvnw compile
./mvnw compile
cd nomadic-gatling-tests/
cd ~/Development/nomadic-gatling-tests/
./mvnw compile
./mvnw test-compile
./mvnw compile
./mvnw test-compile
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
./mvnw dependency:resolve
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_program.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_program.py > survey_scores_by_program.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/nomadic-gatling-tests/
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git s
git reset --hard HEAD
git s
git pull
git s
git diff
git s
git reset HEAD~1
git s
git diff
git co -b feature/new-columns-user-report
git acm "Add new columns to user report, comments, replies, mentions and total interactions"
git push origin feature/new-columns-user-report
git s
git co master
git co feature/new-columns-user-report
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git l
git rebase master
git l
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git diff
git acm "Split out code for generating yearly and monthly iterators, and add partial boolean and explanation"
git s
git diff
git acm "Add license period iterator and test, and code to consume it"
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
python
sudo umount ~/Development/mount-nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
ls
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /t-t mp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected python /temp/send_program_certificate.py 7256 531520
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/send_program_certificate.py 7256 531520
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-platform
git s
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-admin/
git s
git diff
git s
git reset --hard HEAD
git co master
git pull
ng build --prod -e prod --base-href=/ng/portal/
git s
git l
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
cd ../nomadic-platform
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
rm -rf ng/portal/*
cp -r ../nomadic-admin/dist/* ng/portal
git s
git acam
git l
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo dnf install testdisk
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd Development/local-scripts/Reports/translations
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < make_it_happen_translatables_v2_multilingual-1-es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < make_it_happen_translatables_v2_multilingual-1-pt.csv 
cd ../nomadic-platform
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git push -f origin HEAD:deploy-prod
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
echo "Store some history and config files for backup" >> README.md
git init
git acm "Add files with README"
git s
git remote add origin git@github.com:jbassendine/user-profile-files.git
git push -u origin master
git reset --hard HEAD
git reset HEAD~1
git init
git acm "Add files with README"
git remote add origin git@github.com:jbassendine/user-profile-files.git
git push -u origin master
cd ~/.password-store/
ls
cat README.md
pass git show
git s
git diff
git acm "Add git commands"
git s
git remote add origin git@github.com:jbassendine/james-pass.git
git s
git push -u origin master
git s
git pull
ls
git pull
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
git s
cat /etc/hosts 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py
cd ..
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py > user_report_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py > user_report_from_prod.xlsx
cd ~/Downloads/
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < make_it_happen_translatables_v2_ES-ES.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8550 > abi_system_updates.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < make_it_happen_translatables_v2_ES-ES.csv 
cd ~/Downloads/
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < make_it_happen_translatables_v2_ES-ES.csv 
cd translations/
ls
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < embracing_change_translatables_FR-FR.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < embracing_change_translatables_PT-BR-1.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < managing_change_translatables_FR-FR.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < managing_change_translatables_PT-BR.csv 
scp /home/james/Development/local-scripts/Reports/translations/import_translatables_simplified.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_simplified.py pt < sept_platform_translatables_edition_pt_PT-BR.csv 
scp /home/james/Development/local-scripts/Reports/translations/import_translatables_simplified.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_simplified.py fr < sept_platfo
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < mih_fr.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < mih_es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < mih_it.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < mih_pt.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < mih_th.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git co -b bug-fix/abi-quiz-score
git acm "wip"
git reset HEAD
git reset HEAD~1
git s
git l
git reset HEAD
git add .
git s
git cm "wip"
git s
git reset HEAD~1
git s
git co bug-fix/abi-quiz-score
git s
git reset HEAD
git l
git acm "wip"
git s
git co HEAD
git co HEAD~1
git s
git co bug-fix/abi-quiz-score
git s
git l
git rebase --i
git rebase -i HEAD~2
git s
git diff
git acm "Fix outer join"
git l
git co master
git lb
git co bug-fix/abi-quiz-score
git co master
git s
git lb
git push origin bug-fix/abi-quiz-score
git co master
git co bug-fix/abi-quiz-score
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py > user_report_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp user_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/user_report_from_prod.py > user_report_from_prod.xlsx
git s
git diff
git reset --hard HEAD
git s
git co master
git pull
git co fm-api
git reset --hard origin/fm-api
git s
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/nomadic-gatling-tests/
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
git s
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
git s
./mvnw gatling:test -Dgatling.simulationClass=io.gatling.demo.LTScenario
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
touch BasicSimulation.scala
cd ~/.password-store/
cat README.md 
git s
pass generate monday.com 20
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git s
git co deploy-prod
git reset --hard origin/deploy-prod
git s
git rebase master
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
git clone git@github.com:scalagen/scalagen.git
cd scalagen/
sbt compile
curl -Ls https://raw.githubusercontent.com/dwijnand/sbt-extras/master/sbt > ~/bin/sbt && chmod 0755 ~/bin/sbt
sbt compile
ls
cd scalagen
ls
./scalagen
sudo dnf install scala
./scalagen
./scalagen ../../../
./scalagen ../../../nomadic-gatling-tests/src/test/java/io/gatling/demo/LTScenario.java LTScenario.scala
./scalagen ../../../nomadic-gatling-tests/src/test/java/io/gatling/demo/LTScenario.java
./mvnw dependency:resolve
./mvnw scalagen:main
./mvnw scalagen:test
sudo dnf update
sudo dnf install openjdk-17-jre
sudo dnf install java-17-openjdk.x86_64
sudo dnf install java-11-openjdk.x86_64
sudo dnf remove java-17-openjdk.x86_64
sudo dnf install java-11-openjdk.x86_64
cd ~/Development/mount-nomadic-dev/nomadic-platform
ls
cd nomadic/
ls
cd dashboard/
cd core/views/
ls
cd ~
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/nomadic-gatling-tests-scala/
ls
cd bin/
ls
./gatling.
./gatling.sh 
cd ~
cd bin
mkdir bin
cd bin
mkdir sbt
rm sbt/
rmdir sbt
cd ~/Development/nomadic-gatling-tests-scala/
ls
cd bin/
ls
./gatling.sh 
sudo umount ~/Development/mount-nomadic-dev
echo #JAVA
echo $JAVA
printenv
source ~/.bashrc 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.19.0.7-1.fc36.x86_64/
cd Development/nomadic-gatling-tests-scala/
./gatling.sh 
cd bin/
./gatling.sh 
sudo remove java-11-openjdk
sudo dnf remove java-11-openjdk
sudo dnf install java-11-openjdk-11.0.18.0.10-1.fc36.x86_64
./gatling.sh 
sudo dnf install java-11-openjdk
./gatling.sh 
source ~/.bash
source ~/.bashrc
./gatling.sh 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/local-scripts/Reports/translations/translatables_abi_system_updates-es-LA.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/local-scripts/Reports/translations/translatables_abi_system_updates-pt-BR.csv 
ssh live@52.70.134.5
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ../nomadic-platform
git s
git l
ssh live@live-selected
cat /etc/hosts 
ssh live@3.220.154.189
ssh live@18.233.8.133
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py lang 8550 > abi_system_updates.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/abi_system_updates_pt.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/mount-nomadic-dev/nomadic-scripts/abi_system_updates_es.csv 
ssh live@3.95.11.17
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/mount-nomadic-dev/nomadic-scripts/abi_system_updates_es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/abi_system_updates_pt.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
git s
git co origin/deploy-staging
git l
cat /etc/hosts
sudo vi /etc/hosts
ssh staging@staging
sudo vi /home/james/.ssh/known_hosts
ssh staging@staging
sudo vi /home/james/.ssh/known_hosts
ssh staging@staging
ssh -t staging@staging /home/live/bin/launch-mysql-cli
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
cd ../nomadic-admin/
ng build --prod -e prod --base-href=/ng/portal/
ssh staging@staging
sudo vi /home/james/.ssh/known_hosts
ssh staging@staging
ssh ec2-user@staging
ssh staging@staging
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
sudo vi /home/james/.ssh/known_hosts
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
ssh staging@staging
touch launch-mysql-cli
sudo vi launch-mysql-cli 
ls
rm launch-mysql-cli 
ls
scp live@live-selected:/home/live/bin/launch-mysql-cli .
ls
scp launch-mysql-cli staging@staging:/home/staging/bin/
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
ssh live@live-selected 
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd Development/nomadic-gatling-tests-scala/
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
git s
cd ../nomadic-platform
git s
git acam
git push -f origin HEAD:deploy-prod
git l
git diff HEAD~1
git diff --name-only HEAD~1
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
gits
git s
git co master
git pull
git co deploy-prod
git s
git rebase master
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git l
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git co master
git co -b bug-fix/segregated-communities-global-filter
git s
git diff
git acm "Add additional logic so that the filter specifically for global posts only applies in editions that have a global community (not segregated)"
git push origin bug-fix/segregated-communities-global-filter 
git s
git add nomadic/journeys/models.py 
git s
git cm "Fix reference to users"
git push origin bug-fix/segregated-communities-global-filter 
git s
git co master
git diff
git co -b bug-fix/unicode-mention-error
git acm "Fix problem which raises exception when posting to community in an edition with a name containing unicode characters"
git push origin bug-fix/unicode-mention-error
git co master
git pull
git co deploy-prod
git rebase master
git s
git l
git z
git s
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git fetch
git co master
git co staging
git reset --hard origin/staging
git l
gitk
git co deploy-staging
git co origin/deploy-staging
git co -b deploy-staging origin/deploy-staging
git l
gitk
git l
git lb
git rebase -i HEAD~2
git l
git reset HEAD~1
git s
git add .
git s
git stash
git merge bug-fix/home-routing
git co bug-fix/home-routing
git merge bug-fix/home-routing
git s
git co deploy-staging
git merge bug-fix/home-routing
git stash pop
git acm "Bundles"
git l
git s
git l
git s
git push -f origin HEAD:deploy-staging
git l
git co deploy-staging
git push -f origin HEAD:deploy-staging
git l
git diff 87973bf27 505fa45b2
git l
git s
git acam
git s
git push -f origin HEAD:deploy-staging
ssh nomadic@nomadic
ssh nomadic@nomadic-dev
ssh staging@staging
cat /etc/hosts
ssh staging@staging
ssh -t staging@staging
ssh ec2-user@staging
ssh staging@52.72.182.203
ssh ec2-user@52.72.182.203
cat /etc/hosts
sudo vi /home/james/.ssh/known_hosts
ssh staging@staging
cat /etc/hosts
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
ssh staging@staging
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
ssh live@18.204.225.55
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
scp live@live-selected:/home/live/bin/launch-mysql-cli .
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t staging@staging /home/staging/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py es 8366 > make_it_happen_es.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/get_translatables.py es 8366 > make_it_happen_es.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py es 8366 > make_it_happen_es.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_es.csv 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ../nomadic-admin/
git s
git l
git pull
git l

cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py es 8366 > make_it_happen_es.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py de 8366 > make_it_happen_de.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py it 8366 > make_it_happen_it.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py pt 8366 > make_it_happen_pt.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366 > make_it_happen_th.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py fr 8366 > make_it_happen_fr.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_fr.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_pt.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_it.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py de < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_de.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_th.csv 
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366 > make_it_happen_th.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366 > make_it_happen_th.csv

ssh -t live@live-selected /home/live/bin/launch-mysql-cli
python
python2
python2.7
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ../nomadic-platform
cd ~/Development/mount-nomadic-dev/nomadic-platform
ls
git s
git co master
git co -b bug-fix/journey-step-community-link
git acm "Fix variable reference"
git reset HEAD
git reset HEAD~1
git reset HEAD
git acm "Fix variable reference"
git diff HEAD~1
git acm "Add consistent margin"
git s
git acam
git l
git push origin bug-fix/journey-step-community-link
git s
git co master
git pull
git l
git co deploy-prod
git s
git reset --hard origin/deploy-prod
git rebase
git rebase master
git s
git l
git acam
git push -f origin HEAD:deploy-prod
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
git l
git co master
cd ../nomadic-platform
git s
git co master
git l
git co deploy-prod
git l
cd ../nomadic-scripts/
python alternate-asg-deploy.py
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
ssh live@54.92.173.182
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366 > make_it_happen_th.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py es 8366 > make_it_happen_es.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py de 8366 > make_it_happen_de.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py it 8366 > make_it_happen_it.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py pt 8366 > make_it_happen_pt.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py th 8366 > make_it_happen_th.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables.py fr 8366 > make_it_happen_fr.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py es < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_es.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_fr.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_pt.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_it.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py de < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_de.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_th.csv 
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py fr 8366 > make_it_happen_fr.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py fr 8366 > make_it_happen_fr.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py lang [200~8347 8348 8349 8350 8454 8531  > make_it_happen_fr.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py lang 8347 8348 8349 8350 8454 8531 > translatables_seramount_programs.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_resources.py 167 > translatables_seramount_resources.csv
scp ~/Development/local-scripts/Reports/translations/get_translatables_platform_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_platform_edition.py 168 fr True > ~/Downloads/get_translatables_platform_edition.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/get_translatables_platform_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_platform_edition.py 168 fr True > ~/Downloads/get_translatables_platform_edition.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/get_translatables_platform_edition.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_platform_edition.py 168 fr True > get_translatables_platform_edition.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py fr 344 345 346 463 472 486 488 > translatables_seramount_journeys.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git add .
git stash
git s
git diff HEAD~1
git diff --files-only HEAD~1
git diff --name-only HEAD~1
git stash apply
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo umount ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git co -b bug-fix/followup-email-cutoff
git acm "Add cutoff_delay timedelta"
git push origin bug-fix/followup-email-cutoff
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py fr 8366 > make_it_happen_fr.csv
ssh live@aiting for all instances to be tagged
3.87.251.233
ssh live@3.87.251.233
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_program.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_edition_teld.py > survey_scores_by_edition_teld.xlsx
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_edition_teld.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_edition_teld.py > survey_scores_by_edition_teld.xlsx
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_edition_teld.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_edition_teld.py > survey_scores_by_edition_teld_2.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/send_program_certificate.py 7621 546005
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py 7256 "ewk741@usask.ca"
scp send_program_certificate.py live@live-selected:/tmp && ssh live@live-selected python /tmp/send_program_certificate.py "Professionalism" "ewk741@usask.ca"
ssh -t live@live-selected "python /tmp/send_program_certificate.py 'Professionalism' 'ewk741@usask.ca'"
cd ~/Development/local-scripts/Reports/ && scp citi_post_program_survey.py live@live-selected:/tmp && ssh live@live-selected python /tmp/citi_post_program_survey.py > citi_post_program_survey.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp citi_post_program_survey.py live@live-selected:/tmp && ssh live@live-selected python /tmp/citi_post_program_survey.py > citi_post_program_survey.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp survey_scores_by_program_teld.py live@live-selected:/tmp && ssh live@live-selected python /tmp/survey_scores_by_program_teld.py > survey_scores_by_program_teld.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh nomadic@nomadic-dev
cd ~/Development/local-scripts/Reports/
scp send_scheduled_email.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/send_scheduled_email.py
ssh nomadic@nomadic-dev
ssh live@3.92.200.146
ssh nomadic@nomadic-dev
ssh nomadic@nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_th.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py de < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_de.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py it < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_it.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/make_it_happen_pt.csv 
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py fr 8366 > make_it_happen_fr.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py es 8366 > make_it_happen_es.csv
cat /etc/hosts
ssh nomadic@nomadic-dev
cd ~/Development/local-scripts/Reports/ && scp get_platform_subscriptions.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_platform_subscriptions.py > get_platform_subscriptions.xlsx
cd ~/Development/local-scripts/Reports/ && scp get_platform_subscriptions.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_platform_subscriptions.py 71 > get_platform_subscriptions.xlsx
cd ~/Development/local-scripts/Reports/ && scp get_platform_subscriptions.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_platform_subscriptions.py > get_platform_subscriptions.xlsx
cd ~/Development/local-scripts/Reports/ && scp get_platform_subscriptions.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_platform_subscriptions.py 71 > get_platform_subscriptions.xlsx
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_resources.py 170 > translatables_septodont_resources.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_resources.py 168 > translatables_septodont_resources.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py 168 > translatables_septodont_journeys.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py 16fr 168 499 > translatables_septodont_journeys.csv
ssh nomadic@nomadic-dev
cd ~/Development/local-scripts/Reports/ && scp send_scheduled_email.py nomadic@nomadic-dev:/tmp && ssh -t nomadic@nomadic-dev python /tmp/send_scheduled_email.py
ssh nomadic@nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git s
git add .
git s
git stash
git s
git pull
git co -b enhancement/date-translations
git stash pop
git s
git push -u origin enhancement/date-translations
git push origin
git rebase -i HEAD~2
git push -f origin
git co master
git lb
git co -b bug-fix/journey-step-community-button-text
git s
git acm "Fix variable reference in buttonText method, and also fix link template for more accurate translations"
git push origin bug-fix/journey-step-community-button-text
git s
git diff
git acm "Change button text in journey overlay also"
git push origin
git push origin bug-fix/journey-step-community-button-text
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git s
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git reset --hard HEAD
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
cd ../nomadic-admin/
git pull
cd ../nomadic-platform
rm -rf ng/portal/*
cp -r ../nomadic-admin/dist/* ng/portal
git s
git acam
git s
git push -f origin HEAD:deploy-prod
git s
cd ../nomadic-scripts/
ls
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git co master
git pull
git co deploy-prod
git rebase master
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git co master
git lb
git co bug-fix/followup-email-cutoff
git s
git l
git diff HEAD
git diff HEAD~1
git co master
git pull
git s
git diff
git s
git acm "Patch bug fix for variable name"
git diff HEAD~1
git push origin
git co deploy-prod
git rebase master
git push -f origin HEAD:deploy-prod
git l
git s
git co master
git co -b enhancement/email-log-statement
git diff
git acm "Add log statement"
git push origin enhancement/email-log-statement
git co master
git pull
git co deploy-prod 
git rebase master
git push -f origin HEAD:deploy-prod
git s
git add .
git stash
grunt
git s
git add .
git stash
git s
git stash pop
git s
git diff
git s
git l
git co master
git co -b bug-fix/program-tags
git cherry-pick 5668420a0^..a3dae6d5e
git l
git push origin bug-fix/program-tags
git co master
git co origin bug-fix/program-tags
git co bug-fix/program-tags
git s
git diff
git s
git diff
git acm "Use get_or_create even when a request is available, if a tag is not"
git amend
git cam
git push origin bug-fix/program-tags
git acm "Fix indentation issue, get request inside function"
git push origin bug-fix/program-tags
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git s
git l
git acam
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd /home/james/Development/local-scripts/Reports/ && scp reindex.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/reindex.py
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git add .
git stash
git pull
git co bug-fix/tag-unique-autocomplete
git stash pop
git s
git diff
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
python
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ls
pwd
cd ..
git clone git@github.com:nomadicfm/admin-components.git
cd admin-components/
git s
git co -b bug-fix/tags-unique
cd ../nomadic-scripts/
ls
cd ../admin-components/
npm run
npm dev
node
ifconfig
cat /etc/hosts
npm run dev
npm run dev -- --host 0.0.0.0 --root /admin-components
curl https://bersin.nomadic.local/cms/taxonomy
curl -k https://bersin.nomadic.local/cms/taxonomy
sudo dnf install firewall-config
docker logs -f --tail 10 nomadic-nginx
docker exec -ti nomadic-nginx bash
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py es 8366 > make_it_happen_es.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py es 8238 > lead_with_purpose.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd /home/james/Development/local-scripts/Reports/ && sc fix_duplicate_tags.py nomadic@nomadic-dev:/tmp && ssh -t nomadic@nomadic-dev python /tmp/fix_duplicate_tags.py
cd /home/james/Development/local-scripts/Reports/ && scp fix_duplicate_tags.py nomadic@nomadic-dev:/tmp && ssh -t nomadic@nomadic-dev python /tmp/fix_duplicate_tags.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git acm "Add unique constraint, and change field type with 2000 character limit to allow for index"
git push origin
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
cd ../nomadic-platform
git s
git co master
git diff
git acm "Reorganize migrations"
git co deploy-prod
git rebase master
git l
git push -f origin HEAD:deploy-prod
git co master
git push origin
cd ../nomadic-scripts/
python alternate-asg-deploy.py
ssh live@3.85.12.14
ssh live@3.85.12.14
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@54.83.77.135
cd ../nomadic-platform
git s
git acm "Alter migration so adding unique constraint is separate step"
git diff HEAD~1
git push origin
ssh live@54.83.77.135
git co deploy-prod
git fetch
git s
git rebase master
git push -f origin HEAD:deploy-prod
ssh live@18.212.14.62
ssh live@54.83.77.135
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py 71 > subscription_detail_information_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py 71 > subscription_detail_information_from_prod.xlsx
cd Development/nomadic-gatling-tests-scala/
cd ~/Development/nomadic-gatling-tests-scala/
./mvnw gatling:test -Dgatling.smulationClass=io.gatling.demo.Probe
./gatling.sh 
cd bin/
./gatling.sh 
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py 71 > subscription_detail_information_from_prod_invoice.xlsx
python
git s
git co master
git co -b bug-fix/handle-grace-period-subs
git s
git diff
git acm "Add code for handling subscriptions past the grace period"
git push origin bug-fix/handle-grace-period-subs
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
git s
git push origin bug-fix/handle-grace-period-subs
git co master
git co bug-fix/handle-grace-period-subs
git l
git co master
git co -b bug-fix/retry-payments
git cherry-pick ^d908ea0ec..b0843b88e
git cherry-pick d908ea0ec^..b0843b88e
git s
git cherry-pick --abort
git cherry-pick b0843b88e^..d908ea0ec
git cherry-pick d908ea0ec^..b0843b88e
git cherry-pick --continue
git co bug-fix/handle-grace-period-subs
git reset --hard HEAD~1
git s
git l
qgit lb
git lb
git co bug-fix/retry-payments
git l
git cherry-pick ^d0131e4de..e0525aca9
git cherry-pick d0131e4de^..e0525aca9
git l
git push origin bug-fix/retry-payments
git co bug-fix/handle-grace-period-subs
git l
git reset --hard fa5349e8c
git l
git s
git push -f origin bug-fix/handle-grace-period-subs
git co bug-fix/retry-payments 
git acm "Fix grace period comparator"
git push origin bug-fix/retry-payments
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-platform
git s
git co master
git pull
git co deploy-prod
git reset --hard origin/deploy-prod
git rebase master
git l
git push -f origin HEAD:deploy-prod
cd ../nomadic-scripts/
python alternate-asg-deploy.py
git s
python alternate-asg-deploy.py
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod_minus_deleted.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod_minus_deleted_since_june.xlsx
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod.xlsx
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod_until_june.xlsx
cd ~/Development/local-scripts/Reports/ && scp resource_report_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/resource_report_from_prod.py > resource_report_from_prod_june_to_now.xlsx
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py fr < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_journeys_new.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_journeys_new_pt.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@live-selected
ssh live@3.85.184.79
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
ssh live@live-selected
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
pass
pass --help
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/
ls
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected "python /tmp/send_program_certificate.py 'Ethical Decision Making' 'ullsd20@uwgb.edu'"
cd ~/Development/local-scripts/Reports/
scp send_program_certificate.py live@live-selected:/tmp && ssh -t live@live-selected "python /tmp/send_program_certificate.py 'Ethical Decision Making' 'ullsd20@uwgb.edu'"
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_programs.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_programs.py th 8366 > make_it_happen_th_correction.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_full.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_full.py th < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/make_it_happen_th_correction.csv 
cd bin/
ls
gatling.sh
./gatling.sh 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/nomadic-gatling-tests-scala/bin/
./gatling.sh 
cd ~/.password-store/
ls
cat README.md 
pass generate login.microsoftonline.com 20
pass edit login.microsoftonline.com
cd ~/.password-store/
ls
cat README.md 
pass 
pass -h
pass -help
pass --help
pass 
pass rm microsoftonline.com
pass edit login.microsoftonline.com 
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py fr 168 502 > translatables_septodont_journey_managing_change.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py fr 168 502
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py fr 168 502 > translatables_septodont_journey_managing_change.csv
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
scp /home/james/Development/local-scripts/Reports/learning_time_from_prod_custom_dates.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > /home/james/Development/local-scripts/Reports/learning_time_from_prod_custom_dates.xlsx
scp /home/james/Development/local-scripts/Reports/learning_time_from_prod_custom_dates.py live@live-selected:/tmp && scp /home/james/Development/local-scripts/Reports/script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/learning_time_from_prod_custom_dates.py > /home/james/Development/local-scripts/Reports/learning_time_from_prod_custom_dates.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod.py 71 > subscription_detail_information_from_prod_invoice_with_ids.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71 > subscription_detail_information_from_prod_invoice_with_ids_ca.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh li-t ve@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71 >
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh li-t ve@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh li-t ve@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71 > subscription_detail_information_from_prod_invoice_with_ids_ca.xlsx
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh -t live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/local-scripts/Reports/ && scp subscription_detail_information_from_prod_charge_attempts.py live@live-selected:/tmp && scp script_from_prod_mixin.py live@live-selected:/tmp && ssh live@live-selected python /tmp/subscription_detail_information_from_prod_charge_attempts.py 71 > subscription_detail_information_from_prod_invoice_with_ids_ca.xlsx
ssh -t live@live-selected /home/live/bin/launch-mysql-cli
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_journeys.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_journeys.py fr 133 276 > translatables_abi_journey_innovation.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/get_translatables_resources.py 133 > translatables_journey_resources_abi_innovation.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv 
scp ~/Development/local-scripts/Reports/translations/import_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv
~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv
scp ~/Development/local-scripts/Reports/translations/import_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/import_translatables_resource.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/import_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py pt < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_pt.csv
scp /home/james/Development/mount-nomadic-dev/nomadic-scripts/translations/import_translatables_resources.py live@live-selected:/tmp && ssh live@live-selected python /tmp/import_translatables_resources.py fr < ~/Development/mount-nomadic-dev/nomadic-scripts/translations/translatables_septodont_resources_fr.csv
ssh nomadic@nomadic-dev
sudo umount ~/Development/mount-nomadic-dev
python
ssh nomadic@nomadic-dev
sudo mount -t nfs nomadic-dev:/home/nomadic/app ~/Development/mount-nomadic-dev
mysql
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/get_translatables_resources.py 71 > translatables_journey_resources_abi_innovation.csv
mysql
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/get_translatables_resources.py 71 > translatables_journey_resources_abi_innovation.csv
cd ~/Development/mount-nomadic-dev/nomadic-scripts/translations/ && scp get_translatables_resources.py nomadic@nomadic-dev:/tmp && ssh nomadic@nomadic-dev python /tmp/get_translatables_resources.py 71 > translatables_journey_resources_jba_local.csv
