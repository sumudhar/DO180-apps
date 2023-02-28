import argparse
import datetime
import os
from cloudfoundry_client.client import CloudFoundryClient


def init_argparse() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    parser.add_argument("--user_env")
    parser.add_argument("--user_space")
    parser.add_argument("--workspace")

    return parser


def generate_build_pack(user_env,user_space,workspace):
    # client = CloudFoundryClient.build_from_cf_config()
    print("*"*100)
    print(workspace)
    print("*"*100)
    utc_datetime = datetime.datetime.utcnow()
    today_date=utc_datetime.strftime("%Y-%m-%d-%H-%M-%S")
    # "${USER_ENV_NAME}-" + "${USER_SPACE_NAME}" + "-buildpack-report-" + "${Todays_Date}" + ".txt"
    file_name= f"{user_env}-{user_space}-buildpack-report-{today_date}.txt"
    print(today_date,file_name)
    # cwd = os.getcwd()
    # new_dir_path= f"{cwd}/PCFBuildpackReport"
    # # new_file_path = r'C:\Program Files\arbitrary' 
    # if not os.path.exists(new_dir_path):
    #     os.makedirs(new_dir_path)
    # print(cwd)   
    # file_path= f"{new_dir_path}/{file_name}"
    # # echo '************************************************************************************************************' | sudo tee PCFBuildpackReport/$filename
	# # echo '************************************************************************************************************' | sudo tee -a PCFBuildpackReport/$filename
	# # echo '                                       PCF Build Pack Report                                                ' | sudo tee -a PCFBuildpackReport/$filename
	# # echo '************************************************************************************************************' | sudo tee -a PCFBuildpackReport/$filename
	# # echo '************************************************************************************************************' | sudo tee -a PCFBuildpackReport/$filename
	# # echo ' Date          : $Todays_Date' | sudo tee -a PCFBuildpackReport/$filename
	# # echo ' ENV/SPACE     : $USER_SPACE_NAME' | sudo tee -a PCFBuildpackReport/$filename
	# # echo '************************************************************************************************************' | sudo tee -a PCFBuildpackReport/$filename
    # with open(file_path, 'a+') as file_obj:
    #     display_string= f"{'*'*108}\n{'*'*108}\n{'': <40} PCF Build Pack Report ! \n{'*'*108}\n{'*'*108}\n{'Date': <20} : {today_date}\n{'ENV/SPACE': <20} : {user_space}\n{'*'*108}\n"
    #     print(display_string)
    #     file_obj.write(display_string)
    #     org_name= "TEST-ORG"
    #     space_name='TEST-SPACE'
    #     total_apps=100
    #     display_string= f"{'-'*108}\n{'-'*108}\n ORG NAME: {org_name}\n Total Apps in ORG {org_name} & SPACE {space_name} : {total_apps}\n{'-'*108}\n\n{'-'*108}\n {'NAME': <20} {'BUILD_PACK_NAME': <25} {'BUILD_PACK_FILENAME': <25} {'BUILD_PACK_DETECTED': <20} \n{'-'*108}\n"
    #     print(display_string)
    #     file_obj.write(display_string)
        # for organization in client.v2.organizations:
        #     org_name= organization.get('entity').get('name')
        #     org_guid= organization.get('metadata').get('guid')
        #     for space in organization.spaces(): # perform a GET on spaces_url attribute
        #         space_name=space.get('entity').get('name')
        #         # get the apps that belong to the user given space
        #         if space_name==user_space:
        #             total_apps= 100
        #             # echo '------------------------------------------------------------------------------------------------------------' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo '------------------------------------------------------------------------------------------------------------' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo ' ORG NAME: ${ORG_NAME}' | sudo tee -a PCFBuildpackReport/$filename					
        #             # echo ' Total Apps in ORG ${ORG_NAME} & SPACE ${SPACE_NAME} : ${APP_COUNT}' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo '------------------------------------------------------------------------------------------------------------' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo '------------------------------------------------------------------------------------------------------------' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo '         NAME                BUILD_PACK_NAME  BUILD_PACK_FILENAME  BUILD_PACK_DETECTED ' | sudo tee -a PCFBuildpackReport/$filename
        #             # echo '------------------------------------------------------------------------------------------------------------' | sudo tee -a PCFBuildpackReport/$filename
        #             for app in space.apps():
        #                 display_space_string= f"{'-'*108}\n{'-'*108}\n{'': <10} ORG NAME: {org_name}\n Total Apps in ORG {org_name} & SPACE {space_name} : {total_apps}\n{'-'*108}\nn{'-'*108}\n {'NAME': <20} {'BUILD_PACK_NAME': <20} {'BUILD_PACK_FILENAME': <20} {'BUILD_PACK_DETECTED': <20} \n{'-'*108}\n"
        #                 print(app)


def main() -> None:
    parser = init_argparse()
    args = parser.parse_args()
    generate_build_pack(user_env=args.user_env, user_space=args.user_space,workspace=args.workspace)


if __name__ == "__main__":
    main()