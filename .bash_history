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
