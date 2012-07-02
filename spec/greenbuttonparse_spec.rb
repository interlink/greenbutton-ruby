require 'greenbutton'

valid_xml = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
<IntervalBlock xmlns="http://naesb.org/espi">
    <interval>
        <duration>86400</duration>
        <start>1330578000</start>
        <!-- start date: 3/1/2012 5:00:00 AM -->
    </interval>
<IntervalReading>
    <cost>100000</cost>
    <timePeriod>
        <duration>86400</duration>
        <start>1330578000</start>
         <!-- 3/1/2012 5:00:00 AM  -->
    </timePeriod>
    <value>30000</value>
</IntervalReading>
</IntervalBlock>
<IntervalBlock xmlns="http://naesb.org/espi">
    <interval>
        <duration>86400</duration>
        <start>1330664400</start>
        <!-- start date: 3/2/2012 5:00:00 AM -->
    </interval>
<IntervalReading>
    <cost>200000</cost>
    <timePeriod>
        <duration>86400</duration>
        <start>1330664400</start>
         <!-- 3/2/2012 5:00:00 AM  -->
    </timePeriod>
    <value>40000</value>
</IntervalReading>
</IntervalBlock>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <phase> 769 </phase>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

invalid_xml_missing_uom = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <phase> 769 </phase>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <timeAttribute> 0 </timeAttribute>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

invalid_xml_missing_multiplier = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <phase> 769 </phase>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

valid_xml_with_no_readings = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <phase> 769 </phase>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

invalid_xml_with_readings_time_info_missing = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
<IntervalBlock xmlns="http://naesb.org/espi">
    <interval>
        <duration>86400</duration>
        <start>1330578000</start>
        <!-- start date: 3/1/2012 5:00:00 AM -->
    </interval>
<IntervalReading>
    <cost>577096</cost>
    <timePeriod>
    </timePeriod>
    <value>61728</value>
</IntervalReading>
</IntervalBlock>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <phase> 769 </phase>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'
invalid_xml_with_usage_missing_in_reading = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
<IntervalBlock xmlns="http://naesb.org/espi">
    <interval>
        <duration>86400</duration>
        <start>1330578000</start>
        <!-- start date: 3/1/2012 5:00:00 AM -->
    </interval>
<IntervalReading>
    <cost>577096</cost>
    <timePeriod>
        <duration>86400</duration>
        <start>1330578000</start>
         <!-- 3/1/2012 5:00:00 AM  -->
    </timePeriod>
</IntervalReading>
</IntervalBlock>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <phase> 769 </phase>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

invalid_xml_with_cost_missing_in_reading = '<?xml version="1.0" encoding="UTF-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <id>urn:uuid:BEEFF372-CCD3-47EB-86DB-A424917093F2</id>
 <title>ThirdPartyX Batch Feed</title>
 <updated>1899-12-30T00:00:00Z</updated>
 <link rel="self" href="/ThirdParty/83e269c1/Batch"/>
    <entry>
    <id>urn:uuid:7412BB69-7CAF-4E73-B90D-F6DD8F587820</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="up" href="/User/9b6c7065"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading"/>
        <title>my house</title>
        <content>
            <UsagePoint xmlns="http://naesb.org/espi">
                <ServiceCategory>
                    <kind> 0 </kind>
                    </ServiceCategory>
            </UsagePoint>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:AFCF710F-282B-43F6-9651-F11DDA891617</id>
            <link rel="self" href="/User/9b6c7065/UsagePoint/01/LocalTimeParameters"/>
            <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
            <title>DST For North America</title>
            <content>
            <LocalTimeParameters xmlns="http://naesb.org/espi">
                        <dstEndRule>B40E2000</dstEndRule>
                        <dstOffset>3600</dstOffset>
                        <dstStartRule>360E2000</dstStartRule>
                        <tzOffset>-18000</tzOffset>
            </LocalTimeParameters>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:E09C4E89-6E3D-4A00-BFE9-FC3FA46DDBCA</id>
        <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <link rel="up" href="/User/9b6c7065/UsagePoint/01"/>
        <link rel="related" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock"/>
        <link rel="related" href="/ReadingType/07"/>
        <title>Daily Electricity Consumption</title>
        <content>
            <MeterReading xmlns="http://naesb.org/espi"/>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
<entry>
    <id>urn:uuid:F516D3D9-672E-4EDF-8476-9332EEEC3D4E</id>
    <link rel="self" href="/User/9b6c7065/UsagePoint/01/MeterReading/01/IntervalBlock/0173"/>
    <link rel="up" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
    <title/>
    <content>
<IntervalBlock xmlns="http://naesb.org/espi">
    <interval>
        <duration>86400</duration>
        <start>1330578000</start>
        <!-- start date: 3/1/2012 5:00:00 AM -->
    </interval>
