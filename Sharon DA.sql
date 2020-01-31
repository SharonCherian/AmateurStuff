1. To find the countries that scored 1-100 in value in terms of educational status.
select * from `bigquery-public-data.world_bank_intl_education.international_education`
where value between 1 and 100
Limit 13
country_name	country_code	indicator_name	indicator_code	value	year
Armenia	ARM	SABER: (School Health and School Feeding) Policy Goal 4: Design and Implementation	SABER.HLTH.GOAL4	2.0	2016
St. Lucia	LCA	"Unemployment, female (% of female labor force)"	SL.UEM.TOTL.FE.ZS	28.5	2016
Lebanon	LBN	"Labor force, female (% of total labor force)"	SL.TLF.TOTL.FE.ZS	24.3085830873833	2016
Libya	LBY	"Unemployment, female (% of female labor force)"	SL.UEM.TOTL.FE.ZS	26.2999992370605	2016
China	CHN	"Population, male (% of total)"	SP.POP.TOTL.MA.ZS	51.5261808976784	2016
Russian Federation	RUS	PIRLS: Fourth grade students who did not reach the low international benchmark in reading achievement (%)	LO.PIRLS.REA.BL	1.0	2016
Samoa	WSM	"Population, ages 0-14 (% of total)"	SP.POP.0014.TO.ZS	36.8594490711083	2016
Sao Tome and Principe	STP	"Percentage of repeaters in primary education, all grades, both sexes (%)"	SE.PRM.REPT.ZS	13.6615400314331	2016
Seychelles	SYC	Duration of compulsory education (years)	SE.COM.DURS	10.0	2016
Seychelles	SYC	Population growth (annual %)	SP.POP.GROW	1.33763477950025	2016
Turkmenistan	TKM	Official entrance age to upper secondary education (years)	UIS.THAGE.3.A.GPV	15.0	2016
Turks and Caicos Islands	TCA	Official entrance age to primary education (years)	SE.PRM.AGES	6.0	2016
Turks and Caicos Islands	TCA	Theoretical duration of lower secondary education (years)	SE.SEC.DURS.LO	3.0	2016

2. The average value that every country scored in the world in terms of educational status.
select avg(value) 
from `bigquery-public-data.world_bank_intl_education.international_education`
f0_
1.2278760882108809E10


3. To find data with regard to specific countries with respeact to their educational status, of Germany, France, India, Nicaragua, Cuba and Spain
select * from `bigquery-public-data.world_bank_intl_education.country_summary`
where short_name in ("Germany", "France", "India", "Nicaragua", "Cuba","Spain")

