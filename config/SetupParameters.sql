-- SetupParameters
-- Author: MWS
--------------------------------------------------------------

-- ParameterGroups
--------------------------------------------------------------
INSERT OR IGNORE INTO ParameterGroups
		    (GroupId,						            Name)
VALUES	('MWS-SettlementLimitOptions',	'LOC_GROUPID_MWS_SETTLEMENT_LIMIT_OPTIONS');
--------------------------------------------------------------

-- Parameters
--------------------------------------------------------------
INSERT OR IGNORE INTO Parameters
		(ParameterID,							              Name,										                  Description,									                  Domain,								                  Hash,	  DefaultValue,							            ConfigurationGroup,	  ConfigurationKey,						          GroupId,						            ChangeableAfterGameStart,	SortIndex)
VALUES
    ('MWS-SettlementLimitType',				      'LOC_MWS_SETTLEMENT_LIMIT_TYPE',			    'LOC_MWS_SETTLEMENT_LIMIT_TYPE_DESC',			      'MWS-SettlementLimit',				          0,		  'MWS_SETTLEMENT_LIMIT_STANDARD',			'Game',				        'MWS-SettlementLimitType',				    'GameOptions',					        0,							          141),
		('MWS-SettlementLimitAntiquity',		    'LOC_MWS_SETTLEMENT_LIMIT_ANTIQUITY',		  'LOC_MWS_SETTLEMENT_LIMIT_ANTIQUITY_DESC',		  'MWS-SettlementLimitCustomAntiquity',	  0,		  'MWS_SETTLEMENT_LIMIT_ANTIQUITY_3',	  'Game',				        'MWS-SettlementLimitAntiquity',			  'MWS-SettlementLimitOptions',	  0,							          5141),
		('MWS-SettlementLimitExploration',	    'LOC_MWS_SETTLEMENT_LIMIT_EXPLORATION',		'LOC_MWS_SETTLEMENT_LIMIT_EXPLORATION_DESC',		'MWS-SettlementLimitCustomExploration',	0,		  'MWS_SETTLEMENT_LIMIT_EXPLORATION_8', 'Game',				        'MWS-SettlementLimitExploration',	    'MWS-SettlementLimitOptions',	  0,							          5142),
		('MWS-SettlementLimitModern',		        'LOC_MWS_SETTLEMENT_LIMIT_MODERN',	      'LOC_MWS_SETTLEMENT_LIMIT_MODERN_DESC',	        'MWS-SettlementLimitCustomModern',	    0,		  'MWS_SETTLEMENT_LIMIT_MODERN_16',			'Game',				        'MWS-SettlementLimitModern',		      'MWS-SettlementLimitOptions',	  0,							          5143);
--------------------------------------------------------------

-- ParameterDependencies
--------------------------------------------------------------
INSERT OR IGNORE INTO ParameterDependencies
		(ParameterID,							              ConfigurationGroup,	  ConfigurationKey,			      Operator,	  ConfigurationValue)
VALUES
    ('MWS-SettlementLimitAntiquity',		    'Game',				        'MWS-SettlementLimitType',	'Equals',	  'MWS_SETTLEMENT_LIMIT_CUSTOM'),
		('MWS-SettlementLimitExploration',	    'Game',				        'MWS-SettlementLimitType',	'Equals',	  'MWS_SETTLEMENT_LIMIT_CUSTOM'),
		('MWS-SettlementLimitModern',		        'Game',				        'MWS-SettlementLimitType',	'Equals',	  'MWS_SETTLEMENT_LIMIT_CUSTOM');
--------------------------------------------------------------

-- DomainValues
--------------------------------------------------------------
INSERT OR IGNORE INTO DomainValues
		(Domain,								                  Value,									                 Name,										                   Description,									                  SortIndex)