<IntervalReading>
    <timePeriod>
        <duration>86400</duration>
        <start>1330578000</start>
         <!-- 3/1/2012 5:00:00 AM  -->
    </timePeriod>
    <value>61728</value>
</IntervalReading>
</IntervalBlock>
    </content>
    <published>1899-12-30T00:00:00Z</published>
    <updated>1899-12-30T00:00:00Z</updated>
</entry>
    <entry>
    <id>urn:uuid:49B0893D-7D64-47A9-B49C-0DB4763A88D9</id>
        <link rel="self" href="/ReadingType/07"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01/MeterReading/01"/>
        <title>Energy Delivered (kWh)</title>
        <content>
            <ReadingType xmlns="http://naesb.org/espi">
                <accumulationBehaviour> 4 </accumulationBehaviour>
                <commodity> 1 </commodity>
                <dataQualifier> 12 </dataQualifier>
                <flowDirection> 1 </flowDirection>
                <intervalLength> 86400 </intervalLength>
                <kind> 12 </kind>
                <phase> 769 </phase>
                <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                <timeAttribute> 0 </timeAttribute>
                <uom>72</uom>
            </ReadingType>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
    <entry>
    <id>urn:uuid:B3CFAA72-0917-457A-B7D2-AF27F8131B4A</id>
        <link rel="self" href="/User/9b6c7065/ElectricPowerUsageSummary"/>
        <link rel="up" type="" href="/User/9b6c7065/UsagePoint/01"/>
        <title>Usage Summary</title>
        <content>
            <ElectricPowerUsageSummary xmlns="http://naesb.org/espi">
                <billingPeriod>
                    <duration>2588400</duration>
                    <start>1330578000</start>
                </billingPeriod>
                <billLastPeriod>20891820</billLastPeriod>
                <billToDate>8066305</billToDate>
                <costAdditionalLastPeriod>4525000</costAdditionalLastPeriod>
                <currency>840</currency>
                <currentBillingPeriodOverAllConsumption>
                    <powerOfTenMultiplier> 0 </powerOfTenMultiplier>
                    <timeStamp>1334462400</timeStamp>
                    <uom>72</uom>
                    <value>994045</value>
                </currentBillingPeriodOverAllConsumption>
                <qualityOfReading>14</qualityOfReading>
                <statusTimeStamp>1334462400</statusTimeStamp>
            </ElectricPowerUsageSummary>
        </content>
        <published>1899-12-30T00:00:00Z</published>
        <updated>1899-12-30T00:00:00Z</updated>
    </entry>
</feed>
'

describe GreenButton::GreenButtonData do
  describe "parser" do
    it "should load valid xml" do
      lambda do
        GreenButton::GreenButtonData.new(valid_xml)
      end.should_not raise_error
    end

    it "should report error if uom information is missing" do
      lambda do
        GreenButton::GreenButtonData.new(invalid_xml_missing_uom)
      end.should raise_error GreenButton::InvalidFileFormat
    end

    it "should report error if multiplier information is missing" do
      lambda do
        GreenButton::GreenButtonData.new(invalid_xml_missing_multiplier)
      end.should raise_error GreenButton::InvalidFileFormat
    end

    it "should not report error if no readings are available" do
      lambda do
        GreenButton::GreenButtonData.new(valid_xml_with_no_readings)
      end.should_not raise_error
    end

    it "should report error if readings does not have time info" do
      lambda do
        GreenButton::GreenButtonData.new(invalid_xml_with_readings_time_info_missing)
      end.should raise_error GreenButton::InvalidFileFormat
    end

    it "should report error if usage info is missing" do
      lambda do
        GreenButton::GreenButtonData.new(invalid_xml_with_usage_missing_in_reading)
      end.should raise_error GreenButton::InvalidFileFormat
    end

    it "should report error if cost info is missing" do
      lambda do
        GreenButton::GreenButtonData.new(invalid_xml_with_cost_missing_in_reading)
      end.should raise_error GreenButton::InvalidFileFormat
    end

    describe "with valid readings xml" do
      before do
        @data = GreenButton::GreenButtonData.new(valid_xml) 
        @out = []
        @data.each { |i| @out << i }
      end

      it "should have the correct number of entries" do
        @out.length.should == 2
      end

      it "should have correctly parsed data" do
        @out[0].cost.should == 1.0
        @out[1].cost.should == 2.0

        @out[0].usage.should == 30.0
        @out[1].usage.should == 40.0
      end
    end

    describe "with valid readings xml and a block given" do
      before do
        @data = GreenButton::GreenButtonData.new(valid_xml) { |d| @data_read = d }
      end

      it "the block must receive the correct data" do
        @data.zip(@data_read).map { |a, b| a == b }.all?.should == true
      end
    end
  end
end
