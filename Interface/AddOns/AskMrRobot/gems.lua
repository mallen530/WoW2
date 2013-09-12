local gemToColor = {
[22459]="Prismatic",
[22460]="Prismatic",
[23094]="Red",
[23095]="Red",
[23096]="Red",
[23097]="Red",
[23098]="Orange",
[23099]="Orange",
[23100]="Purple",
[23101]="Orange",
[23103]="Green",
[23104]="Green",
[23105]="Green",
[23106]="Purple",
[23108]="Purple",
[23109]="Purple",
[23110]="Purple",
[23111]="Purple",
[23113]="Red",
[23114]="Yellow",
[23115]="Yellow",
[23116]="Blue",
[23118]="Blue",
[23119]="Blue",
[23120]="Blue",
[23121]="Blue",
[23233]="Red",
[23234]="Blue",
[23235]="Yellow",
[24027]="Red",
[24028]="Red",
[24029]="Red",
[24030]="Red",
[24031]="Red",
[24032]="Yellow",
[24033]="Blue",
[24035]="Blue",
[24036]="Red",
[24037]="Blue",
[24039]="Blue",
[24047]="Red",
[24048]="Yellow",
[24050]="Yellow",
[24051]="Blue",
[24052]="Yellow",
[24053]="Yellow",
[24054]="Purple",
[24055]="Purple",
[24056]="Purple",
[24057]="Purple",
[24058]="Orange",
[24059]="Orange",
[24060]="Orange",
[24061]="Purple",
[24062]="Green",
[24065]="Purple",
[24066]="Green",
[24067]="Green",
[25890]="Meta",
[25893]="Meta",
[25894]="Meta",
[25895]="Meta",
[25896]="Meta",
[25897]="Meta",
[25898]="Meta",
[25899]="Meta",
[25901]="Meta",
[27679]="Yellow",
[27777]="Red",
[27785]="Green",
[27786]="Green",
[27809]="Green",
[27812]="Red",
[27820]="Green",
[27863]="Blue",
[27864]="Blue",
[28118]="Red",
[28119]="Yellow",
[28120]="Yellow",
[28123]="Orange",
[28290]="Yellow",
[28360]="Red",
[28361]="Red",
[28362]="Red",
[28363]="Orange",
[28458]="Red",
[28459]="Red",
[28460]="Red",
[28461]="Red",
[28462]="Red",
[28463]="Blue",
[28464]="Blue",
[28465]="Blue",
[28466]="Red",
[28467]="Yellow",
[28468]="Blue",
[28469]="Yellow",
[28470]="Yellow",
[28556]="Meta",
[28557]="Meta",
[28595]="Red",
[30546]="Purple",
[30547]="Orange",
[30548]="Green",
[30549]="Purple",
[30550]="Green",
[30551]="Orange",
[30552]="Purple",
[30553]="Purple",
[30554]="Orange",
[30555]="Purple",
[30556]="Purple",
[30558]="Orange",
[30559]="Purple",
[30560]="Green",
[30563]="Green",
[30564]="Purple",
[30565]="Green",
[30566]="Purple",
[30571]="Red",
[30572]="Purple",
[30573]="Purple",
[30574]="Purple",
[30575]="Green",
[30581]="Orange",
[30582]="Orange",
[30583]="Purple",
[30584]="Orange",
[30585]="Orange",
[30586]="Purple",
[30587]="Orange",
[30588]="Orange",
[30589]="Purple",
[30590]="Green",
[30591]="Orange",
[30592]="Green",
[30593]="Orange",
[30594]="Green",
[30598]="Red",
[30600]="Purple",
[30601]="Green",
[30602]="Green",
[30603]="Purple",
[30604]="Orange",
[30605]="Green",
[30606]="Green",
[30607]="Orange",
[30608]="Green",
[31116]="Purple",
[31117]="Purple",
[31118]="Purple",
[31860]="Blue",
[31861]="Blue",
[31862]="Purple",
[31863]="Purple",
[31864]="Purple",
[31865]="Purple",
[31866]="Purple",
[31867]="Purple",
[31868]="Orange",
[31869]="Orange",
[32193]="Red",
[32194]="Red",
[32195]="Red",
[32196]="Red",
[32197]="Red",
[32198]="Yellow",
[32199]="Red",
[32200]="Blue",
[32201]="Blue",
[32202]="Blue",
[32203]="Blue",
[32204]="Red",
[32205]="Yellow",
[32206]="Blue",
[32207]="Yellow",
[32208]="Yellow",
[32209]="Yellow",
[32210]="Blue",
[32211]="Purple",
[32212]="Purple",
[32213]="Purple",
[32214]="Purple",
[32215]="Purple",
[32216]="Purple",
[32217]="Orange",
[32218]="Orange",
[32219]="Orange",
[32220]="Purple",
[32221]="Purple",
[32222]="Orange",
[32223]="Green",
[32224]="Green",
[32225]="Purple",
[32226]="Green",
[32409]="Meta",
[32410]="Meta",
[32634]="Purple",
[32635]="Purple",
[32636]="Purple",
[32637]="Orange",
[32638]="Orange",
[32639]="Green",
[32640]="Meta",
[32641]="Meta",
[32735]="Red",
[32833]="Purple",
[32836]="Purple",
[33060]="Yellow",
[33131]="Red",
[33132]="Red",
[33133]="Red",
[33134]="Red",
[33135]="Blue",
[33137]="Blue",
[33138]="Yellow",
[33139]="Red",
[33140]="Yellow",
[33141]="Blue",
[33142]="Yellow",
[33143]="Yellow",
[33144]="Yellow",
[33782]="Green",
[34220]="Meta",
[34256]="Blue",
[34831]="Blue",
[34967]="Yellow",
[35315]="Yellow",
[35316]="Orange",
[35318]="Green",
[35487]="Red",
[35488]="Red",
[35489]="Red",
[35501]="Meta",
[35503]="Meta",
[35707]="Green",
[35758]="Green",
[35759]="Green",
[35760]="Orange",
[35761]="Yellow",
[36766]="Red",
[36767]="Blue",
[37430]="Blue",
[37503]="Purple",
[38292]="Red",
[38545]="Red",
[38546]="Yellow",
[38547]="Orange",
[38548]="Orange",
[38549]="Red",
[38550]="Yellow",
[39900]="Red",
[39905]="Red",
[39906]="Red",
[39907]="Yellow",
[39908]="Red",
[39909]="Yellow",
[39910]="Red",
[39911]="Red",
[39912]="Red",
[39914]="Yellow",
[39915]="Blue",
[39916]="Yellow",
[39917]="Yellow",
[39918]="Yellow",
[39919]="Blue",
[39920]="Blue",
[39927]="Blue",
[39932]="Blue",
[39933]="Green",
[39934]="Purple",
[39935]="Purple",
[39936]="Purple",
[39937]="Purple",
[39938]="Green",
[39939]="Purple",
[39940]="Purple",
[39941]="Purple",
[39942]="Purple",
[39943]="Purple",
[39944]="Purple",
[39945]="Purple",
[39946]="Orange",
[39947]="Orange",
[39948]="Purple",
[39949]="Orange",
[39950]="Orange",
[39951]="Orange",
[39952]="Orange",
[39953]="Purple",
[39954]="Orange",
[39955]="Orange",
[39956]="Orange",
[39957]="Purple",
[39958]="Orange",
[39959]="Orange",
[39960]="Orange",
[39961]="Purple",
[39962]="Orange",
[39963]="Orange",
[39964]="Orange",
[39965]="Orange",
[39966]="Purple",
[39967]="Orange",
[39968]="Purple",
[39974]="Green",
[39975]="Green",
[39976]="Green",
[39977]="Green",
[39978]="Green",
[39979]="Purple",
[39980]="Green",
[39981]="Green",
[39982]="Green",
[39983]="Green",
[39984]="Purple",
[39985]="Green",
[39986]="Green",
[39988]="Green",
[39989]="Green",
[39990]="Green",
[39991]="Green",
[39992]="Green",
[39996]="Red",
[39997]="Red",
[39998]="Red",
[39999]="Red",
[40000]="Yellow",
[40001]="Red",
[40002]="Yellow",
[40003]="Red",
[40008]="Blue",
[40009]="Blue",
[40010]="Blue",
[40011]="Blue",
[40012]="Red",
[40013]="Yellow",
[40014]="Blue",
[40015]="Yellow",
[40016]="Yellow",
[40017]="Yellow",
[40022]="Purple",
[40023]="Purple",
[40024]="Purple",
[40025]="Purple",
[40026]="Purple",
[40027]="Purple",
[40028]="Purple",
[40029]="Purple",
[40030]="Purple",
[40031]="Green",
[40032]="Purple",
[40033]="Green",
[40034]="Purple",
[40037]="Orange",
[40038]="Purple",
[40039]="Orange",
[40040]="Orange",
[40041]="Orange",
[40043]="Orange",
[40044]="Purple",
[40045]="Orange",
[40046]="Orange",
[40047]="Orange",
[40048]="Orange",
[40049]="Purple",
[40050]="Orange",
[40051]="Orange",
[40052]="Orange",
[40053]="Purple",
[40054]="Orange",
[40055]="Orange",
[40056]="Orange",
[40057]="Orange",
[40058]="Purple",
[40059]="Orange",
[40085]="Purple",
[40086]="Green",
[40088]="Green",
[40089]="Green",
[40090]="Green",
[40091]="Green",
[40092]="Purple",
[40094]="Purple",
[40095]="Green",
[40096]="Green",
[40098]="Green",
[40099]="Green",
[40100]="Green",
[40101]="Green",
[40102]="Green",
[40103]="Green",
[40104]="Green",
[40105]="Green",
[40106]="Green",
[40111]="Red",
[40112]="Red",
[40113]="Red",
[40114]="Red",
[40115]="Yellow",
[40116]="Red",
[40117]="Yellow",
[40118]="Red",
[40119]="Blue",
[40120]="Blue",
[40121]="Blue",
[40122]="Blue",
[40123]="Red",
[40124]="Yellow",
[40125]="Blue",
[40126]="Yellow",
[40127]="Yellow",
[40128]="Yellow",
[40129]="Purple",
[40130]="Purple",
[40131]="Purple",
[40132]="Purple",
[40133]="Purple",
[40134]="Purple",
[40135]="Purple",
[40136]="Purple",
[40137]="Purple",
[40138]="Green",
[40139]="Purple",
[40140]="Green",
[40141]="Purple",
[40142]="Orange",
[40143]="Purple",
[40144]="Orange",
[40145]="Orange",
[40146]="Orange",
[40147]="Orange",
[40148]="Purple",
[40149]="Orange",
[40150]="Orange",
[40151]="Purple",
[40152]="Orange",
[40153]="Purple",
[40154]="Orange",
[40155]="Orange",
[40156]="Orange",
[40157]="Purple",
[40158]="Orange",
[40159]="Orange",
[40160]="Orange",
[40161]="Orange",
[40162]="Purple",
[40163]="Orange",
[40164]="Purple",
[40165]="Green",
[40166]="Green",
[40167]="Green",
[40168]="Green",
[40169]="Green",
[40170]="Purple",
[40171]="Green",
[40172]="Green",
[40173]="Green",
[40174]="Green",
[40175]="Purple",
[40176]="Green",
[40177]="Green",
[40178]="Green",
[40179]="Green",
[40180]="Green",
[40181]="Green",
[40182]="Green",
[41285]="Meta",
[41307]="Meta",
[41333]="Meta",
[41335]="Meta",
[41339]="Meta",
[41375]="Meta",
[41376]="Meta",
[41377]="Meta",
[41378]="Meta",
[41379]="Meta",
[41380]="Meta",
[41381]="Meta",
[41382]="Meta",
[41385]="Meta",
[41389]="Meta",
[41395]="Meta",
[41396]="Meta",
[41397]="Meta",
[41398]="Meta",
[41400]="Meta",
[41401]="Meta",
[41429]="Orange",
[41432]="Red",
[41433]="Red",
[41434]="Red",
[41435]="Red",
[41436]="Yellow",
[41437]="Red",
[41438]="Red",
[41439]="Yellow",
[41440]="Blue",
[41441]="Blue",
[41442]="Blue",
[41443]="Blue",
[41444]="Red",
[41445]="Yellow",
[41446]="Yellow",
[41447]="Blue",
[41448]="Yellow",
[41449]="Yellow",
[41450]="Purple",
[41451]="Purple",
[41452]="Purple",
[41453]="Purple",
[41454]="Purple",
[41455]="Purple",
[41456]="Green",
[41457]="Purple",
[41458]="Green",
[41459]="Purple",
[41460]="Purple",
[41461]="Purple",
[41462]="Purple",
[41463]="Purple",
[41464]="Green",
[41465]="Green",
[41466]="Green",
[41467]="Green",
[41468]="Green",
[41469]="Green",
[41470]="Green",
[41471]="Green",
[41472]="Green",
[41473]="Purple",
[41474]="Green",
[41475]="Green",
[41476]="Green",
[41477]="Green",
[41478]="Green",
[41479]="Purple",
[41480]="Green",
[41481]="Green",
[41482]="Purple",
[41483]="Orange",
[41484]="Orange",
[41485]="Orange",
[41486]="Orange",
[41487]="Orange",
[41488]="Purple",
[41489]="Orange",
[41490]="Orange",
[41491]="Purple",
[41492]="Orange",
[41493]="Orange",
[41494]="Purple",
[41495]="Orange",
[41496]="Purple",
[41497]="Orange",
[41498]="Orange",
[41499]="Orange",
[41500]="Orange",
[41501]="Orange",
[41502]="Purple",
[42142]="Red",
[42143]="Red",
[42144]="Red",
[42145]="Blue",
[42146]="Blue",
[42148]="Red",
[42149]="Yellow",
[42150]="Yellow",
[42151]="Yellow",
[42152]="Red",
[42153]="Yellow",
[42154]="Red",
[42155]="Blue",
[42156]="Blue",
[42157]="Yellow",
[42158]="Yellow",
[42701]="Prismatic",
[42702]="Prismatic",
[44066]="Yellow",
[44076]="Meta",
[44078]="Meta",
[44081]="Meta",
[44082]="Meta",
[44084]="Meta",
[44087]="Meta",
[44088]="Meta",
[44089]="Meta",
[45862]="Red",
[45879]="Red",
[45880]="Blue",
[45881]="Blue",
[45882]="Red",
[45883]="Red",
[45987]="Blue",
[49110]="Prismatic",
[52070]="Purple",
[52081]="Red",
[52082]="Red",
[52083]="Red",
[52084]="Red",
[52085]="Red",
[52086]="Blue",
[52087]="Blue",
[52088]="Blue",
[52089]="Blue",
[52090]="Yellow",
[52091]="Yellow",
[52092]="Yellow",
[52093]="Yellow",
[52094]="Yellow",
[52095]="Purple",
[52096]="Purple",
[52097]="Purple",
[52098]="Purple",
[52099]="Purple",
[52100]="Purple",
[52101]="Purple",
[52102]="Purple",
[52103]="Purple",
[52104]="Purple",
[52105]="Purple",
[52106]="Orange",
[52107]="Orange",
[52108]="Orange",
[52109]="Orange",
[52110]="Orange",
[52111]="Orange",
[52112]="Orange",
[52113]="Orange",
[52114]="Orange",
[52115]="Orange",
[52116]="Orange",
[52117]="Orange",
[52118]="Orange",
[52119]="Green",
[52120]="Green",
[52121]="Green",
[52122]="Green",
[52123]="Green",
[52124]="Green",
[52125]="Green",
[52126]="Green",
[52127]="Green",
[52128]="Green",
[52129]="Green",
[52130]="Green",
[52131]="Green",
[52132]="Green",
[52133]="Green",
[52134]="Green",
[52135]="Green",
[52136]="Green",
[52137]="Green",
[52138]="Green",
[52139]="Orange",
[52140]="Orange",
[52141]="Orange",
[52142]="Orange",
[52143]="Orange",
[52144]="Orange",
[52145]="Orange",
[52146]="Orange",
[52147]="Orange",
[52148]="Orange",
[52149]="Orange",
[52150]="Orange",
[52151]="Orange",
[52152]="Purple",
[52153]="Purple",
[52154]="Purple",
[52155]="Purple",
[52156]="Purple",
[52157]="Purple",
[52158]="Purple",
[52159]="Purple",
[52160]="Purple",
[52161]="Purple",
[52162]="Purple",
[52163]="Yellow",
[52164]="Yellow",
[52165]="Yellow",
[52166]="Yellow",
[52167]="Yellow",
[52168]="Blue",
[52169]="Blue",
[52170]="Blue",
[52171]="Blue",
[52172]="Red",
[52173]="Red",
[52174]="Red",
[52175]="Red",
[52176]="Red",
[52203]="Purple",
[52204]="Orange",
[52205]="Orange",
[52206]="Red",
[52207]="Red",
[52208]="Orange",
[52209]="Orange",
[52210]="Purple",
[52211]="Orange",
[52212]="Red",
[52213]="Purple",
[52214]="Orange",
[52215]="Orange",
[52216]="Red",
[52217]="Purple",
[52218]="Green",
[52219]="Yellow",
[52220]="Purple",
[52221]="Purple",
[52222]="Orange",
[52223]="Green",
[52224]="Orange",
[52225]="Green",
[52226]="Yellow",
[52227]="Green",
[52228]="Green",
[52229]="Orange",
[52230]="Red",
[52231]="Green",
[52232]="Yellow",
[52233]="Green",
[52234]="Purple",
[52235]="Blue",
[52236]="Purple",
[52237]="Green",
[52238]="Purple",
[52239]="Orange",
[52240]="Orange",
[52241]="Yellow",
[52242]="Blue",
[52243]="Purple",
[52244]="Blue",
[52245]="Green",
[52246]="Blue",
[52247]="Yellow",
[52248]="Purple",
[52249]="Orange",
[52250]="Green",
[52255]="Red",
[52257]="Red",
[52258]="Red",
[52259]="Red",
[52260]="Red",
[52261]="Blue",
[52262]="Blue",
[52263]="Blue",
[52264]="Blue",
[52265]="Yellow",
[52266]="Yellow",
[52267]="Yellow",
[52268]="Yellow",
[52269]="Yellow",
[52289]="Meta",
[52291]="Meta",
[52292]="Meta",
[52293]="Meta",
[52294]="Meta",
[52295]="Meta",
[52296]="Meta",
[52297]="Meta",
[52298]="Meta",
[52299]="Meta",
[52300]="Meta",
[52301]="Meta",
[52302]="Meta",
[54616]="Red",
[59477]="Cogwheel",
[59478]="Cogwheel",
[59479]="Cogwheel",
[59480]="Cogwheel",
[59489]="Cogwheel",
[59491]="Cogwheel",
[59493]="Cogwheel",
[59496]="Cogwheel",
[63696]="Red",
[63697]="Red",
[68356]="Orange",
[68357]="Orange",
[68358]="Orange",
[68660]="Cogwheel",
[68741]="Green",
[68778]="Meta",
[68779]="Meta",
[68780]="Meta",
[69922]="Red",
[69923]="Red",
[71817]="Blue",
[71818]="Blue",
[71819]="Blue",
[71820]="Blue",
[71822]="Green",
[71823]="Green",
[71824]="Green",
[71825]="Green",
[71826]="Green",
[71827]="Green",
[71828]="Green",
[71829]="Green",
[71830]="Green",
[71831]="Green",
[71832]="Green",
[71833]="Green",
[71834]="Green",
[71835]="Green",
[71836]="Green",
[71837]="Green",
[71838]="Green",
[71839]="Green",
[71840]="Orange",
[71841]="Orange",
[71842]="Orange",
[71843]="Orange",
[71844]="Orange",
[71845]="Orange",
[71846]="Orange",
[71847]="Orange",
[71848]="Orange",
[71849]="Orange",
[71850]="Orange",
[71851]="Orange",
[71852]="Orange",
[71853]="Orange",
[71854]="Orange",
[71855]="Orange",
[71856]="Orange",
[71857]="Orange",
[71858]="Orange",
[71859]="Orange",
[71860]="Orange",
[71861]="Orange",
[71862]="Purple",
[71863]="Purple",
[71864]="Purple",
[71865]="Purple",
[71866]="Purple",
[71867]="Purple",
[71868]="Purple",
[71869]="Purple",
[71870]="Purple",
[71871]="Purple",
[71872]="Purple",
[71873]="Purple",
[71874]="Yellow",
[71875]="Yellow",
[71876]="Yellow",
[71877]="Yellow",
[71878]="Yellow",
[71879]="Red",
[71880]="Red",
[71881]="Red",
[71882]="Red",
[71883]="Red",
[76502]="Blue",
[76504]="Blue",
[76505]="Blue",
[76506]="Blue",
[76507]="Green",
[76508]="Green",
[76509]="Green",
[76510]="Green",
[76511]="Green",
[76512]="Green",
[76513]="Green",
[76514]="Green",
[76515]="Green",
[76517]="Green",
[76518]="Green",
[76519]="Green",
[76520]="Green",
[76521]="Green",
[76522]="Green",
[76523]="Green",
[76524]="Green",
[76525]="Green",
[76526]="Orange",
[76527]="Orange",
[76528]="Orange",
[76529]="Orange",
[76530]="Orange",
[76531]="Orange",
[76532]="Orange",
[76533]="Orange",
[76534]="Orange",
[76535]="Orange",
[76536]="Orange",
[76537]="Orange",
[76538]="Orange",
[76539]="Orange",
[76540]="Orange",
[76541]="Orange",
[76542]="Orange",
[76543]="Orange",
[76544]="Orange",
[76545]="Orange",
[76546]="Orange",
[76547]="Orange",
[76548]="Purple",
[76549]="Purple",
[76550]="Purple",
[76551]="Purple",
[76552]="Purple",
[76553]="Purple",
[76554]="Purple",
[76555]="Purple",
[76556]="Purple",
[76557]="Purple",
[76558]="Purple",
[76559]="Purple",
[76560]="Red",
[76561]="Red",
[76562]="Red",
[76563]="Red",
[76564]="Red",
[76565]="Yellow",
[76566]="Yellow",
[76567]="Yellow",
[76568]="Yellow",
[76569]="Yellow",
[76570]="Blue",
[76571]="Blue",
[76572]="Blue",
[76573]="Blue",
[76574]="Green",
[76575]="Green",
[76576]="Green",
[76577]="Green",
[76578]="Green",
[76579]="Green",
[76580]="Green",
[76581]="Green",
[76582]="Green",
[76583]="Green",
[76584]="Green",
[76585]="Green",
[76586]="Green",
[76587]="Green",
[76588]="Green",
[76589]="Green",
[76590]="Green",
[76591]="Green",
[76592]="Orange",
[76593]="Orange",
[76594]="Orange",
[76595]="Orange",
[76596]="Orange",
[76597]="Orange",
[76598]="Orange",
[76599]="Orange",
[76600]="Orange",
[76601]="Orange",
[76602]="Orange",
[76603]="Orange",
[76604]="Orange",
[76605]="Orange",
[76606]="Orange",
[76607]="Orange",
[76608]="Orange",
[76609]="Orange",
[76610]="Orange",
[76611]="Orange",
[76612]="Orange",
[76613]="Orange",
[76614]="Purple",
[76615]="Purple",
[76616]="Purple",
[76617]="Purple",
[76618]="Purple",
[76619]="Purple",
[76620]="Purple",
[76621]="Purple",
[76622]="Purple",
[76623]="Purple",
[76624]="Purple",
[76625]="Purple",
[76626]="Red",
[76627]="Red",
[76628]="Red",
[76629]="Red",
[76630]="Red",
[76631]="Yellow",
[76632]="Yellow",
[76633]="Yellow",
[76634]="Yellow",
[76635]="Yellow",
[76636]="Blue",
[76637]="Blue",
[76638]="Blue",
[76639]="Blue",
[76640]="Green",
[76641]="Green",
[76642]="Green",
[76643]="Green",
[76644]="Green",
[76645]="Green",
[76646]="Green",
[76647]="Green",
[76648]="Green",
[76649]="Green",
[76650]="Green",
[76651]="Green",
[76652]="Green",
[76653]="Green",
[76654]="Green",
[76655]="Green",
[76656]="Green",
[76657]="Green",
[76658]="Orange",
[76659]="Orange",
[76660]="Orange",
[76661]="Orange",
[76662]="Orange",
[76663]="Orange",
[76664]="Orange",
[76665]="Orange",
[76666]="Orange",
[76667]="Orange",
[76668]="Orange",
[76669]="Orange",
[76670]="Orange",
[76671]="Orange",
[76672]="Orange",
[76673]="Orange",
[76674]="Orange",
[76675]="Orange",
[76676]="Orange",
[76677]="Orange",
[76678]="Orange",
[76679]="Orange",
[76680]="Purple",
[76681]="Purple",
[76682]="Purple",
[76683]="Purple",
[76684]="Purple",
[76685]="Purple",
[76686]="Purple",
[76687]="Purple",
[76688]="Purple",
[76689]="Purple",
[76690]="Purple",
[76691]="Purple",
[76692]="Red",
[76693]="Red",
[76694]="Red",
[76695]="Red",
[76696]="Red",
[76697]="Yellow",
[76698]="Yellow",
[76699]="Yellow",
[76700]="Yellow",
[76701]="Yellow",
[76879]="Meta",
[76884]="Meta",
[76885]="Meta",
[76886]="Meta",
[76887]="Meta",
[76888]="Meta",
[76890]="Meta",
[76891]="Meta",
[76892]="Meta",
[76893]="Meta",
[76894]="Meta",
[76895]="Meta",
[76896]="Meta",
[76897]="Meta",
[77130]="Green",
[77131]="Green",
[77132]="Orange",
[77133]="Purple",
[77134]="Yellow",
[77136]="Orange",
[77137]="Green",
[77138]="Orange",
[77139]="Green",
[77140]="Blue",
[77141]="Orange",
[77142]="Green",
[77143]="Green",
[77144]="Orange",
[77154]="Green",
[77540]="Cogwheel",
[77541]="Cogwheel",
[77542]="Cogwheel",
[77543]="Cogwheel",
[77544]="Cogwheel",
[77545]="Cogwheel",
[77546]="Cogwheel",
[77547]="Cogwheel",
[83141]="Red",
[83142]="Yellow",
[83143]="Yellow",
[83144]="Blue",
[83145]="Yellow",
[83146]="Yellow",
[83147]="Red",
[83148]="Blue",
[83149]="Blue",
[83150]="Red",
[83151]="Red",
[83152]="Red",
[88911]="Green",
[88912]="Green",
[88913]="Green",
[88914]="Green",
[88915]="Green",
[88916]="Green",
[88917]="Green",
[88918]="Green",
[88919]="Green",
[88920]="Green",
[88921]="Green",
[88922]="Green",
[88923]="Green",
[88924]="Green",
[88925]="Green",
[88926]="Green",
[88927]="Green",
[88928]="Green",
[88930]="Orange",
[88931]="Orange",
[88932]="Orange",
[88933]="Orange",
[88934]="Orange",
[88935]="Orange",
[88936]="Orange",
[88937]="Orange",
[88938]="Orange",
[88939]="Orange",
[88940]="Orange",
[88941]="Orange",
[88942]="Orange",
[88943]="Orange",
[88944]="Orange",
[88945]="Orange",
[88946]="Orange",
[88947]="Orange",
[88948]="Orange",
[88949]="Orange",
[88950]="Orange",
[88951]="Orange",
[88952]="Purple",
[88953]="Purple",
[88954]="Purple",
[88955]="Purple",
[88956]="Purple",
[88958]="Purple",
[88959]="Purple",
[88960]="Purple",
[88961]="Purple",
[88962]="Purple",
[88963]="Purple",
[88987]="Purple",
[89674]="Purple",
[89675]="Purple",
[89676]="Purple",
[89677]="Purple",
[89678]="Purple",
[89679]="Purple",
[89680]="Purple",
[89681]="Purple",
[89873]="Hydraulic",
[89881]="Hydraulic",
[89882]="Hydraulic",
[93364]="Hydraulic",
[93365]="Hydraulic",
[93366]="Hydraulic",
[93404]="Orange",
[93405]="Orange",
[93406]="Orange",
[93408]="Purple",
[93409]="Purple",
[93410]="Purple",
[93705]="Green",
[93706]="Green",
[93707]="Green",
[93708]="Green",
[95344]="Meta",
[95345]="Meta",
[95346]="Meta",
[95347]="Meta",
[95348]="Meta",
[97309]="Hydraulic",
[97538]="Orange",
[97943]="Orange",
[98090]="Blue",
[98094]="Red"}

