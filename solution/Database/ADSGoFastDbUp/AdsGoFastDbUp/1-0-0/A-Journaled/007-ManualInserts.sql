Update [dbo].[ExecutionEngine]
            Set [Name] = '$DataFactoryName$', 
            ResourceGroup = '$ResourceGroupName$',
            SubscriptionUid = '$SubscriptionId$',
            DefaultKeyVaultURL = 'https://$KeyVaultName$.vault.azure.net/', 
            LogAnalyticsWorkspaceId = '$LogAnalyticsWorkspaceId$'
            JsonSchema = "{}"
        where id = -1

Update [dbo].[ExecutionEngine]
            Set [Name] = '$SynapseWorkspaceName$', 
            ResourceGroup = '$ResourceGroupName$',
            SubscriptionUid = '$SubscriptionId$',
            DefaultKeyVaultURL = 'https://$KeyVaultName$.vault.azure.net/', 
            LogAnalyticsWorkspaceId = '$LogAnalyticsWorkspaceId$'
            JsonSchema = "{
                "endpoint": "placeholderendpoint"
            }"
        where id = -2


Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = '$SqlServerName$.database.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Database" : "$SampleDatabaseName$" }'
        Where 
            SystemId = '-1'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = '$SqlServerName$.database.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Database" : "$StagingDatabaseName$" }'
        Where 
            SystemId = '-2'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = '$SqlServerName$.database.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Database" : "$MetadataDatabaseName$" }'
        Where 
            SystemId = '-11'
        GO


        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$BlobStorageName$.blob.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Container" : "datalakeraw" }'
        Where 
            SystemId = '-3'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$BlobStorageName$.blob.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Container" : "datalakelanding" }'
        Where 
            SystemId = '-7'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$BlobStorageName$.blob.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Container" : "transientin" }'
        Where 
            SystemId = '-9'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$AdlsStorageName$.dfs.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Container" : "datalakeraw" }'
        Where 
            SystemId = '-4'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
        SystemServer = 'https://$AdlsStorageName$.dfs.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/',
            SystemJSON = '{ "Container" : "datalakelanding" }'
        Where 
            SystemId = '-8'
        GO

        Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$AdlsStorageName$.dfs.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/'
            SystemJSON = '{  "Database" : "msdb"  , "Username" : "adminuser", "PasswordKeyVaultSecretName":"selfhostedsqlpw"   }'
        Where 
            SystemId = '-14'
        GO

                Update 
        [dbo].[SourceAndTargetSystems]
        Set 
            SystemServer = 'https://$AdlsStorageName$.dfs.core.windows.net',
            SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/'
        Where 
            SystemId = '-15'
        GO