country_code	short_name	table_name	long_name	two_alpha_code	currency_unit	special_notes	region	income_group	wb_two_code	national_accounts_base_year	national_accounts_reference_year	sna_price_valuation	lending_category	other_groups	system_of_national_accounts	alternative_conversion_factor	ppp_survey_year	balance_of_payments_manual_in_use	external_debt_reporting_status	system_of_trade	government_accounting_concept	imf_data_dissemination_standard	latest_population_census	latest_household_survey	source_of_most_recent_income_and_expenditure_data	vital_registration_complete	latest_agricultural_census	latest_industrial_data	latest_trade_data	latest_water_withdrawal_data
NIC	Nicaragua	Nicaragua	Republic of Nicaragua	NI	Nicaraguan gold cordoba	"April 2013 database update: Based on official government statistics, national accounts data were revised for 1994 onward; the base year changed to 2006."	Latin America & Caribbean	Lower middle income	NI	2006		Value added at basic prices (VAB)	IDA	HIPC	Country uses the 1993 System of National Accounts methodology.	1965–95		"IMF Balance of Payments Manual, 6th edition."	Actual	General trade system	Budgetary central government	General Data Dissemination System (GDDS)	2005	"Reproductive Health Survey (RHS), 2006/2007"	"Living Standards Measurement Study Survey (LSMS), 2009"		2011		2012	2001
CUB	Cuba	Cuba	Republic of Cuba	CU	Cuban peso		Latin America & Caribbean	Upper middle income	CU	2005		Value added at basic prices (VAB)			Country uses the 1993 System of National Accounts methodology.					Special trade system			2012	"Multiple Indicator Cluster Survey (MICS), 2010/11"		Yes			2006	2007
IND	India	India	Republic of India	IN	Indian rupee	Fiscal year end: March 31; reporting period for national accounts data: FY. April 2013 database update: The India Central Statistical Office revised historical data series both current and constant going back to 1960 with 2004–05 as the base.	South Asia	Lower middle income	IN	2004/05		Value added at basic prices (VAB)	IBRD		Country uses the 1993 System of National Accounts methodology.		2005	"IMF Balance of Payments Manual, 6th edition."	Actual	General trade system	Consolidated central government	Special Data Dissemination Standard (SDDS)	2011	"Demographic and Health Survey (DHS), 2005/06"	"Integrated household survey (IHS), 2012"		2011	2009	2012	2010
DEU	Germany	Germany	Federal Republic of Germany	DE	Euro	"A simple multiplier is used to convert the national currencies of EMU members to euros. The following irrevocable euro conversion rate was adopted by the EU Council on January 1, 1999: 1 euro = 1.95583 German mark. Please note that historical data before 1999 are not actual euros and are not comparable or suitable for aggregation across countries."	Europe & Central Asia	High income: OECD	DE	2005		Value added at basic prices (VAB)		Euro area	Country uses the 1993 System of National Accounts methodology.		Rolling	"IMF Balance of Payments Manual, 6th edition."		Special trade system	Consolidated central government	Special Data Dissemination Standard (SDDS)	2011		"Integrated household survey (IHS), 2000"	Yes	2010	2009	2012	2007
ESP	Spain	Spain	Kingdom of Spain	ES	Euro	"A simple multiplier is used to convert the national currencies of EMU members to euros. The following irrevocable euro conversion rate was adopted by the EU Council on January 1, 1999: 1 euro = 166.386 Spanish peseta. Please note that historical data before 1999 are not actual euros and are not comparable or suitable for aggregation across countries."	Europe & Central Asia	High income: OECD	ES	2005		Value added at basic prices (VAB)		Euro area	Country uses the 1993 System of National Accounts methodology.		Rolling	"IMF Balance of Payments Manual, 6th edition."		Special trade system	Consolidated central government	Special Data Dissemination Standard (SDDS)	2011		"Integrated household survey (IHS), 2000"	Yes	2010	2009	2012	2008
FRA	France	France	French Republic	FR	Euro	"A simple multiplier is used to convert the national currencies of EMU members to euros. The following irrevocable euro conversion rate was adopted by the EU Council on January 1, 1999: 1 euro = 6.55957 French franc. Please note that historical data before 1999 are not actual euros and are not comparable or suitable for aggregation across countries."	Europe & Central Asia	High income: OECD	FR	Original chained constant price data are rescaled.	2005	Value added at basic prices (VAB)		Euro area	Country uses the 1993 System of National Accounts methodology.		Rolling	"IMF Balance of Payments Manual, 6th edition."		Special trade system	Consolidated central government	Special Data Dissemination Standard (SDDS)	2006. Rolling census based on continuous sample survey.		"Expenditure survey/budget survey (ES/BS), 1994/95"	Yes	2010	2009	2012	2007


4.The maximum death rate in the world, which has been further used to find the country. 

#standardSQL
Select MAX(crude_death_rate)
from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`

f0_
65.43

#standardSQL
Select * from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
where crude_death_rate = 65.43

country_code	country_name	year	crude_birth_rate	crude_death_rate	net_migration	rate_natural_increase	growth_rate
CB	Cambodia	1975	32.78	65.43	-6.21	-3.265	-3.885


5.The lowest death rate in the world and finding out the country.
#standardSQL
Select MIN(crude_death_rate)
from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`

f0_
1.17

#standardSQL
Select * from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
where crude_death_rate = 1.17

country_code	country_name	year	crude_birth_rate	crude_death_rate	net_migration	rate_natural_increase	growth_rate
AE	United Arab Emirates	2009	9.26	1.17	7.74	0.809	1.583


6. The lowest birth rate in the world
#standardSQL
Select MIN(crude_birth_rate)
from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
f0_
3.62

#standardSQL
Select * from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
where crude_birth_rate = 3.62
country_code	country_name	year	crude_birth_rate	crude_death_rate	net_migration	rate_natural_increase	growth_rate
MN	Monaco	2050	3.62	27.57	13.42	-2.395	-1.053