alternateGemName = {
[25890]="28 Crit, 1% Reflect",
[25894]="24 Crit",
[25895]="24 Crit, Snare",
[25896]="18 Stam, Stun",
[25897]="12 Int, 2% Threat",
[25898]="24 Dodge",
[25901]="12 Int",
[28556]="10 Crit",
[28557]="10 Int",
[32409]="12 Agi",
[32640]="12 Crit",
[32641]="12 Int",
[34220]="24 Crit, 3% Crit Efct",
[35501]="24 Dodge, 1% Block",
[35503]="12 Int, 2% Mana",
[41285]="42 Crit, 3% Crit Efct",
[41307]="50 Crit, 1% Reflect",
[41333]="21 Int, 2% Mana",
[41335]="42 Crit, Snare",
[41339]="42 Crit",
[41375]="21 Int",
[41376]="42 Spirit, 3% Crit Efct",
[41377]="32 Stam",
[41378]="21 Int, Silence",
[41379]="42 Crit, Fear",
[41380]="32 Stam, 2% Armor",
[41381]="42 Crit",
[41382]="21 Int",
[41385]="42 Haste",
[41389]="42 Crit",
[41395]="21 Int, 2% Threat",
[41396]="42 Dodge, 1% Block",
[41397]="32 Stam, Stun",
[41398]="21 Agi",
[41401]="21 Int",
[44076]="17 Crit",
[44078]="17 Int",
[44081]="17 Crit, Snare",
[44082]="17 Crit, Fear",
[44084]="17 Int, Silence",
[44087]="17 Crit",
[44088]="26 Stam, Stun",
[44089]="17 Int",
[52289]="108 Mastery, Run Speed",
[52291]="108 Crit, 3% Crit Efct",
[52292]="54 Int, 2% Threat",
[52293]="81 Stam, 1% Block",
[52294]="81 Stam, 2% Armor",
[52295]="81 Stam",
[52296]="54 Int, 2% Mana",
[52297]="108 Spirit, 3% Crit Efct",
[52298]="108 Crit, 1% Reflect",
[52299]="81 Stam, Stun",
[52300]="108 Crit, Snare",
[52301]="108 Crit, Fear",
[52302]="54 Int, Silence",
[68778]="54 Agi, 3% Crit Efct",
[68779]="54 Str, 3% Crit Efct",
[68780]="54 Int, 3% Crit Efct",
[76879]="216 Int, 2% Mana",
[76884]="216 Agi, 3% Crit Efct",
[76885]="216 Int, 3% Crit Efct",
[76886]="216 Str, 3% Crit Efct",
[76887]="432 Mastery, Run Speed",
[76888]="432 Spirit, 3% Crit Efct",
[76890]="432 Crit, 1% Reflect",
[76891]="324 Stam, Stun",
[76892]="432 Crit, Snare",
[76893]="432 Crit, Fear",
[76894]="216 Int, Silence",
[76895]="324 Stam, 2% Armor",
[76896]="432 Dodge, 1% Block",
[76897]="324 Stam",
[95344]="Indomitable",
[95345]="Courageous",
[95346]="Capacitive",
[95347]="Sinister",
[95348]="665 PvP Pow, 775 Resil"}

