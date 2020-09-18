<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1600138154864" ID="ID_7501186" MODIFIED="1600315905997" TEXT="Behaviour is the Unit Under Test">
<icon BUILTIN="idea"/>
<node CREATED="1600138162025" ID="ID_989088845" LINK="https://www.youtube.com/watch?v=EZ05e7EMOLM&amp;list=PLapaDXLvtr9IOo9UR4yG-VaKhyrXeD-mt&amp;index=16" MODIFIED="1600315842368" POSITION="right" TEXT="Idea came from this video">
<node CREATED="1600314697685" ID="ID_1209804515" MODIFIED="1600314711576" TEXT="The essence is that we should test behaviour"/>
<node CREATED="1600314719285" ID="ID_1185055526" MODIFIED="1600314792669" TEXT="What is behaviour?">
<node CREATED="1600314726308" ID="ID_1802399248" MODIFIED="1600314746977" TEXT="For ease of understanding, it should be the purpose"/>
<node CREATED="1600314754689" ID="ID_708428177" MODIFIED="1600314763062" TEXT="Why behaviour?"/>
<node CREATED="1600314763932" ID="ID_883537683" MODIFIED="1600314780849" TEXT="Because behaviour captures the important aspect of the function"/>
<node CREATED="1600314784552" ID="ID_1899736119" MODIFIED="1600314822899" TEXT="It answers the why of the function&apos;s existence"/>
<node CREATED="1600314809618" ID="ID_900359083" MODIFIED="1600314846200" TEXT="Not all functions map to business or high-level functional purpose">
<node CREATED="1600314847693" ID="ID_1205895828" MODIFIED="1600314868504" TEXT="But when they do they often don&apos;t change"/>
<node CREATED="1600314869433" ID="ID_796816363" MODIFIED="1600314881570" TEXT="At least they don&apos;t change as often as implementation details">
<node CREATED="1600315195828" ID="ID_1555985395" MODIFIED="1600315207451" TEXT="Possible kinds:"/>
<node CREATED="1600315208040" ID="ID_1517388590" MODIFIED="1600315314046" TEXT="Caching layer">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1600315215612" ID="ID_1413472155" MODIFIED="1600315315663" TEXT="Different collaborating object implementation">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1600315245894" ID="ID_154881405" MODIFIED="1600315318133" TEXT="Logic change (addition, removal, move etc.)">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1600315296350" ID="ID_381355116" MODIFIED="1600315308513" TEXT="Many implementation details do not change the expected behaviour"/>
<node CREATED="1600315323250" ID="ID_757649220" MODIFIED="1600315331492" TEXT="What about addition of implementation?">
<node CREATED="1600315331492" ID="ID_742056517" MODIFIED="1600315354258" TEXT="I would say if it&apos;s a behavioural addition, then ADD test"/>
</node>
</node>
</node>
</node>
<node CREATED="1600314884894" ID="ID_1836894659" MODIFIED="1600314893186" TEXT="Compare to implementation detail">
<node CREATED="1600314894937" ID="ID_738764297" MODIFIED="1600314927328" TEXT="Implementation details cover the how"/>
<node CREATED="1600314931526" ID="ID_680631972" MODIFIED="1600314941169" TEXT="Sometimes the how and why can be thinly divided">
<node CREATED="1600314941666" ID="ID_1022092701" MODIFIED="1600314946621" TEXT="Example:"/>
<node CREATED="1600314947299" ID="ID_1107005926" MODIFIED="1600314969384" TEXT="Getting geomap information may be the why"/>
<node CREATED="1600314973205" ID="ID_53325543" MODIFIED="1600314988864" TEXT="It does so by calling some API"/>
<node CREATED="1600314989860" ID="ID_1239195825" MODIFIED="1600314999055" TEXT="Turns out it is the only applicable API currently"/>
<node CREATED="1600314999549" ID="ID_191595087" MODIFIED="1600315007519" TEXT="So it feels like the how and why are the same"/>
<node CREATED="1600315010853" ID="ID_1963515944" MODIFIED="1600315081974" TEXT="But we&apos;re told to program against interface">
<icon BUILTIN="yes"/>
<node CREATED="1600315088595" ID="ID_1109791943" MODIFIED="1600315102061" TEXT="We should expect there to be more possible APIs"/>
<node CREATED="1600315108461" ID="ID_567047989" MODIFIED="1600315125463" TEXT="Exposed through a common interface">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1600315114311" ID="ID_1732565414" MODIFIED="1600315180647" TEXT="So one possible clear behaviour of the function is to call the given geodata interface"/>
</node>
</node>
</node>
<node CREATED="1600315396103" ID="ID_1546999118" MODIFIED="1600315417822" TEXT="So then this also implies that not all functions/objects need to be tested">
<node CREATED="1600315417823" ID="ID_1205602168" MODIFIED="1600315428274" TEXT="A bit of a hotter take"/>
<node CREATED="1600315428927" ID="ID_784286311" MODIFIED="1600315483197" TEXT="If collaborators change how do you know it would be okay?">
<icon BUILTIN="help"/>
<node CREATED="1600315485223" ID="ID_1148785616" MODIFIED="1600315496106" TEXT="Probably that&apos;s why we have increasingly higher tests"/>
<node CREATED="1600315497153" ID="ID_1632216162" MODIFIED="1600315517421" TEXT="But ideally unit tests serve as the foundation, because its faster and simpler"/>
<node CREATED="1600315694554" ID="ID_1073885788" MODIFIED="1600315736061" TEXT="A combination of well-defined contracts will also help">
<node CREATED="1600315736579" ID="ID_744642292" MODIFIED="1600315746209" TEXT="Pre-conditions, post-conditions and invariants"/>
</node>
</node>
<node CREATED="1600315767814" ID="ID_175290000" MODIFIED="1600315813697" TEXT="But certainly I think we can agree that logging doesn&apos;t need to be tested">
<node CREATED="1600315790944" ID="ID_312818476" MODIFIED="1600315809114" TEXT="Unless the results of the log is tied to business logic somewhere else"/>
</node>
</node>
<node CREATED="1600315525870" ID="ID_840994559" MODIFIED="1600315863116" TEXT="Excessive use of mocking may be a code smell for improper testing">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1600315599880" ID="ID_1165510344" MODIFIED="1600315609945" TEXT="You may care too much about the implementation"/>
<node CREATED="1600315550735" ID="ID_1234992623" MODIFIED="1600315568503" TEXT="Or implementation is too tightly coupled between each other"/>
<node CREATED="1600315569021" ID="ID_1001420625" MODIFIED="1600315574655" TEXT="Lack of interfaces"/>
</node>
<node CREATED="1600315618183" ID="ID_1703728949" MODIFIED="1600315627056" TEXT="How do you detect this problem?">
<node CREATED="1600315628753" ID="ID_1997244480" MODIFIED="1600315893130" TEXT="Based on the video, when tests seem to slow you down more">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1600315645914" ID="ID_208290625" MODIFIED="1600315895379" TEXT="When tests stop being an assurance of business behaviour">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1600315657997" ID="ID_452988438" MODIFIED="1600315897658" TEXT="When tests is used to dictate a programmer&apos;s choice">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1600315869471" ID="ID_758836176" MODIFIED="1600315898787" TEXT="Developers need to understand the value of their programs">
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
<node CREATED="1600315910178" ID="ID_922318385" MODIFIED="1600315922198" POSITION="left" TEXT="My own experience">
<node CREATED="1600315923614" ID="ID_1367039840" MODIFIED="1600315945780" TEXT="Feeling that some of my tests are too flaky"/>
<node CREATED="1600315948559" ID="ID_1174344584" MODIFIED="1600315960181" TEXT="why?"/>
<node CREATED="1600315962468" ID="ID_1021309330" MODIFIED="1600315974134" TEXT="I did not define the behaviour boundary properly"/>
</node>
</node>
</map>
