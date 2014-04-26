var city_list = new Array("三亚", "三河", "上海", "上饶", "东莞", "东营", "东阳", "中山", "丰城", "临安", "临沂", "丹东", "丽江", "义乌", "乌鲁木齐", "乐山", "九江", "交城", "亳州", "佛山", "佳木斯", "保定", "兖州", "六盘水", "兰州", "兴义", "内江", "凤凰", "凯里", "包头", "北京", "北海", "十堰", "南京", "南宁", "南昌", "南通", "南阳", "厦门", "合肥", "吉安", "吉林", "吕梁", "吴江", "周口", "呼伦贝尔", "呼和浩特", "咸宁", "咸阳", "哈尔滨", "唐山", "商丘", "嘉兴", "嘉峪关", "四会", "四平", "大丰", "大庆", "大理", "大连", "天水", "天津", "太仓", "太原", "如皋", "姜堰", "威海", "娄底", "婺源", "宁波", "安国", "安庆", "安阳", "安顺", "宜兴", "宜宾", "宜昌", "宜春", "宝鸡", "宿州", "宿迁", "寿光", "岳阳", "巢湖", "巴中", "常宁", "常州", "常德", "常熟", "平凉", "平潭", "平遥", "平顶山", "广元", "广州", "广汉", "廊坊", "开封", "张家港", "张家界", "徐州", "德州", "德阳", "怀化", "惠州", "成都", "扬州", "抚州", "拉萨", "揭阳", "新乡", "新余", "无锡", "日照", "昆山", "昆明", "明光", "晋城", "晋江", "普宁", "景德镇", "朔州", "朝阳", "杭州", "枣庄", "柳州", "株洲", "格尔木", "桂林", "梅州", "梧州", "榆林", "武夷山", "武汉", "毕节", "永州", "汉中", "汕头", "汕尾", "江门", "江阴", "池州", "沈阳", "沧州", "河源", "泉州", "泊头", "泰安", "泰州", "泸州", "洛阳", "济南", "济宁", "济源", "海口", "海安", "海门", "淄博", "淮北", "淮南", "淮安", "深圳", "清远", "温州", "湘潭", "湛江", "滨州", "漯河", "漳州", "潍坊", "潮州", "烟台", "焦作", "牡丹江", "玉山", "玉林", "珠海", "琼海", "益阳", "盐城", "盘锦", "眉山", "石家", "石家庄", "福州", "福鼎", "秦皇岛", "绍兴", "绵阳", "耒阳", "聊城", "肇庆", "自贡", "芜湖", "苏州", "茂名", "荆州", "荆门", "莆田", "莱芜", "菏泽", "萍乡", "营口", "葫芦岛", "蓬莱", "蚌埠", "衡阳", "襄阳", "西宁", "西安", "西昌", "许昌", "诸暨", "贵阳", "赣州", "赤壁", "赤峰", "达州", "运城", "连云港", "通化", "遂宁", "遵义", "邢台", "邯郸", "邳州", "邹城", "邹平", "郑州", "郴州", "都匀", "重庆", "金华", "钦州", "铁岭", "铜仁", "银川", "锡林浩特", "锦州", "镇江", "长春", "长沙", "阜阳", "防城港", "阳江", "隆回", "随州", "青岛", "青州", "靖江", "鞍山", "韶关", "马鞍山", "驻马店", "鹰潭", "黄冈", "黄山", "黄石", "齐齐哈尔", "龙口", "龙岩");
var zone_list = new Array();
zone_list[0] = new Array("河西区", "河东区");
zone_list[1] = new Array("燕郊开发区");
zone_list[2] = new Array("闵行区", "静安区", "奉贤区", "普陀区", "浦东新区", "黄浦区", "杨浦区", "虹口区", "徐汇区", "松江区", "嘉定区", "闸北区", "长宁区");
zone_list[3] = new Array("信州区");
zone_list[4] = new Array("南城区", "东城区", "虎门镇", "厚街镇", "莞城区", "茶山镇", "石碣镇");
zone_list[5] = new Array("东营区", "西城区");
zone_list[6] = new Array("横店镇");
zone_list[7] = new Array("南区", "小榄镇", "石岐区");
zone_list[8] = new Array("老城区");
zone_list[9] = new Array("临安市");
zone_list[10] = new Array("兰山区");
zone_list[11] = new Array("元宝区");
zone_list[12] = new Array("古城区");
zone_list[13] = new Array("稠州区");
zone_list[14] = new Array("天山区", "新市区", "沙依巴克区", "水磨沟区");
zone_list[15] = new Array("中区");
zone_list[16] = new Array("浔阳区", "庐山区");
zone_list[17] = new Array("离石区");
zone_list[18] = new Array("谯城区");
zone_list[19] = new Array("南海区", "禅城区", "顺德区", "三水区", "高明区");
zone_list[20] = new Array("向阳区", "黑龙江省");
zone_list[21] = new Array("北市区", "涿州市");
zone_list[22] = new Array("东区");
zone_list[23] = new Array("钟山区");
zone_list[24] = new Array("安宁区", "城关区", "西固区");
zone_list[25] = new Array("坪东区", "桔山新区");
zone_list[26] = new Array("市中区");
zone_list[27] = new Array("凤凰区");
zone_list[28] = new Array("凯里中心城区");
zone_list[29] = new Array("昆都仑区", "东河区", "青山区");
zone_list[30] = new Array("东城区", "丰台区", "西城区", "崇文区", "朝阳区", "海淀区", "大兴区", "昌平区", "密云县", "石景山区", "延庆县", "房山区", "宣武区", "通州区", "平谷区", "顺义区", "怀柔区");
zone_list[31] = new Array("海城区");
zone_list[32] = new Array("张湾区");
zone_list[33] = new Array("白下区", "建邺区", "浦口区", "秦淮区", "鼓楼区", "沿江工业开发区", "玄武区", "江宁区", "溧水区", "雨花台区", "六合区", "栖霞区", "高淳区");
zone_list[34] = new Array("江南区", "兴宁区", "西乡塘区", "青秀区");
zone_list[35] = new Array("红谷滩区", "西湖区", "青山湖区", "青云谱区", "高新开发区", "东湖区", "经济技术开发区");
zone_list[36] = new Array("崇川区", "港闸区", "通州区");
zone_list[37] = new Array("宛城区");
zone_list[38] = new Array("思明区", "湖里区", "同安区", "海沧区", "集美区");
zone_list[39] = new Array("瑶海区", "蜀山区", "庐阳区", "包河区");
zone_list[40] = new Array("吉州区", "青原区");
zone_list[41] = new Array("龙潭区");
zone_list[42] = new Array("离石区");
zone_list[43] = new Array("吴江市");
zone_list[44] = new Array("川汇区");
zone_list[45] = new Array("海拉尔区");
zone_list[46] = new Array("赛罕区", "回民区", "新城区", "玉泉区");
zone_list[47] = new Array("咸安区");
zone_list[48] = new Array("渭城区", "秦都区");
zone_list[49] = new Array("道外区", "道里区", "南岗区");
zone_list[50] = new Array("路南区");
zone_list[51] = new Array("梁园区", "睢阳区");
zone_list[52] = new Array("秀洲区", "南湖区");
zone_list[53] = new Array("嘉峪关");
zone_list[54] = new Array("城中区");
zone_list[55] = new Array("铁西区");
zone_list[56] = new Array("大中镇区");
zone_list[57] = new Array("让胡路区", "萨尔图区");
zone_list[58] = new Array("古城区");
zone_list[59] = new Array("甘井子区", "普兰店", "中山区", "金州区", "开发区", "瓦房店", "沙河口区", "西岗区");
zone_list[60] = new Array("北道区");
zone_list[61] = new Array("河东区", "南开区", "河北区", "河西区", "和平区", "滨海新区", "东丽区", "武清开发区", "塘沽区");
zone_list[62] = new Array("开发区", "太仓市", "太仓开发区");
zone_list[63] = new Array("迎泽区", "杏花岭区", "小店区", "万柏林区");
zone_list[64] = new Array("如皋区");
zone_list[65] = new Array("姜堰区");
zone_list[66] = new Array("环翠区");
zone_list[67] = new Array("娄星区");
zone_list[68] = new Array("婺源");
zone_list[69] = new Array("象山", "鄞州区", "江东区", "海曙区");
zone_list[70] = new Array("安国");
zone_list[71] = new Array("宜秀区");
zone_list[72] = new Array("北关区", "文峰区");
zone_list[73] = new Array("西秀区", "开发区");
zone_list[74] = new Array("宜兴区");
zone_list[75] = new Array("翠屏区");
zone_list[76] = new Array("西陵区", "伍家岗区");
zone_list[77] = new Array("袁山区");
zone_list[78] = new Array("渭滨区");
zone_list[79] = new Array("埇桥区");
zone_list[80] = new Array("宿豫区", "沭阳", "宿城区", "泗洪区");
zone_list[81] = new Array("圣城区");
zone_list[82] = new Array("岳阳楼区");
zone_list[83] = new Array("居巢区");
zone_list[84] = new Array("巴州区");
zone_list[85] = new Array("培元区");
zone_list[86] = new Array("武进区", "天宁区", "新北区");
zone_list[87] = new Array("鼎城区", "武陵区");
zone_list[88] = new Array("高新技术开发区", "虞山镇");
zone_list[89] = new Array("崆峒区");
zone_list[90] = new Array("新城区");
zone_list[91] = new Array("平遥");
zone_list[92] = new Array("湛河区");
zone_list[93] = new Array("利州区");
zone_list[94] = new Array("越秀区", "天河区", "番禺区", "增城区", "黄埔区", "白云区", "南沙区", "海珠区", "花都区", "荔湾区", "从化区");
zone_list[95] = new Array("广汉市");
zone_list[96] = new Array("广阳区");
zone_list[97] = new Array("顺河区", "龙亭区", "鼓楼区");
zone_list[98] = new Array("东区");
zone_list[99] = new Array("永定区");
zone_list[100] = new Array("泉山区", "鼓楼区", "丰县区", "云龙区");
zone_list[101] = new Array("德城区", "经济开发区");
zone_list[102] = new Array("旌阳区");
zone_list[103] = new Array("鹤城区");
zone_list[104] = new Array("惠城区", "惠阳区");
zone_list[105] = new Array("金牛区", "青羊区", "仁寿县", "锦江区", "武侯区", "新都区", "郫县", "都江堰市区", "成华区", "双流县", "龙泉驿区", "高新区");
zone_list[106] = new Array("广陵区", "邗江区");
zone_list[107] = new Array("临川区");
zone_list[108] = new Array("城关区");
zone_list[109] = new Array("东山区", "榕城");
zone_list[110] = new Array("红旗区", "卫滨区");
zone_list[111] = new Array("渝水区");
zone_list[112] = new Array("崇安区", "滨湖区", "新区", "苏南区域 ");
zone_list[113] = new Array("东港区", "五莲县");
zone_list[114] = new Array("玉山镇", "巴城镇", "经济开发", "高科园区");
zone_list[115] = new Array("五华区", "官渡区", "盘龙区");
zone_list[116] = new Array("明光区");
zone_list[117] = new Array("经济技术开发区");
zone_list[118] = new Array("青阳社区", "青华社区");
zone_list[119] = new Array("中心区");
zone_list[120] = new Array("昌江区", "珠山区");
zone_list[121] = new Array("朔城区");
zone_list[122] = new Array("双塔区");
zone_list[123] = new Array("下沙开发区", "下城区", "上城区", "西湖区", "拱墅区", "萧山区", "余杭区", "江干区");
zone_list[124] = new Array("市中区");
zone_list[125] = new Array("柳北区");
zone_list[126] = new Array("芦淞区", "天元区", "荷塘区");
zone_list[127] = new Array("东城区");
zone_list[128] = new Array("叠彩区", "象山区", "华南区", "灵川县", "七星区");
zone_list[129] = new Array("梅江区");
zone_list[130] = new Array("万秀区");
zone_list[131] = new Array("榆阳区");
zone_list[132] = new Array("武夷山市");
zone_list[133] = new Array("江汉区", "武昌区", "洪山区", "硚口区", "江岸区", "青山区", "东西湖区", "东湖高新开发区", "沌口经济开发区", "黄陂区", "东湖开发区", "汉阳区");
zone_list[134] = new Array("七星关区");
zone_list[135] = new Array("零陵区");
zone_list[136] = new Array("汉台区");
zone_list[137] = new Array("澄海区", "潮阳区", "潮南区", "龙湖区", "金平区");
zone_list[138] = new Array("城区", "海丰县");
zone_list[139] = new Array("蓬江区", "鹤山市", "江海区");
zone_list[140] = new Array("江阴市", "江阴区");
zone_list[141] = new Array("站前区");
zone_list[142] = new Array("铁西区", "和平区", "于洪区", "沈北新区", "沈河区", "大东区", "皇姑区");
zone_list[143] = new Array("新华区");
zone_list[144] = new Array("源城区");
zone_list[145] = new Array("丰泽区", "安溪", "鲤城区");
zone_list[146] = new Array("泊头区");
zone_list[147] = new Array("泰山区");
zone_list[148] = new Array("海陵区");
zone_list[149] = new Array("水井沟区", "龙马潭区");
zone_list[150] = new Array("洛龙区", "西工区", "涧西区");
zone_list[151] = new Array("槐荫区", "历城区", "市中区", "高新区", "历下区", "天桥区", "章丘市", "平阴县", "长清区");
zone_list[152] = new Array("市中区");
zone_list[153] = new Array("天坛");
zone_list[154] = new Array("龙华区", "琼山区", "美兰区");
zone_list[155] = new Array("海安区");
zone_list[156] = new Array("经济技术开发区");
zone_list[157] = new Array("张店区", "临淄区", "淄川区", "周村区");
zone_list[158] = new Array("相山区");
zone_list[159] = new Array("田家庵区");
zone_list[160] = new Array("淮安区", "清河区");
zone_list[161] = new Array("南山区", "宝安区", "龙岗区", "福田区", "罗湖区", "坪山新区", "龙华新区", "盐田区", "坂田");
zone_list[162] = new Array("清城区");
zone_list[163] = new Array("瓯海区");
zone_list[164] = new Array("雨湖区", "岳塘区");
zone_list[165] = new Array("霞山区", "赤坎区", "徐闻县", "麻章区");
zone_list[166] = new Array("沾化县", "滨城区", "无棣县");
zone_list[167] = new Array("源汇区,", "汇源区");
zone_list[168] = new Array("龙海市", "芗城区");
zone_list[169] = new Array("潍城区");
zone_list[170] = new Array("湘桥区", "枫溪区");
zone_list[171] = new Array("开发区", "芝罘区", "莱山区");
zone_list[172] = new Array("解放区");
zone_list[173] = new Array("东安区", "西安区");
zone_list[174] = new Array("玉山");
zone_list[175] = new Array("博白县");
zone_list[176] = new Array("拱北区", "香洲区", "金湾区");
zone_list[177] = new Array("嘉积镇");
zone_list[178] = new Array("赫山区");
zone_list[179] = new Array("亭湖区");
zone_list[180] = new Array("兴隆台区", "双台子区");
zone_list[181] = new Array("东坡区");
zone_list[182] = new Array("开发区");
zone_list[183] = new Array("开发区", "裕华区", "新华区", "桥东区", "正定县", "长安区", "桥西区");
zone_list[184] = new Array("台江区", "晋安区", "仓山区", "鼓楼区", "马尾区");
zone_list[185] = new Array("福鼎");
zone_list[186] = new Array("海港区");
zone_list[187] = new Array("越城区");
zone_list[188] = new Array("涪城区");
zone_list[189] = new Array("耒阳市");
zone_list[190] = new Array("东昌府区", "冠县");
zone_list[191] = new Array("端州区");
zone_list[192] = new Array("汇东新区", "自流井区");
zone_list[193] = new Array("镜湖区", "鸠江区");
zone_list[194] = new Array("金阊区", "平江区", "沧浪区", "相城区", "高新区", "吴中区", "工业园区");
zone_list[195] = new Array("茂南区");
zone_list[196] = new Array("沙市区");
zone_list[197] = new Array("掇刀区");
zone_list[198] = new Array("城厢区");
zone_list[199] = new Array("济南区域 ", "莱城区");
zone_list[200] = new Array("牡丹区", "东明", "开发区", "鄄城", "单县");
zone_list[201] = new Array("安源区");
zone_list[202] = new Array("站前区");
zone_list[203] = new Array("连山区", "东北三省");
zone_list[204] = new Array("蓬莱区");
zone_list[205] = new Array("龙子湖区");
zone_list[206] = new Array("南岳区", "珠晖区", "石鼓区", "蒸湘区", "衡东县", "雁峰区");
zone_list[207] = new Array("樊城区", "襄城区");
zone_list[208] = new Array("高新区", "城西区", "城中区");
zone_list[209] = new Array("雁塔区", "莲湖区", "碑林区", "新城区", "临潼区", "未央区", "阎良区", "长安区");
zone_list[210] = new Array("西昌市");
zone_list[211] = new Array("魏都区");
zone_list[212] = new Array("浙江区 ");
zone_list[213] = new Array("花溪区", "云岩区", "南明区", "金阳新区", "乌当区", "小河区", "息烽县", "白云区", "清镇市");
zone_list[214] = new Array("章贡区");
zone_list[215] = new Array("赤壁");
zone_list[216] = new Array("红山区");
zone_list[217] = new Array("通川区");
zone_list[218] = new Array("盐湖区");
zone_list[219] = new Array("新浦区", "灌南县", "连云区", "东海县");
zone_list[220] = new Array("东昌区");
zone_list[221] = new Array("船山区");
zone_list[222] = new Array("红花岗", "红花岗区", "汇川区");
zone_list[223] = new Array("华北区域");
zone_list[224] = new Array("丛台区", "河津区", "高开区");
zone_list[225] = new Array("邳州市");
zone_list[226] = new Array("邹城市");
zone_list[227] = new Array("邹平县");
zone_list[228] = new Array("金水区", "二七区", "管城区", "中原区");
zone_list[229] = new Array("北湖区", "桂阳县");
zone_list[230] = new Array("黔南");
zone_list[231] = new Array("涪陵区", "北碚区", "渝中区", "黔江区", "开县", "合川区", "江北区", "九龙坡区", "渝北区", "沙坪坝区", "万州区", "南岸区", "永川区");
zone_list[232] = new Array("婺城区");
zone_list[233] = new Array("钦南区");
zone_list[234] = new Array("银州区");
zone_list[235] = new Array("碧江区");
zone_list[236] = new Array("兴庆区", "金凤区", "西夏区");
zone_list[237] = new Array("锡林郭勒盟");
zone_list[238] = new Array("黑山县", "古塔区", "凌河区");
zone_list[239] = new Array("京口区", "润州区");
zone_list[240] = new Array("南关区", "绿园区", "朝阳区", "经开区", "宽城区");
zone_list[241] = new Array("芙蓉区", "岳麓区", "星沙开发区", "雨花区", "天心区", "开福区", "宁乡区", "浏阳县");
zone_list[242] = new Array("颍泉区", "颖东区");
zone_list[243] = new Array("港口区");
zone_list[244] = new Array("阳东县", "江城区", "阳春区");
zone_list[245] = new Array("隆回");
zone_list[246] = new Array("曾都区");
zone_list[247] = new Array("四方区", "李沧区", "城阳区", "黄岛区", "市北区", "市南区", "经济技术开发区", "崂山区", "即墨市", "市南", "平度");
zone_list[248] = new Array("青州市");
zone_list[249] = new Array("靖江");
zone_list[250] = new Array("立山区");
zone_list[251] = new Array("武江区", "浈江区", "韶关");
zone_list[252] = new Array("雨山区");
zone_list[253] = new Array("驿城区");
zone_list[254] = new Array("月湖区");
zone_list[255] = new Array("浠水县", "黄州区");
zone_list[256] = new Array("屯溪区", "黄山区");
zone_list[257] = new Array("黄石港区");
zone_list[258] = new Array("龙沙区");
zone_list[259] = new Array("东城区");
zone_list[260] = new Array("上杭县", "新罗区");