gemDuplicates = {
[76570]=76636,
[76571]=76637,
[76572]=76638,
[76573]=76639,
[76574]=76640,
[76575]=76641,
[76576]=76642,
[76577]=76643,
[76578]=76644,
[76579]=76645,
[76580]=76646,
[76581]=76647,
[76582]=76648,
[76583]=76649,
[76584]=76650,
[76585]=76651,
[76586]=76652,
[76587]=76653,
[76588]=76654,
[76589]=76655,
[76590]=76656,
[76591]=76657,
[76592]=76658,
[76593]=76659,
[76594]=76660,
[76595]=76661,
[76596]=76662,
[76597]=76663,
[76598]=76664,
[76599]=76665,
[76600]=76666,
[76601]=76667,
[76602]=76668,
[76603]=76669,
[76604]=76670,
[76605]=76671,
[76606]=76672,
[76607]=76673,
[76608]=76674,
[76609]=76675,
[76610]=76676,
[76611]=76677,
[76612]=76678,
[76613]=76679,
[76614]=76680,
[76615]=76681,
[76616]=76682,
[76617]=76683,
[76618]=76684,
[76619]=76685,
[76620]=76686,
[76621]=76687,
[76622]=76688,
[76623]=76689,
[76624]=76690,
[76625]=76691,
[76626]=76692,
[76627]=76693,
[76628]=76694,
[76629]=76695,
[76630]=76696,
[76631]=76697,
[76632]=76698,
[76633]=76699,
[76634]=76700,
[76635]=76701,
[76636]=76570,
[76637]=76571,
[76638]=76572,
[76639]=76573,
[76640]=76574,
[76641]=76575,
[76642]=76576,
[76643]=76577,
[76644]=76578,
[76645]=76579,
[76646]=76580,
[76647]=76581,
[76648]=76582,
[76649]=76583,
[76650]=76584,
[76651]=76585,
[76652]=76586,
[76653]=76587,
[76654]=76588,
[76655]=76589,
[76656]=76590,
[76657]=76591,
[76658]=76592,
[76659]=76593,
[76660]=76594,
[76661]=76595,
[76662]=76596,
[76663]=76597,
[76664]=76598,
[76665]=76599,
[76666]=76600,
[76667]=76601,
[76668]=76602,
[76669]=76603,
[76670]=76604,
[76671]=76605,
[76672]=76606,
[76673]=76607,
[76674]=76608,
[76675]=76609,
[76676]=76610,
[76677]=76611,
[76678]=76612,
[76679]=76613,
[76680]=76614,
[76681]=76615,
[76682]=76616,
[76683]=76617,
[76684]=76618,
[76685]=76619,
[76686]=76620,
[76687]=76621,
[76688]=76622,
[76689]=76623,
[76690]=76624,
[76691]=76625,
[76692]=76626,
[76693]=76627,
[76694]=76628,
[76695]=76629,
[76696]=76630,
[76697]=76631,
[76698]=76632,
[76699]=76633,
[76700]=76634,
[76701]=76635,
[89674]=89676,
[89676]=89674,
[93705]=93707,
[93707]=93705}

