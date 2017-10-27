USE [MvcAffableBean]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Dairy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Meats')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Bakery')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Fruits and Vegetables')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (1, N'Butter', CAST(700.00 AS Decimal(18, 2)), N'Butter', CAST(N'2017-10-06 07:46:08.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (2, N'Cream chees', CAST(200.00 AS Decimal(18, 2)), N'Cream cheese', CAST(N'2017-10-06 07:46:08.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (3, N'Curdled milk', CAST(700.00 AS Decimal(18, 2)), N'Curdled milk', CAST(N'2017-10-06 07:48:11.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (4, N'Dried milk', CAST(420.00 AS Decimal(18, 2)), N'Dried milk', CAST(N'2017-10-06 07:46:08.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (5, N'Yogurt', CAST(140.00 AS Decimal(18, 2)), N'Yogurt', CAST(N'2017-10-06 07:49:13.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (6, N'Full cream milk', CAST(700.00 AS Decimal(18, 2)), N'Full cream milk', CAST(N'2017-10-06 07:50:27.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (9, N'Cheese', CAST(450.00 AS Decimal(18, 2)), N'Cheese', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (10, N'Pasteurized milk', CAST(800.00 AS Decimal(18, 2)), N'Pasteurized milk', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (11, N'Chicken', CAST(600.00 AS Decimal(18, 2)), N'Chicken', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (13, N'Duck', CAST(650.00 AS Decimal(18, 2)), N'Duck', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (14, N'Emu', CAST(900.00 AS Decimal(18, 2)), N'Emu', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [LastUpdated], [CategoryId]) VALUES (15, N'Goose', CAST(740.00 AS Decimal(18, 2)), N'Goose', CAST(N'2017-10-06 00:00:00.0000000' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [CartId], [ProductId], [Count], [DateCreated]) VALUES (1, N'f489dc33-480c-42b2-9e8a-f8291f7d5d7c', 1, 1, CAST(N'2017-10-26 21:04:39.4672356' AS DateTime2))
INSERT [dbo].[Carts] ([Id], [CartId], [ProductId], [Count], [DateCreated]) VALUES (2, N'f489dc33-480c-42b2-9e8a-f8291f7d5d7c', 4, 1, CAST(N'2017-10-26 21:04:45.2851643' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Carts] OFF
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710270138479_InitialCreate', N'MvcAffableBean.DAL.MvcAffableBeanContext', 0x1F8B0800000000000400ED5C5B6FE4B6157E2FD0FF20E8A92D1CCBF6A6D9C49849E08CD785D1F5DADDB183BC2D68893316AACB94A48C1904F9657DE84FCA5F28A92BAF92A8D1CCD80B6381854D91878787DFB9903CC77FFCF77F939FD671E43C4384C33499BAA7C727AE03133F0DC264397533B2F8E67BF7A71FFFFCA7C987205E3BBF54FDDEB17E746482A7EE1321AB73CFC3FE138C013E8E431FA5385D90633F8D3D10A4DED9C9C90FDEE9A907290997D2729CC9E72C21610CF35FE8AFB334F1E18A6420BA490318E1B29D7E99E7549D4F208678057C38756F9EFD8BC5023C46F0670892E3CB8B8FAE73118580723287D1C2754092A40410CAE7F903867382D264395FD10610DD6F5690F65B8008C392FFF3A67BDFA59C9CB1A578CDC08A949F6192C696044FDF95B2F1E4E18324ECD6B2A3D2FB40A54C366CD5B904A7EE0C20E23AF244E7B308B14E8A708BDD3866A38E1CF1DB510D068A19F6EFC8996511C9109C263023084447CE5DF61885FE3FE1E63EFD374CA64916453C7B9441FA4D68A04D77285D4144369FE1A264FA3A701D4F1CE7C903EB61DC986249D7097977E63A9FE8E48CF77AF7B9E5CF498AE03F6002112030B803844094301A30979F32BB3417134F331F051CD51DD7B901EB8F305992272A55B0769DAB700D83AAA5E4E12109A9AAD1410465B06B1AFA6B90F9A47B651DDCA654F7B6237149C534439009AB22C49AEEA94677D3FA049EC3652E77FDFA5CE7338CF2EFF8295C154A9D23F04BDDE10AA5F1E7342A455FB57F99A719F2E984F7A9E6E33D404B48446E265EA320AD6A53CF6CAB39E5C037E531CEC5FE6F519D6FFFDE4B732C017C8742BF9EF512FA610C22D7B943F4A7D20F7EEF3A731F308203D403621F85ABC284EFD8287C04983CAC8261AAA8D831029729DA585B18A34A5714B53A5D6966D3A9D16BF99BA2DB4A079D7EB7B1768B0288285E0B3A58CBA1D847677FF43D6A662A6E0DDDAA450DB2498DD8ECDD7931F2CD2A1DD82A75B9423D2AADF44646A251B1066150C4B53D12C5F107C423175B79DDBD67F93221CAD91F02E5B14239998F6D88FD2B03A56A8C64FB79E6FA98576980D1C80AFD14C7D0DAD9D649B485A4839D4307C7A304AC922CAD3D043FFCCD4D18E7BA0A11261DBEE2F4BB935D84B02CF03BCCCC17418020C62D13BFDFC9BC33CE38E97CF24E269D53A0B446023B99F52EC50444334AA06D7B772365763D80F62FE8BBA734695BEDD9B7BB98F5430CC2688443DA3E2F5064758CF90B9DD10FB3952B78C01075D89B21275A6B8F36DC99BDF9B10E995F609CFA614E508C7F9AA386C8F1872470BACEEB0558B8730B850C9572B8A272A53C4CDDBF29A269215B1F671AB2CD3148A47BEACAFB729B5CC20812E85CF8C5EDFC0C601F04AA0A50F904620BDD4A1AA325EC0D6146A3400A8E3021EABE87891FAE40D4C1BD34AE2762185FF50CF2974BB88209DBEC8EFDE833357F0DA4B250CF2489AC4B42138F83573BEA5ACF0526A8F43B2434B0918FAEFD41D9EB84C103548CC55F1A4AFB2C670F88EDB37FBDD0DB7E363F0C842B94F584947252DC016C95ABCA4E43FDE2A02A2D61FF2095F6A90F036D174DFB00A6F09066828AFE558D77B9C80A7ADA87B8D700381DE37B80994EFE2F0F5C451049C7103A02A2920731C6665FE15A77334CCF1365DC8ECB73818C1E467D0E09075CEC3A4DE42A6051819E38B8B94F57C6D7D8EB2051464521D43351C5A01D544A03B232F3231BF82EB67877A7654D8C3E7A926BA3A410E1F0A1889C7BA5E0BA995E3264D0F63860D42BE07759417F8F23054788DF6BD9B0888BED2188F65B6E5528FDA35FFBF8975BA382C41699F58A7879F949A01C5B86B572744A4FEBE96C42AF712426FBBE1EA01D2025314946958DD9F7777B7F413B50C7EAB5FE7EBB35577716B5BBA9BF4DBC2247B06C98788664C2C90D58ADC264C92517962DCEBCC82C9C7D33B74FB98B0B1A9E8F35997735B7F54C24456009A5AFECD63580F963C22520E011B0DB9D59102BDDF4CED560D2AB3979FFA9EE5965E4ABDEEC679D2767899685B355239172EC155D5ACCA298FC364A428C3ACC61D99D20024873F1354BA32C4ECCC1947974958CC753A8DAFA53E122299E504B80D5C251713F2B305434F5A7215C18F394840F2ABD8927ED8D12162A08500269114EBDC0562BF896783318AB1E90338EDC0DEA8A9B717E7CD16283B83C254D445B28676674A0844F3C1350C27FE84F4F482EE3E9091F6C74B3B95914F5D37CE378300C7341E0D656531FDEF6B29CA6A187C6F18176450EC2B6DC1AE9B465BF415D04F6E260E42B4F41B7BAEE43CD749B8C209E60D3FA6240219D37B655D7B613571F9D6D1FBF1BC5E5325178225CB39DD9574935ADFD29D5A9223CA1BAD102E10A0A6706049A2894791C3C89B2C9C24573591982D272ED966121929755355A7055244E080C154DFD699469103C8DB269F721AA113BB11A37576DF6B6B1495FD019C7E6EB8BB369A399B32D2CD9D8466CA722556E0AE42EF5ECF58D81743330294FE9DDB588CAB1BDE8C2B26FD2E7306047F6F90613181FB30EC7F3FF44B328840CC155871B90840B8849915FE29E9D9C9E49E58C2FA7B4D0C3388834B71C727DA1B8577B48900999443B5360ACAB61F8AABEE41920FF09A0BFC460FD579ED6A0CABD9C61E549E43A09E07AEAFE968F3A77AE7FFD520F3C72F268E2DC39717EDFAEE22F9F7AFB743576F66315BC6742A6D9FB0ED2D605775F0794F8BCB90A484A3DC936256CC11E4AD8B6D2004D99DA3004E9F454AE5AEBAB5DCD480BF5B2AFCF7AC3B0A5E4DACED4AFA39C67CFF65D5F06D45B0DC4E15BB1221711757B9B81252D5F875229F5235ACDCAEB38B62C0F198DB054FDA1A5FBDE9E2C5FDCA1372FF63485DA8DB188AAA5197AD10E10815879311AC37C618596282BADD8A66EC21819EC37B8D46055288D183D4832954658444AF6E50FAFD1F0EDA0E0A0492BDA772980924A34ACC861603EA2F12569F42444F39B8826827A952503522AD64152F64D29435B257D0FC356C7B3C7E800EB7C7BB38ED40F0336FD39659099F84AA165B3C5FB0755DB61F1C5A4E41F1E4445A2B57515C04B078C21A5EDD030D127D7AB6982F26EA949F3C69CF9E2AD82C6C58F29DDD72278D3E6769AD2E9DBB2E975C48D699F865CFB4D6BA6BD9E7D63E2B62113DFBC14B9836E3EE58F48D964EB7727EB6B97D89E5B6D9AB1359FBF6D1E758A7DA4FBCB081093A17AE4F7EBF28D5F4F32BF16279AE492FE29E8BA4CF69D89A5263C427EBEC57E1E6CF92325DE0F5D2A6FE59B7CEB9DE4D6AB2FE3D4C7717FCB97BA571C2E1B12EC2FFB26D017BC5BDDE73A59A4959F9538AABA48B71237908080BABE0B44C205F009FDEC438CF33F44F10B88B2FC66EA1106D7C96D465619A14B86F16324580CE6ACDBE6CF0B08449E27B7F94B181E630994CD90DD6FDD263F676114D47C5F69AE4D0C24581450DEC5B0BD24EC4E66B9A9297D52927F4C844AF1D5C1CB3D8C571125866F9339788643787BC0F0235C027F5325389889746F8428F6C965089608C4B8A4D18CA7BF520C07F1FAC7FF036B3719BED25A0000, N'6.1.3-40302')