7. The largest death rate in the world 
#standardSQL
Select MAX(crude_birth_rate)
from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`

f0_
58.74

#standardSQL
Select * from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
where crude_birth_rate = 58.74

country_code	country_name	year	crude_birth_rate	crude_death_rate	net_migration	rate_natural_increase	growth_rate
CB	Cambodia	1979	58.74	31.16	-5.65	2.758	2.193



8. To find the countries with growth rates between 5% to 10% in the world, limites to the first 8 countries alphabetically. 
#standardSQL
Select country_name, growth_rate from `bigquery-public-data.census_bureau_international.birth_death_growth_rates`
Where growth_rate between 5 AND 10
Limit 8

country_name	growth_rate
Chad	5.207
Iran	5.058
Iraq	5.2
Togo	5.905
Aruba	5.364
Aruba	8.09
Benin	6.164
Libya	8.673


9. Life expectancy of Germany, Frace, India, Cuba and Nicaragua compared from the early 1900s to mid 2000s
Limited to 10 results.

#standardSQL
Select * 
from `bigquery-public-data.census_bureau_international.mortality_life_expectancy` 
where country_name in ("Germany","France","India","cuba", "Nicaragua") 
ORDER BY country_name
Limit 11

country_code	country_name	year	infant_mortality	infant_mortality_male	infant_mortality_female	life_expectancy	life_expectancy_male	life_expectancy_female	mortality_rate_under5	mortality_rate_under5_male	mortality_rate_under5_female	mortality_rate_1to4	mortality_rate_1to4_male	mortality_rate_1to4_female
FR	France	1992	7.08	8.14	5.97	77.17	73.18	81.38	8.53	9.81	7.18	1.46	1.68	1.22
FR	France	1994	6.29	7.12	5.42	77.66	73.7	81.82	7.54	8.51	6.52	1.26	1.4	1.11
FR	France	1995	5.34	5.87	4.79	77.74	73.84	81.82	7.25	8.24	6.22	1.92	2.38	1.44
FR	France	1996	5.2	5.82	4.55	77.96	74.14	81.99	6.39	7.18	5.57	1.2	1.37	1.02
FR	France	1998	5.06	5.64	4.46	78.45	74.74	82.35	6.22	6.91	5.5	1.16	1.28	1.04
FR	France	1999	5.03	5.6	4.43	78.49	74.78	82.39	6.18	6.87	5.45	1.15	1.28	1.02
FR	France	2000	4.91	5.47	4.33	78.75	75.09	82.6	6.01	6.68	5.32	1.11	1.22	0.99
FR	France	1997	5.12	5.7	4.51	78.32	74.59	82.25	6.3	6.97	5.6	1.19	1.28	1.09
FR	France	1993	6.69	7.68	5.65	77.23	73.29	81.38	8.11	9.29	6.88	1.43	1.62	1.24
FR	France	1991	7.54	8.6	6.43	76.89	72.89	81.09	9.19	10.38	7.94	1.66	1.8	1.52
FR	France	1990	7.75	8.81	6.63	76.68	72.71	80.87	9.38	10.7	7.99	1.65	1.91	1.37


10. Death rates of the world compared against infant mortality.  
#standardSQL
Select main.infant_mortality, next.crude_death_rate
from `bigquery-public-data.census_bureau_international.mortality_life_expectancy` as Main
left join `bigquery-public-data.census_bureau_international.birth_death_growth_rates` as Next 
ON (Main.infant_mortality = Next.crude_death_rate)
Limit 5

infant_mortality	crude_death_rate
23.3	23.3
23.04	
22.79	22.79
22.55	
22.31	



11. San Francisco Bikeshare station info compared against station status. 
#standardSQL
Select main.short_name, next.station_id, 
from `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_info` as Main
right join  `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_status` as Next 
ON
(Main.station_id = Next.station_id)
Limit 5

short_name	station_id
OK-M7	163
OK-I8	196
SF-E22	479
SF-C22	496
SF-X19	497

12. Both birth rates of the world joined with infant mortality rates of the world. 

#standardSQL
Select main.infant_mortality, next.crude_birth_rate
from `bigquery-public-data.census_bureau_international.mortality_life_expectancy` as Main
FULL JOIN `bigquery-public-data.census_bureau_international.birth_death_growth_rates` as Next 
ON (Main.infant_mortality = Next.crude_birth_rate)
Limit 5

infant_mortality	crude_birth_rate
9.57	9.57
9.57	9.57
9.57	9.57
9.57	9.57
9.57	9.57




