local gemEnchantDuplicates = {
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0,
[0]=0}



function DoGemsMatch(gemIdA, gemIdB)
   return gemIdA == gemIdB or (gemIdA and gemIdB and gemIdA == gemDuplicates[gemIdB])
end

function DoGemEnchantsMatch(gemEnchantIdA, gemEnchantIdB)
   return gemEnchantIdA == gemEnchantIdB or (gemEnchantIdA and gemEnchantIdB and gemEnchantIdA == gemEnchantDuplicates[gemEnchantIdB])
end

function GemMatchesSocket(gemId, socketColor)
	if socketColor == 'r' then
		local gemColor = gemToColor[gemId]
		return gemColor =='Red' or gemColor == 'Orange' or gemColor == 'Purple'
	elseif socketColor == 'y' then
		local gemColor = gemToColor[gemId]
		return gemColor == 'Yellow' or gemColor == 'Orange' or gemColor == 'Green'
	elseif socketColor == 'b' then
		local gemColor = gemToColor[gemId]
		return gemColor == 'Blue' or gemColor == 'Purple' or gemColor == 'Green'
	else
		-- what if its nil or 0???
		return true
	end
end

function SocketBonusEnabled(existingItemLink, gemColors)
	local i = 1
	for color in string.gmatch(input, '([^,]+)') do

		-- get the current gem in the specified slot
		local gemLink = select(2, GetItemGem(existingItemLink, i))

		if gemLink then
			local gemId = getItemIdFromLink(currentGemLink)

			if not GemMatchesSocket(gemId, color) then
				return false
			end
		end
		i = i + 1
	end
	return true
