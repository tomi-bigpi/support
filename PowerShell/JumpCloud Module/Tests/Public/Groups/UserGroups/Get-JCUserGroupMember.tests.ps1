Describe -Tag:('JCUserGroupMember') 'Get-JCUserGroupMember 1.0' {
    BeforeAll {
        Connect-JCOnline -JumpCloudApiKey:($PesterParams_ApiKey) -force | Out-Null
    }
    It 'Gets a User Groups membership by Groupname' {
        $UserGroupMembers = Get-JCUserGroupMember -GroupName $PesterParams_UserGroupName
        $UserGroupMembers.UserID.Count | Should -BeGreaterThan 0
    }
    It 'Gets a User Groups membership -ByID' {
        $UserGroupMembers = Get-JCUserGroupMember -ByID $PesterParams_UserGroupID
        $UserGroupMembers.to.id.Count | Should -BeGreaterThan 0
    }
}