VALUES	
		('MWS-SettlementLimit',					          'MWS_SETTLEMENT_LIMIT_STANDARD',			  'LOC_MWS_SETTLEMENT_LIMIT_STANDARD',			  'LOC_MWS_SETTLEMENT_LIMIT_STANDARD_DESC',		    10),
    ('MWS-SettlementLimit',					          'MWS_SETTLEMENT_LIMIT_DOUBLE',			    'LOC_MWS_SETTLEMENT_LIMIT_DOUBLE',			    'LOC_MWS_SETTLEMENT_LIMIT_DOUBLE_DESC',		      20),
		('MWS-SettlementLimit',					          'MWS_SETTLEMENT_LIMIT_CUSTOM',			    'LOC_MWS_SETTLEMENT_LIMIT_CUSTOM',			    'LOC_MWS_SETTLEMENT_LIMIT_CUSTOM_DESC',			    50),
		
    --- Custom Antiquity Limits
		('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_1',		  'LOC_MWS_SETTLEMENT_1',		                  'LOC_MWS_SETTLEMENT_1_DESC',		                10),
		('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_2',		  'LOC_MWS_SETTLEMENT_2',		                  'LOC_MWS_SETTLEMENT_2_DESC',		                20),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_3',		  'LOC_MWS_SETTLEMENT_3',		                  'LOC_MWS_SETTLEMENT_3_DESC',		                30),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_4',		  'LOC_MWS_SETTLEMENT_4',		                  'LOC_MWS_SETTLEMENT_4_DESC',		                40),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_5',		  'LOC_MWS_SETTLEMENT_5',		                  'LOC_MWS_SETTLEMENT_5_DESC',		                50),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_6',		  'LOC_MWS_SETTLEMENT_6',		                  'LOC_MWS_SETTLEMENT_6_DESC',		                60),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_7',		  'LOC_MWS_SETTLEMENT_7',		                  'LOC_MWS_SETTLEMENT_7_DESC',		                70),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_8',		  'LOC_MWS_SETTLEMENT_8',		                  'LOC_MWS_SETTLEMENT_8_DESC',		                80),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_9',		  'LOC_MWS_SETTLEMENT_9',		                  'LOC_MWS_SETTLEMENT_9_DESC',		                90),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_10',    'LOC_MWS_SETTLEMENT_10',		                'LOC_MWS_SETTLEMENT_10_DESC',		                100),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_16',    'LOC_MWS_SETTLEMENT_16',		                'LOC_MWS_SETTLEMENT_16_DESC',		                150),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_20',    'LOC_MWS_SETTLEMENT_20',		                'LOC_MWS_SETTLEMENT_20_DESC',		                200),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_30',    'LOC_MWS_SETTLEMENT_30',		                'LOC_MWS_SETTLEMENT_30_DESC',		                300),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_32',    'LOC_MWS_SETTLEMENT_32',		                'LOC_MWS_SETTLEMENT_32_DESC',		                350),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_40',    'LOC_MWS_SETTLEMENT_40',		                'LOC_MWS_SETTLEMENT_40_DESC',		                400),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_50',    'LOC_MWS_SETTLEMENT_50',		                'LOC_MWS_SETTLEMENT_50_DESC',		                500),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_100',   'LOC_MWS_SETTLEMENT_100',		                'LOC_MWS_SETTLEMENT_100_DESC',		              600),
    ('MWS-SettlementLimitCustomAntiquity',		'MWS_SETTLEMENT_LIMIT_ANTIQUITY_200',   'LOC_MWS_SETTLEMENT_200',		                'LOC_MWS_SETTLEMENT_200_DESC',		              700),

    --- Custom Exploration Limits
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_1',	  'LOC_MWS_SETTLEMENT_1',		                  'LOC_MWS_SETTLEMENT_1_DESC',		                10),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_2',	  'LOC_MWS_SETTLEMENT_2',		                  'LOC_MWS_SETTLEMENT_2_DESC',		                20),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_3',	  'LOC_MWS_SETTLEMENT_3',		                  'LOC_MWS_SETTLEMENT_3_DESC',		                30),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_4',	  'LOC_MWS_SETTLEMENT_4',		                  'LOC_MWS_SETTLEMENT_4_DESC',		                40),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_5',	  'LOC_MWS_SETTLEMENT_5',		                  'LOC_MWS_SETTLEMENT_5_DESC',		                50),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_6',	  'LOC_MWS_SETTLEMENT_6',		                  'LOC_MWS_SETTLEMENT_6_DESC',		                60),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_7',	  'LOC_MWS_SETTLEMENT_7',		                  'LOC_MWS_SETTLEMENT_7_DESC',		                70),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_8',	  'LOC_MWS_SETTLEMENT_8',		                  'LOC_MWS_SETTLEMENT_8_DESC',		                80),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_9',	  'LOC_MWS_SETTLEMENT_9',		                  'LOC_MWS_SETTLEMENT_9_DESC',		                90),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_10',  'LOC_MWS_SETTLEMENT_10',		                'LOC_MWS_SETTLEMENT_10_DESC',		                100),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_16',  'LOC_MWS_SETTLEMENT_16',		                'LOC_MWS_SETTLEMENT_16_DESC',		                150),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_20',  'LOC_MWS_SETTLEMENT_20',		                'LOC_MWS_SETTLEMENT_20_DESC',		                200),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_30',  'LOC_MWS_SETTLEMENT_30',		                'LOC_MWS_SETTLEMENT_30_DESC',		                300),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_32',  'LOC_MWS_SETTLEMENT_32',		                'LOC_MWS_SETTLEMENT_32_DESC',		                350),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_40',  'LOC_MWS_SETTLEMENT_40',		                'LOC_MWS_SETTLEMENT_40_DESC',		                400),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_50',  'LOC_MWS_SETTLEMENT_50',		                'LOC_MWS_SETTLEMENT_50_DESC',		                500),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_100', 'LOC_MWS_SETTLEMENT_100',		                'LOC_MWS_SETTLEMENT_100_DESC',		              600),
    ('MWS-SettlementLimitCustomExploration',	'MWS_SETTLEMENT_LIMIT_EXPLORATION_200', 'LOC_MWS_SETTLEMENT_200',		                'LOC_MWS_SETTLEMENT_200_DESC',		              700),

    --- Custom Modern Limits
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_1',		      'LOC_MWS_SETTLEMENT_1',		                  'LOC_MWS_SETTLEMENT_1_DESC',		                10),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_2',		      'LOC_MWS_SETTLEMENT_2',		                  'LOC_MWS_SETTLEMENT_2_DESC',		                20),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_3',		      'LOC_MWS_SETTLEMENT_3',		                  'LOC_MWS_SETTLEMENT_3_DESC',		                30),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_4',		      'LOC_MWS_SETTLEMENT_4',		                  'LOC_MWS_SETTLEMENT_4_DESC',		                40),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_5',		      'LOC_MWS_SETTLEMENT_5',		                  'LOC_MWS_SETTLEMENT_5_DESC',		                50),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_6',		      'LOC_MWS_SETTLEMENT_6',		                  'LOC_MWS_SETTLEMENT_6_DESC',		                60),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_7',		      'LOC_MWS_SETTLEMENT_7',		                  'LOC_MWS_SETTLEMENT_7_DESC',		                70),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_8',		      'LOC_MWS_SETTLEMENT_8',		                  'LOC_MWS_SETTLEMENT_8_DESC',		                80),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_9',		      'LOC_MWS_SETTLEMENT_9',		                  'LOC_MWS_SETTLEMENT_9_DESC',		                90),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_10',	        'LOC_MWS_SETTLEMENT_10',		                'LOC_MWS_SETTLEMENT_10_DESC',		                100),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_16',	        'LOC_MWS_SETTLEMENT_16',		                'LOC_MWS_SETTLEMENT_16_DESC',		                150),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_20',	        'LOC_MWS_SETTLEMENT_20',		                'LOC_MWS_SETTLEMENT_20_DESC',		                200),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_30',	        'LOC_MWS_SETTLEMENT_30',		                'LOC_MWS_SETTLEMENT_30_DESC',		                300),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_32',	        'LOC_MWS_SETTLEMENT_32',		                'LOC_MWS_SETTLEMENT_32_DESC',		                350),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_40',	        'LOC_MWS_SETTLEMENT_40',		                'LOC_MWS_SETTLEMENT_40_DESC',		                400),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_50',	        'LOC_MWS_SETTLEMENT_50',                    'LOC_MWS_SETTLEMENT_50_DESC',		                500),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_100',	      'LOC_MWS_SETTLEMENT_100',		                'LOC_MWS_SETTLEMENT_100_DESC',		              600),
    ('MWS-SettlementLimitCustomModern',		    'MWS_SETTLEMENT_LIMIT_MODERN_200',	      'LOC_MWS_SETTLEMENT_200',		                'LOC_MWS_SETTLEMENT_200_DESC',		              700);
--------------------------------------------------------------