end

-- in: [{id (gemId), color (socketColor)}]
-- out: bool
function AmrExpectsSocketBonus(gems)
	local i
	for i = 1, #gems do
		local gem = gems[i]
	 	if not GemMatchesSocket(gem.id, gem.color) then
	 		return false
	  	end
	end
	return true
end

local function MatchesOrderedGems(existingItemLink, existingGemEnchantIds, gems)
	-- split the gem requirements into primary and secondary
	local desiredPrimaryGems = {}
	local desiredSecondaryGems = {}
	local i
	for i = 1, #gems do

		local gemId = gems[i].id
		if gemId > 0 then
			local color = gemId and gemToColor[gemId]
			if color == 'Red' or color == 'Yellow' or color == 'Blue' then
				tinsert(desiredPrimaryGems, {id = gemId, enchantId = gems[i].enchantId, color = gems[i].color})
			elseif gemId and gemId ~= 0 then
				tinsert(desiredSecondaryGems, {id = gemId, enchantId = gems[i].enchantId, color = gems[i].color})
			end
		end
	end

	-- map from the real socket to the desired gems
	local usedGems = { }

	-- try to match the desiredPrimaryGems to gems already in the item (they take precidence)
	local missingGems = {}
	local j
	for i = 1, #desiredPrimaryGems do
		local expectedGem = desiredPrimaryGems[i]
		for j = 1, 3 do
			-- skip gems we've already used
			if not usedGems[j] then

				-- get the current gem in the specified slot
				local existingGemLink = select(2, GetItemGem(existingItemLink, j))

				if existingGemLink then
					local existingGemId = getItemIdFromLink(existingGemLink)

					-- first, see if the gems match
					if DoGemsMatch(existingGemId, expectedGem.id) and GemMatchesSocket(existingGemId, gems[j].color) then
						expectedGem.matched = true
						usedGems[j] = expectedGem
						break
					end
				end
			end
		end
		if not expectedGem.matched then
			tinsert(missingGems, expectedGem)
		end
	end

	-- loop through any primary gems that didn't match and place them (these take precidence over secondaries)
	for i = 1, #missingGems do
		for j = 1, 3 do
			local missingGem = missingGems[i]
			if not usedGems[j] and GemMatchesSocket(missingGem.id, gems[j].color) then
				usedGems[j] = missingGem
				break
			end
		end		
	end

	-- clear out the list of missing gems
	missingGems = {}

	-- try to match the desiredSecondaryGems to gems in the item
	for i = 1, #desiredSecondaryGems do
		local expectedGem = desiredSecondaryGems[i]
		for j = 1, 3 do
			-- skip gems we've already used
			if not usedGems[j] then

				-- get the current gem in the specified slot
				local existingGemLink = select(2, GetItemGem(existingItemLink, j))

				if existingGemLink then
					local existingGemId = getItemIdFromLink(existingGemLink)

					-- first, see if the gems match
					if DoGemsMatch(existingGemId, expectedGem.id) and GemMatchesSocket(existingGemId, gems[j].color) then
						expectedGem.matched = true
						usedGems[j] = expectedGem
						break
					end
				end
			end
		end		
		if not expectedGem.matched then
			tinsert(missingGems, expectedGem)
		end
	end

	-- loop through any secondary gems that didn't match and place them
	for i = 1, #missingGems do
		for j = 1, 3 do
			local missingGem = missingGems[i]
			if not usedGems[j] and GemMatchesSocket(missingGem.id, gems[j].color) then
				usedGems[j] = missingGem
				break
			end
		end		
	end

	local badGemCount = 0
	local result = { optimized = {}, current = existingGemEnchantIds, badGems = {}}
	for i = 1, 3 do
		if usedGems[i] then
			result.optimized[i] = usedGems[i]
			if usedGems[i].matched then
				result.badGems[i] = false
			else
				result.badGems[i] = true
				badGemCount = badGemCount + 1
			end
		end
	end
	result.current.link = existingItemLink

	return badGemCount, result
end


local function MatchesUnorderedGems(existingItemLink, existingGemEnchantIds, gems)
	local usedGems = {}
	local i, j, found
	local missingGems = {}
	for i = 1, #gems do
		if gems[i].id ~= 0 then
			-- if the enchant ids get messed up, fallback to the ordered compare for now
			if gems[i].enchantId and gems[i].enchantId == 0 then
				return MatchesOrderedGems(existingItemLink, existingGemEnchantIds, gems)
			end
			found = false
			for j = 1, #existingGemEnchantIds do
				if not usedGems[j] and DoGemEnchantsMatch(gems[i].enchantId, existingGemEnchantIds[j]) then
					found = true
					break
				end
			end
			if not found then
				tinsert(missingGems, {id = gems[i].id, enchantId = gems[i].enchantId, color = gems[i].color})
			end
		end
	end

	-- loop through any gems that didn't match and place them in unmatched slots
	for i = 1, #missingGems do
		for j = 1, 3 do
			local missingGem = missingGems[i]
			if not usedGems[j] then
				usedGems[j] = missingGem
				break
			end
		end
	end

	local badGemCount = 0
	local result = { optimized = {}, current = existingGemEnchantIds, badGems = {}}
	for i = 1, 3 do
		if usedGems[i] then
			result.optimized[i] = usedGems[i]
			if usedGems[i].matched then
				result.badGems[i] = false
			else
				result.badGems[i] = true
				badGemCount = badGemCount + 1
			end
		end
	end
	result.current.link = existingItemLink

	return badGemCount, result
end

-- returns badGemCount and {optimized:[], current:[], badGems[]}
function MatchesGems(existingItemLink, existingGemEnchantIds, gems)
	if AmrExpectsSocketBonus(gems) then
		return MatchesOrderedGems(existingItemLink, existingGemEnchantIds, gems)
	else
		return MatchesUnorderedGems(existingItemLink, existingGemEnchantIds, gems)
	end		
end
