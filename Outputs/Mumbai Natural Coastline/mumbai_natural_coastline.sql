SET standard_conforming_strings = OFF;
CREATE SCHEMA "public";
DROP TABLE IF EXISTS "public"."mumbai_natural_coastline" CASCADE;
BEGIN;
CREATE TABLE "public"."mumbai_natural_coastline" ( "ogc_fid" SERIAL, CONSTRAINT "mumbai_natural_coastline_pk" PRIMARY KEY ("ogc_fid") );
SELECT AddGeometryColumn('public','mumbai_natural_coastline','mumbai_natural_coastline',7755,'LINESTRING',2);
CREATE INDEX "mumbai_natural_coastline_mumbai_natural_coastline_geom_idx" ON "public"."mumbai_natural_coastline" USING GIST ("mumbai_natural_coastline");
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "full_id" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "osm_id" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "osm_type" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "natural" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "name:pt" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "name:mr" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "name:hi" VARCHAR;
ALTER TABLE "public"."mumbai_natural_coastline" ADD COLUMN "name" VARCHAR;
INSERT INTO "public"."mumbai_natural_coastline" ("mumbai_natural_coastline" , "full_id", "osm_id", "osm_type", "natural", "name:pt", "name:mr", "name:hi", "name") VALUES ('01020000204B1E0000770200004C2F138163D24841543AC740B1B54A411DE62FEF70D24841694708978BB54A41E14BA96074D2484154DEBD2880B54A41DA59A1B574D248416E1C0AA573B54A41665408BA72D2484137960B2668B54A41CE3C12216AD24841104E476D5BB54A418A6B527045D24841DED8E65F37B54A41BD523C3B29D248411CB5A0910EB54A41FD7CB10814D24841B276B533EFB44A41A41D80BD00D24841E5C80B70D4B44A414C2FBD0FE1D14841FDD5EF80A9B44A414AE000FAC9D148413293AE4390B44A4129249DF79AD148410AA1868B79B44A417A6DBD5C8AD14841184B04E467B44A414227E52980D148411F02991351B44A417B34A52F7CD148414FBAD60A37B44A41FAC31D5074D148416E33BE2B1AB44A4109BBD26E79D148413C12ACF0FBB34A41453E28A778D14841E552A67DDCB34A4149EB529289D14841A4241999C3B34A41F6B9161487D1484106EDE3BC95B34A41CCE5D2998ED14841255711458BB34A41F80D00169ED1484125C67D037FB34A41EC02CD89B6D1484166E4F67771B34A41FFD4220DC6D14841408216CA49B34A417C383467D2D148412BB04BA734B34A41C500D6BDE1D14841AE251A0C27B34A41F71D78ADF5D148415208E2D426B34A41DAC685D5FAD148412709951B1FB34A410B201888F6D14841A94F9ED3F3B24A410FB9F7A305D24841BFFB3410C5B24A41139705CC1DD2484112575D93A1B24A412222CC0C28D24841176A04499EB24A4110D118D642D24841DCF02BFB9AB24A4144DA1D6551D2484103205A5C92B24A41D689FC4560D24841DA955F596FB24A418D5BB5847DD2484191DC234117B24A41189E61A180D24841952A4A45FDB14A419A1AC0E87DD248412C69A9EBDDB14A41BF017D2579D2484172EEE574B4B14A41F1D22D5F73D248415F86205A8AB14A41C7AAFE266CD24841287B5CDA69B14A413CF906FE62D248415DB25B9849B14A41B6D92AA947D24841D8458C6711B14A414752FF0E3ED24841240FDB5D0AB14A41499984A734D24841D52CAA3007B14A41C89B52C022D24841C115758501B14A417903BFBB1FD248416E78DA1BFCB04A41B48E6E3B2BD24841C0D226C1F8B04A41F795E68932D248412A4502EDF0B04A416071F32C34D248418D4939D3E6B04A416843E76D31D248410430CC62D0B04A419FCF5BDD21D24841D08E940EC0B04A416E11758F11D24841091CF679BCB04A41E4F5142E01D24841B70B0EC4BCB04A41D8EA859EF4D148414DF02B39B6B04A4100E4F131ECD14841666182ADA9B04A41FEA72817F1D148418C1468F291B04A412264E8F0EDD1484137B674C66BB04A41996711C5F0D148412A048D653AB04A41948C505DFBD148412033206925B04A417F25F09204D24841BAE5FEC81AB04A41C958A58322D24841D67C81870EB04A4124F628973ED24841842ED5510FB04A41AA0B941455D248412ABE1BC519B04A412A93E0AA82D248415A3F3DE711B04A4129994D1D91D2484132AE103E17B04A4190E78F4595D248419711012D1FB04A41E6CDE8389ED24841D90153FF22B04A4180C22A16ACD248413677A76D22B04A41A13CDE22BCD24841C093F4031FB04A4108FE5566D1D24841C05A034C16B04A41F0A93FB8E3D24841E078B1C10DB04A41E2C531EEF6D2484177AF2082FBAF4A41D2BDFD330AD34841996AA369E5AF4A41DD41006E19D3484194F1559ACEAF4A413067D49D27D34841AD36ABA4B0AF4A4172DD626933D34841BA3FE29991AF4A41CCA7E4DE37D34841E39605F874AF4A41B3A4DA1038D348415587FA2463AF4A411CA0E9E835D348414E10626F51AF4A411E8073DE32D3484188497D3144AF4A415C3F59D02FD3484139D796AC36AF4A4187071F9A27D34841B7EFD6B820AF4A4135572D421CD34841225427080CAF4A418DE7953714D3484198F8EEE501AF4A41CC11727704D34841C05AE566FCAE4A41CE5432B4FDD248411D78580EFCAE4A418637CFB2F3D248411AC9A304FCAE4A419AD9ACD6C6D24841C921FF4A07AF4A414940CE57A9D24841F26C599B0EAF4A413B58C4FF92D2484157639C330FAF4A41B28FC04F84D24841DFB2072E05AF4A41AEE320DF7AD248413919B417F5AE4A41ACF9067375D24841278B8207E2AE4A41F6E5EBE85FD24841B67F9D746DAE4A4111FA64955FD2484171A05CBF3BAE4A41BFF18E8456D2484126B05BF90CAE4A41B4EF554550D24841B06CB2EEE9AD4A41989691D94CD248412A5F991ACDAD4A41450144D154D24841973DFA02BBAD4A41E20628E259D24841363A4A96A6AD4A4168E21CB565D24841E609B1337EAD4A41FA306A246CD2484161A4393474AD4A419D3BDABB73D24841CFBFD97F70AD4A4112CDA02081D248410B3B84FE76AD4A41E4207E868BD24841475E653879AD4A41060EAC5394D2484131DDB56377AD4A415E09E66EA0D24841AC7D5F966FAD4A41C547AD17AED248410CF7EBB85AAD4A41DFFDC82FB9D24841A7980AE754AD4A41C59DB02FEED248416CA9F84A53AD4A41A17C5EBEFBD24841DB242D5762AD4A4149E270D908D348411EADE29368AD4A414EA57A5B1FD348412FEDF78768AD4A41E6F867572CD3484164E6720967AD4A41866F58C339D348411D8ED2146EAD4A415E458CC946D348419D7A593078AD4A41E877BFC351D348417CCF2FCE7AAD4A41181DB4165BD3484115B9408B80AD4A41614336FA6BD34841728B2B6987AD4A415C4CB76C77D3484142DD637B88AD4A414813313484D34841AAC56C9E85AD4A4180F04191A2D34841A61D5AA66EAD4A4110035723B9D3484174978B8B5FAD4A41D1C51C06D8D34841BBA8836555AD4A411C54873CF6D3484164B25DD953AD4A41BAFE3AD615D44841A5CAFB615AAD4A412F66462528D448413FD8ADDE61AD4A414C00459139D44841672238B06DAD4A410A7722F648D44841CE0097F277AD4A419D5EF37D55D44841061E2AB688AD4A41A88D1F7767D448415B003609A2AD4A4142EC83756BD4484135B3AA56B4AD4A41915E1CC777D44841711A1DF8C0AD4A41AE5DCA8688D44841665306D8C7AD4A41B1B756DB8FD44841CF1AF140DAAD4A41667D75D793D448418DF5B648ECAD4A41C80B5129A1D44841398EC72DFCAD4A4197F07593B7D448415198004005AE4A415E1541D1BBD448416057247711AE4A41D79D5705C0D44841747DDE9C1AAE4A41EAB9E3B1FBD448414723FE4218AE4A41A43280874FD54841AFAAB8F614AE4A41D25A7F3356D54841DB2FDEBDF3AD4A4156A92F1C50D54841B32D10E8BDAD4A41DB8A607247D5484134FC34C57BAD4A41CE5C08A642D54841CEF7740057AD4A415F1193C231D548410C1EF5872FAD4A4130D2758211D5484146BA6A5DD8AC4A414C5EB4C80DD548415AD94C4BCBAC4A41C0907EB50AD54841744807BDBAAC4A41119C731D0AD54841695F081A9CAC4A416818228C0CD54841599CF1227AAC4A4127DD798C0FD54841242A0BA927AC4A41C392E9A20BD548412C36D468EBAB4A41E8B6E88E17D548418894F671ACAB4A412E328F0B16D54841AE4DA36377AB4A4100167EF212D54841AEA7AA4A0DAB4A41E1DCDB7A07D54841A338E74ABEAA4A4116B5F46CF0D44841815ADE6F7DAA4A4124C4E52DE6D44841F8F08EF552AA4A41350E568ED8D44841929A48F41BAA4A41B020581DCAD44841B5F22DEDE1A94A41DE74C89EBED4484125E78C7FA9A94A4134C2ACEDB5D4484149F41CFF73A94A4105F9686F94D448419182A46300A94A41B513A94B87D448415E754B1BCFA84A41EA80CDD682D448416B0A6088C9A84A41494B652370D44841054BE100C8A84A41A408AD3053D44841AA8AC4C0C1A84A41C77B99FE3CD4484112ECE64FB2A84A41A69960F624D4484106196D6BAAA84A41ACD409B309D44841E732647FA4A84A41A629EC9CF1D3484177470692AEA84A41D319F0AEDFD34841AE9B290EB8A84A411CD24B9CD3D34841695DD3C7B9A84A416AD94A67C9D348411B44BF1DB3A84A41B889FCA4C8D3484132E96CC2A9A84A41345DB50FCDD34841048F31BBA3A84A4103610717E2D34841BB74F4E996A84A4140BAA4E7E2D34841660116718EA84A41385654E9DDD348415232602A85A84A410B4BED61CFD34841901A14C874A84A4160CCAA57B6D34841E0A7E2935EA84A41E77ACC43A6D348411FB8516756A84A41FE0A76E593D34841D925E62F54A84A418C83957E83D348419FD73FF95EA84A411EC457D475D34841C5196FC660A84A41B180EAA869D348413D472F915CA84A41559EC7E95ED34841E9D8E22050A84A415FB305D255D34841C115D11642A84A41FC8A476653D34841EC48D10A2EA84A41335525F04DD34841670B39AE1FA84A41A3B4309D43D34841BFF801841DA84A415093FFB034D34841D8516FC919A84A415CEBB63531D3484140067CEB12A84A411617F80434D34841A16DEC2903A84A419F57B54A33D3484158C9B4E2FFA74A418C521BA52ED348416FCD18AEEBA74A41D8E3FA6B1AD34841C43C11EAD1A74A41BD448CD2FCD2484104E95DFBBEA74A4154EF6A6FDDD2484130381C2FAFA74A4104C75E14BAD2484125550CB5A8A74A4109846EB294D24841B0EADCF9B0A74A41B9C092EF88D248411C05C5EBC4A74A41FAA306A081D24841E61F9A22CEA74A4157A78D7677D248416C48015EDBA74A41BFD5CC6E64D248411666516EE6A74A41847C02C237D24841E4C0D0CDF2A74A41ECCD5D8412D2484173B8F45E0BA84A414D3ABFE108D2484194AC9D3E0DA84A419817FD6100D24841301F9E170AA84A4137CAB04DFCD148411926036E06A84A41559BAF31FDD148412AD23AB7FCA74A418E76F97BF9D148411A4C3672F5A74A4161AFF7F9ECD148416DADDF01F0A74A411136E42BE5D1484105902494EFA74A415292EE06DDD14841D83E2BB1E4A74A41AA3B96DBDBD1484133B5E845CCA74A41213CB56AD4D14841D27F0F52BDA74A41AE60B2C4D4D14841B70A26E8B3A74A41FA69554CD8D14841D593990AA2A74A411702FF9BD5D148413C29E2C590A74A4177CC94A1CDD14841BF2C655877A74A4164D1210CC1D14841787F3A1458A74A418A942361BFD1484185B1521845A74A41E42D670BC4D148410646C84436A74A4176ACEC83D6D14841F5F2ED4920A74A416E413E61FFD14841B618294E05A74A4164A89ABF08D248415A2007F400A74A4142EF253011D24841F3F3AD7BFDA64A418CE14B531DD248414453D63AF6A64A41A16B8EBB2FD24841BEEA9530E7A64A418636A64C3BD248415D6FE629DAA64A41205C025245D24841ACAA892CCAA64A41CE37067850D24841912A14A1AFA64A410C72903F57D24841A0E424B096A64A4176E1555B58D248416015E60676A64A414460CA9A55D248411E3BCFE360A64A41B7518D154FD248414D8CF2284EA64A412B19CADB43D24841D641FC3141A64A415000AE1B39D24841B15C1B9A3DA64A41645E8D982BD24841CDDCA1AC3FA64A41F8DD185B21D24841E29B59D93DA64A417494B9B606D24841BFA07FBC2BA64A41AAAD819EF1D14841C9DDBF7919A64A4114833619E2D148419D66B71B0AA64A410071604ADCD1484103290BD0FEA54A41EFFD5A5FD7D14841DDB0B4FEF3A54A413CF08F24D9D1484110C5A86FE8A54A413D41CFDFDFD14841B09CBF75E1A54A4170553C60F1D14841176E451AD9A54A4192D3645909D248419DFCECF8D4A54A4148D1D3A016D24841A7E1DCF9D0A54A41383AFEA817D24841CCB073A4CCA54A41F793EDB21CD24841236E5857C9A54A4182C8B31B2ED24841FE24DC0AE1A54A41C33BF3D631D24841183347F5E1A54A417DA3E68F38D2484149F546D9DEA54A41EF328B4C45D2484176D78301D3A54A41D9238EB352D24841F244B7E4BCA54A410D8B97B55BD24841EE41880D9BA54A4132D42E9661D248415E5A8FA072A54A41D8E227195FD24841617918E64CA54A41B27B66495CD24841EFFA0BCE36A54A418D05430960D24841BE9E713529A54A419A0B6A9C70D24841E2ED5B9319A54A419211B7958AD2484189647A4D09A54A417B09328990D248416E05CFB205A54A4144340ABC98D2484113278BF0FFA44A41EDF0FEC2ADD248418C2ACFB8F0A44A41CA61CDD7CED2484153E86286D1A44A419E4D9229E2D248418A3F2CD2BFA44A419E62EBA5F6D24841E7F9F674A8A44A41FCCE91890DD3484166B5E15284A44A41397A4E0C27D3484185EFF9CA50A44A41FA10565D32D3484136DF19B632A44A41D952064A3BD34841580A41C012A44A41C3A615A340D348410E8CC119F5A34A4164E5BF0A46D348413E66B792BFA34A416D2730E346D348417495855B89A34A4175D196FB3AD348411C2EA66651A34A4121F66DED34D3484173F1DE5D2FA34A418081302632D34841562DCD2B1FA34A41F2003A132CD34841F06B3F490FA34A41D361C3D423D34841B8D8202E0CA34A41E5A5F35410D348419DF19A9A00A34A4125B85617FED24841842A248FE7A24A4132E00833F0D2484162818E83C4A24A41619CF01DE8D2484157115974A9A24A410E26A95CE0D248410A00A8207EA24A41ECC29321E1D248419E64CA1376A24A41F672B5D6E5D2484116A344ED6EA24A4154FD2D5EEDD24841822984FD6DA24A41210DB18FFFD24841030E8B1160A24A419AFA3A8A00D34841EB71194F42A24A4184C47679F8D248419C261C2814A24A413E82B05C00D3484113CD2302F7A14A41E48A08F205D3484140891454DCA14A41B8D05D2306D34841ED66D40CBAA14A411A5DFAF900D348411ED17A8A9EA14A41462EC95B02D3484195DF537778A14A41B8351C08F6D248412FB601DA23A14A41BEE695C2E5D248417447A915FFA04A41982B0536E2D24841A2232DFDEBA04A4189A68C4AE2D24841FAE42F44DDA04A41771B8366DDD248413D572772B5A04A41C45ECCE9DBD24841FC2584F9A5A04A41A1B671D1CDD248411BC1D7E591A04A41096344D9C4D248413B4663CC8DA04A41AA79A9D3BFD24841637F41818DA04A41A8898888ADD24841CAF1017F99A04A41D9EEDC8FA0D248411CAE81A3ABA04A419625C46F8BD24841124FFA11ADA04A41337C662C7ED248413BBA00D7A9A04A41BEAAAA1F7AD2484125EEB4549AA04A41B02897DC7AD24841316A46728FA04A414C88415578D2484180AD903278A04A4167AC845288D2484155CBF1CF68A04A41643A127491D248410CD7995A66A04A41E8A26B3B9CD24841A38BF92F64A04A4152860A8FABD248419C44D80B69A04A41AD3DA6D1BBD24841E0AE900D71A04A4176690CC8C3D248417DC7528474A04A410C4906EECBD2484144C0A5C870A04A41596FA0D4D2D24841249089596AA04A418F3FA45DD8D24841DE4C23035FA04A41D5A6DA73E3D24841CCE3FE7752A04A4196C8D87FDDD248415DD9784950A04A4172BD2F6AE5D24841C9D98CC93DA04A410F3708B0E6D24841690E5DCF3AA04A411AB6746BEAD24841E97ACC6F2BA04A41E2F0784AEDD24841A6A727471EA04A41DED10B2EEAD24841C9290C6B12A04A41D7FB750CE7D248418EF102870BA04A415891FB58E3D24841E4587B7305A04A418CE7583FDDD24841266B7CC305A04A4190F3BE96D1D24841523CC3510DA04A416124B3DACBD24841848C2D0912A04A411877BCE6BFD248412C805BDB14A04A411DBF13F2B9D24841DF7AB3710BA04A41969A36DCB4D24841D551CCFCFE9F4A41D4A4D2B0A1D2484184BBA3E3F99F4A41C9C316EEA3D24841181F7545EF9F4A41F2DE1A2AA6D24841C130BCA8E49F4A41AAEB5A3CA7D248419E2A79FED89F4A419A39D233A6D24841770D9EA6CF9F4A419F3034A8A7D24841F6EA6E91CB9F4A41EA651308ABD24841BA82A289C89F4A415C0F2880B8D24841CBD5C4A7CD9F4A41F248B8E5BFD2484176F628A1D39F4A41191E495BC8D24841F99702F6D59F4A41DB0B9E22D0D2484182CCB076D89F4A41F359CE99DCD248412380658DD79F4A41028BCCF9E6D248417C6B3A9BD69F4A4103CF2F0BEBD24841E09D60D5D19F4A41762674FDEFD248415B9E4EC0D09F4A4164643391F5D24841B1AE5DC9D39F4A415BE08BD8F6D24841F5DD8130DF9F4A41E9183D2AFBD24841AE1B4E10E39F4A41FE061A7602D348410ABD0559E49F4A418836C73909D34841506ED112E69F4A4191CAA32E0DD34841B4554BF2E09F4A41A6FFD0A713D34841E5808B77E39F4A4148D51D9C11D3484178F2BD1FEE9F4A414FCFC6D715D3484108980A99FF9F4A41506B26FA1AD34841492C06030DA04A41346C38462AD34841C626709A1AA04A41974288DA33D348412EBF6E261DA04A4124C268E93CD348416BB9DC831DA04A41B6BB815748D348413D14E4691BA04A41066A5AFF50D348410DC23D211DA04A41B6D7C6C259D348413F1BF1781AA04A41EF1E83C85FD34841BFE37BA418A04A41020CA99C69D34841C0FA6CDC17A04A4162BDEF296ED3484164FA352916A04A41426C3A6371D34841829B153612A04A41F1AC37D17BD348413A25C03B12A04A41C88B7A178AD348412016ECE316A04A414210572593D34841140FCC6E13A04A4138BEE93D9AD34841E91746B508A04A412109CC3D9BD3484168C2E71C02A04A4116DA4E339AD34841B5DAD055FA9F4A41C97087D091D34841293A8A9AEE9F4A41B4C49ADA91D34841C01B05E8E99F4A41B58B63DA94D348413866CD05E69F4A41182ACCA89FD3484194247291E29F4A4107E62EA3A7D34841079BAB11E99F4A41307233C3B0D34841E3214393ED9F4A41B8DDE428B6D34841A9ED03A2E79F4A41578318E9BAD3484164FF1360E69F4A41F38B81EBC4D3484130034AF4F39F4A41E3148324C7D34841747F9EECF29F4A41C0BD0EACC6D34841E0901EBFEA9F4A41C62FFF41CDD348413CC4C3F8E79F4A4127F90FE8D4D348419377730DE99F4A41AAC516BED9D348413BE52BEAED9F4A41ECF4CFAADCD3484118CF090BEE9F4A41D75725C7E1D348412634289AEA9F4A41DC0F8ED0EBD34841FA602E23EA9F4A41B3B799BFF1D34841965AD10AEC9F4A411990CFDEF4D3484128B4CDA7F29F4A41F1C3203CF5D348415B7720FA01A04A419F3425CDFED348413632DBA309A04A41C962446D0AD44841214FE8400BA04A41B14DC2DC14D448416445270606A04A41A660CE6618D44841F0CCF93807A04A418084705E1DD44841D4A4B7C30FA04A41910C834A21D44841E7BB95F611A04A410FF9C95E25D4484143E0902711A04A413AD4B3FC27D44841B947AEBC10A04A4126EB16E929D44841B1A5459B0DA04A41D0FCFE782AD4484176AB352F08A04A411F3916F72FD44841FB1323F006A04A410998D4903BD4484153E753D61DA04A41D0CB0BEE45D44841A01A173D29A04A419397CD5E52D448416C4937863EA04A417688AE7B54D44841DC97FC1E51A04A416693604855D448411BC17ED868A04A4138C63F0157D44841A93F921672A04A41A3CF933659D44841E1B56FD775A04A41B0229E115ED448411CF70FAC79A04A411C9AC0EA6AD44841D7BC12827DA04A4109832C5774D44841D09F1CA67FA04A41E446351376D44841B70AD91776A04A41DA7210AA8FD448419C081C4E76A04A41F8AE65E78ED44841CF2E40CB8AA04A417E67BD199AD448418FAB0E1397A04A416E3F1CA19FD44841C0911FE89BA04A4136E9D819A7D44841DA172979ACA04A41C8EEDADCA7D448419FD8285CBBA04A415BD591F2A2D448417AC782D3D2A04A417F0CD51F9DD448410C9FFCA5D8A04A413E2A936A9ED44841BF1809F5E6A04A418218ECB39FD44841EA21C242F5A04A4103C6D641A8D44841DF81AB4C04A14A41D9CB211CA4D44841B14F5D1815A14A41906C0E3498D448418774B44926A14A41FF22149E8DD44841BEB3C3C630A14A41BC060A2583D44841E7C423793DA14A41F847F5E880D44841DA3E311748A14A416C7DEBBF82D44841F499A85D56A14A413A0D819980D44841934FFFA262A14A41C8A1A8727BD44841C00079A36AA14A41BD6434FD77D4484113322A1C73A14A4116AC28307BD44841FBBC3B3C7BA14A41A2C5BC9283D44841A2E08BF786A14A41B6094A9C85D44841DCF59A1A99A14A414A812B9981D4484180DA2599A1A14A41A6A7CA7C7BD448416709BF77B7A14A41361ADDB86BD448411E49A668C9A14A413EF45C8954D44841FB43C35DE2A14A41FF9F702543D44841424CBEFEFFA14A41D3ADE28932D44841481B695817A24A413476B29232D44841FD8F0F8F2BA24A41E9AAEB143DD44841E982E69E33A24A41042CD6B64FD448412DB05DB138A24A41D3D2D63153D44841933D5E3435A24A41DD0B608074D44841521455B832A24A4163DD5C757AD4484131F8B4E22CA24A41B51A81B083D44841B910958A28A24A411FEA76E88DD44841175F823027A24A413A18007C92D44841482158B829A24A41664B498D93D448411628836036A24A4119DD2A49A0D448416122229737A24A417DC5FA69A0D44841788837C146A24A41F41AA7FEADD448419EF8BA6647A24A4114EBBD3BAFD44841F5B65A8639A24A41309C2552B2D44841C854BDE631A24A41A21C7ACCAED4484191A0CFD328A24A41944F5267AED44841C140CC6821A24A418121DACEC8D4484132C45EF5F0A14A41F8A819A7CED4484113B3D396F5A14A412411352FD1D44841ED52B57306A24A41C9B9D556DBD44841DCE4CC0F1CA24A41879AA973E3D44841BDAB670E21A24A412A67033BFBD44841287981F117A24A41FB570D1708D548410677547A09A24A41FA062E8009D54841E0AE7E2004A24A41B0E2EF720DD54841E2010304FDA14A414C8E0DCE0FD548410A05F795EEA14A414F001DA20AD5484108B4EA84E0A14A41662DB6080DD54841CBD35BCEDDA14A410809B90211D54841EA469B6DDDA14A410EDE174714D54841145A50C8DEA14A4109DC9FBB16D54841798AA05DE7A14A413DD130F315D54841F08786DEEFA14A41961FE44211D5484113C2B5A803A24A416C92941915D54841048E29B70AA24A4142E40B951BD548417283EE650BA24A41FD91844D2AD5484158B20E1A11A24A41CA3EEA242ED548410B58C06D19A24A4108E1B13730D548412C8B873E1AA24A41C2C9D71533D54841B55F0B471AA24A415D35CF3A36D548413D725F3F1AA24A41C8E14A0237D5484136D6736B15A24A41812014513BD548411E7DF15515A24A4108D207E042D548416488BDDB1BA24A41A360EF984AD54841B0C6993B29A24A418C3F216F4ED54841FF5B1EFD32A24A41BF0BC9E254D5484127EF3BF82AA24A410C6BA52F5FD54841F643FCBD25A24A41067EAA9962D548410D3A2F9A24A24A41E41A0C3F67D548419C9AD3212BA24A41B2B5847762D54841BEE8D9AD37A24A41D8A493C167D54841154837E34AA24A413EE1EFAF77D54841ECE42A5757A24A4157F3DC0A7AD5484190F2ABC264A24A41E18F352286D5484137EEDD246BA24A41E18953B390D54841EFAD5CED79A24A41FAD573E78BD548412F652E4781A24A412D5E863084D548412E1EADA482A24A41775BA11177D54841C97AA00285A24A417FD1A24E66D548410858F20680A24A4190CDC7D262D5484161E5BEC28BA24A41782C2B706CD54841676B686494A24A41204A8D5B6DD5484172D5EF869BA24A41BE74E9BE72D5484178CF59FDA2A24A419F309A097DD54841C4952B8BA8A24A411F85E6E482D5484109690F53AEA24A41D32F27B8C7D548412555A985CCA24A414EE9DC36D1D548411B42D313D0A24A410C61D9E6D6D54841455B298DD2A24A412D104D57DBD54841730A2321D4A24A414DE6309BE4D54841762D4890D8A24A41688741C8E4D548416A25A901DCA24A41E788A93AE9D54841708DBA10E0A24A4110AEA31AEED5484139BB043BE0A24A4178E86222F3D54841E4A8D01DE2A24A419B86A84FF9D54841BB92C029EEA24A41EFAC2927F8D548415B7C6D18F4A24A4137BBA171F4D5484192B5765BF6A24A41520F8FCAF2D54841FF495EBAFAA24A410F117F5FF3D54841C78576F301A34A41E8EC34FDF4D548416585F9CF07A34A415C65485BF5D54841FF18F30D13A34A41994E991BF8D54841B5E35D2121A34A41ACA4A7DA45D6484170C3D3D607A34A413AF0DAB44BD64841A166D0EF05A34A4199572B4139D648414C3A1B2FE0A24A41AF7993842ED64841F5016F37CAA24A418BE1C1A925D6484117688403B8A24A416EE0DDAB20D648419E05015AADA24A417D7305671ED64841E06A8B59A4A24A41C885F8B323D64841A4D06B6E9DA24A4180C956F526D648418F8F972F99A24A416A170B5C2CD648410E4B56EE93A24A415D6F2DC828D648411A576AA48FA24A41A0F5B8D51CD64841615D37109AA24A41E689E7BD17D64841357A84BA9CA24A418C5D60F411D6484100DC5BA794A24A415182C3D515D6484108C14E508CA24A412987E63A14D64841DB14A16488A24A41E48E02A012D64841F89048A582A24A41A36B8BDA10D64841292AB9D07EA24A41225372850FD648412FA5260E7BA24A41C1C9C79D0CD64841784E6EA175A24A41FEAFA0F209D64841667CA9EF6DA24A41879D060804D648410807F00061A24A41A447D4A1F8D54841C9D361F752A24A4185181D82F1D54841BB11DD3B4DA24A419565F286E3D548417EBE21FC46A24A4138681E79D5D54841C27C4FDD3BA24A417FCB7B9ECED54841FA3E6AF830A24A41B4729321CDD54841B47CE48125A24A41007AAF30CCD54841D5DAE67B20A24A41AA4B2D9BCBD5484195882C8218A24A4132B6E2EECAD54841327EE1CA0EA24A414A33BD4BC9D54841D9BBCFE6FFA14A415CAD464ED1D5484125BE37B3F4A14A415623417CECD54841CA9F59A5E7A14A41E424268202D64841885CA86BDCA14A411D5AE0741AD648413702CBCACDA14A413CC7FBE329D64841057366F3C3A14A415ECF9D0532D6484136F13661BFA14A41F530B12B37D64841A8078E7BBCA14A4130DDB3A744D648412870AB37B2A14A41403126D457D64841C7F8AF18A6A14A41C101168F70D64841F65BCC7791A14A41D247922B8ED648410338B27B73A14A413CBD1EFCA0D6484120843C7662A14A4181F79CBBA8D64841BF67E2745BA14A41AEDE96B0C7D64841B0BE55B73CA14A418B706A74D1D6484163D04B4A33A14A4160039806D5D64841AE9A5CD72FA14A413437F7C3DCD648412C96125E28A14A410A6DA6DCF5D64841D5554F2310A14A41A1A19EF600D74841B00595B901A14A41EEA401CE09D74841D5A62A3FF6A04A41FABB946227D7484138B1DACADBA04A418C615E0A35D74841431F6E08CCA04A4199AB135348D74841A11E56BBB2A04A414C8BD0C966D7484117A7BE3082A04A41624C481271D74841998272026FA04A41FBE60E5980D74841F8E5942F56A04A41A35D624391D748417E897C4042A04A41AD57B6DFADD748419426937613A04A4149246343B4D748411EE694BB05A04A416FEFBE7DC2D7484166173ED4F09F4A41AE5091E6D6D7484133E656F6CC9F4A4169D7041FEAD74841EBC8ACA6AF9F4A4171B90B51F4D74841559121E39D9F4A41558BDD1F2CD84841303910A03C9F4A41C7F5917547D84841FB13F247FA9E4A41F4CD79C54FD8484105010EA5E69E4A41E699A76963D84841FFA672B0C69E4A4130207DD272D8484186C8D6F3AA9E4A4160E689FE89D8484192F8A0837E9E4A41E01518CFA2D84841AF49C56C499E4A41CFCD6DAEBED848411BCD08061B9E4A418A56AC85D3D8484132D82DBCF79D4A41FAC765CFDED84841CE897EB4E49D4A413FB57E99F0D84841BAB01F8DCE9D4A418F59EAADFCD84841F3577338BD9D4A4183EE291F06D94841B5D6F428AF9D4A4142DDDA8409D94841A6FA065CA69D4A41C0270EAC0AD94841C0409F75A39D4A41AAE9AF9A0BD948418C92EA1AA19D4A4149E1076A0FD94841182BDF59979D4A41C16EC53B1AD94841A8632865669D4A419092532122D94841C3E24BA84E9D4A41E6AED8CE2AD94841FCD808B12A9D4A41884BF3B236D948416D2F3F87019D4A41379D7E5453D9484121F3E26ABA9C4A4144D8EB176CD9484166B4EB25719C4A419628650B7CD94841A22F72813C9C4A414478148B8FD948411393EF2F019C4A4116A532949DD9484198CF22CEC79B4A41C4577B11A8D94841B438D379929B4A4108110B44B3D94841508F988A659B4A41', 'w19799017', '19799017', 'way', 'coastline', NULL, NULL, NULL, 'Malad Creek');
INSERT INTO "public"."mumbai_natural_coastline" ("mumbai_natural_coastline" , "full_id", "osm_id", "osm_type", "natural", "name:pt", "name:mr", "name:hi", "name") VALUES ('01020000204B1E0000DB01000008110B44B3D94841508F988A659B4A41F2CB920ABBD9484137AB1139169B4A415D26B171C5D94841C16EAB8ED19A4A41F2969A81CDD9484158C33D5C829A4A41ED139BE8D0D94841666BE1B6659A4A41EA8EABC2D7D948412AD4601B259A4A410109DD13E1D94841187975ABD3994A417F2D6061F4D948412A8CE4167F994A4100ED2D92F7D94841DE223F676B994A4195DC2827FDD94841F4B212EE56994A4153E7581E0ADA4841964E0DD421994A41AC280FA815DA48419B9D98C5F7984A4198518F7624DA4841178661B9BF984A41AEF04E372ADA48415001640899984A41FC3CF31431DA48419A6D1D8272984A41D26BC6A137DA4841716263ACDB974A41EC6653503BDA48415D379CBA7A974A41D6D753AC2DDA484114E2F2DC07974A41CF65A4171CDA48418E4C6E3EBA964A416CF499210BDA48412446CE487E964A4141AD2F55F8D94841F78F176A4F964A41C88CC080D6D948414ED17994FF954A41ACD91EB0C3D94841C8D7D844E6954A41707CE4A1AED94841BAFE6EBED2954A416C9631879BD94841BF4288EABC954A41CC925BE06FD94841840EAD09CA954A41C92B565C67D94841353D769BD0954A41765F11245DD94841A6E3E01BE3954A41E0DF74A75AD948416081993222964A4118CA5D0D56D94841E423CD3D22964A415399A6D557D948415C79B433DF954A41610F309663D94841312BF43ECC954A41174721769FD94841C6B6D8F0A8954A41F1E98BFCA2D948417CC46A32A1954A41580B8B60A5D9484120B0DF0396954A415D206C95A6D94841BBFF90FF84954A419E8AAB94A7D94841B3B1DCFD76954A4184742BF3A4D948419CC81FE166954A4167036834A4D948415B03B45462954A41CA8DC2CCA3D94841162A8AE15F954A4140AA6661A3D94841849D9F595D954A410C7CC0189CD948412B265A924B954A41BABA976599D94841181C8DFD44954A4139DB211599D9484179B8363744954A41A29258C293D948419F8DFB243E954A4177CD0E6E8BD94841D781B8A434954A41B598EAB982D94841322EDDB62A954A4146E36D0473D948413552D2561E954A419363ADA267D9484198C4226015954A41DBE22A7A62D948410AFEB00D13954A41033CF14D5ED94841BB8B0E2511954A410280CFFD1ED94841703EA8D769954A412661E0411ED94841A818454669954A41F372E20E53D94841B8A1E0D21B954A41F308885065D948410334AA12EF944A411552ED096FD94841D772B889DE944A41D70B8BED6FD94841C4607E02DA944A4150BD643D72D9484172DE0133CE944A416EF02D1377D948413F91CC89CD944A41E4A5DC3A7AD94841C4D8DEECC9944A4165DA4C6378D948410C6EEBCBC3944A41B09B629674D948413876B87EBD944A414DA8DA895ED948419EA1DCE9A8944A41E140B5FD54D948417615F433A4944A41EDCCC1FD4AD9484159DCBA439F944A41D8497A5446D948411ADA24D89D944A41DE344EB645D94841BE6DCD519D944A4193A7F5F13FD94841AA778E6A98944A41EED0D0CB38D9484125FF075792944A412C52F1EA33D9484110D9B63C8B944A41C4C6FE762FD94841D71E31C084944A41E4174CB92DD94841B216329F81944A419B67B2772DD9484128896B1682944A419D91C197EAD84841401CD3B7B0944A41E4362710E8D8484104D238C8AD944A414C8F3BFD24D948411E5B222D82944A41F373C4C02BD948413128161F7C944A41575F79CA27D948412CD550F973944A4103BADB5123D948414551D6806B944A410C1C022D1ED948419EAC6B0A68944A41CC0A584111D94841C4185A2060944A4182692EC60AD9484111FF452F5D944A41B312DE8E04D94841E14295935B944A41D8BD3B89FDD848413C66085554944A419E7DD1EBE1D84841D931BA6186944A4174AD5EE3C8D8484165AA2EB799944A41F25C6860BED84841B09B9B95A5944A41FAEA0529B8D84841B67FF6E9B2944A41A698699DB7D8484154F4FE5EB1944A41806F1C68B5D848414243C314AB944A4162E0558FB8D8484194C418DCA2944A4134DA9704B9D84841205BC37CA2944A41161F8CD2C6D84841A446623C97944A41717266C7C8D84841E1F74BA495944A4104BA88CFD6D848413A9D027589944A41EA2C7D32DED84841E750CC1B83944A41806C3DDFE6D84841258AA73F73944A41DE6EF2F2E0D848411BAC76AD6A944A4149E55E68E3D848412CF9D33866944A41A3FCB9C6E6D84841C012F95F5F944A4102A6FF45EED8484165953D7B60944A41F79F9E71EFD8484110A8FEA760944A41B7494E2C04D94841EA99B52543944A411495AD91FAD84841A52941D64F944A41B5C1532EF9D8484148FE48E250944A41231B6A73F4D84841E6E12ECF4D944A412072EB9CF4D84841705EE44738944A41809660A1F4D84841CA48F3212D944A4128ED0DE4F6D84841EA97086F21944A4186BACDE4FBD848417228B11413944A4118FFD16103D94841213E7E8E0A944A41182F655206D948414C988332F5934A4124E6CAB606D9484131C5E106DB934A41880B755B03D94841D24E0629CD934A411057006C01D948419301D1A0C0934A4193C2D5C6FCD84841989FB2BFA8934A416238E7CCFDD848414531209796934A416EC03AD7FED84841068AE49A87934A4193BFF9B8FFD84841511F14EB6F934A410B92573FFDD84841A4EAF9FC57934A41837E9AA1FDD84841906293D654934A41C6114DC0FDD8484166D583D553934A4171D644F401D948416513DD5031934A41F378DEE607D948417337342A10934A412E9FAD3213D948419241CC69E6924A4146A4BA6E14D948411EC675D8E1924A41D899856822D94841D8297B70C2924A4154351C2B22D9484120739DD1B6924A41D2C3D97D21D94841ABB41753A8924A414A5DFCD218D948418789E1278F924A41539C82910BD94841E02A50CD93924A41C5B9FAC1D9D84841CC0E46A3A6924A41055BC9F6D6D848419FBC63579F924A41E07B7D5F16D9484182483D828A924A411F8941EC12D948419FE5CEB951924A4181FE17C61AD948415EDEC9732F924A41E79EE6CE2ED948413AAE853901924A416734149432D948417D52F50EF1914A413C8AB8BF34D9484176E7E2F9DC914A413097BC4C30D9484163A22A9EC1914A414A8CBA8A2CD9484184805099B2914A41B4CF105122D94841E76AA9DEAF914A41C881686C1ED9484174E7DC66AA914A411C3AB87C20D948413435CADE96914A41337CD3D41DD94841440AD4AA8B914A41CC0168D112D94841939DC9247D914A412624DB682BD848418D7964CFBA914A41E44A2FE525D84841C7FE2BCCA9914A41EF304DAE0CD948419BDF20E470914A4116CB5A2805D948417A8E150854914A415CAD34F8FFD84841CCFE1C094B914A412FC3DCC5F1D84841B3BCD43D3D914A416F4E73DEEAD848410298E29830914A415302F673E8D84841AF2D93261B914A410E99A4C1E6D84841252E90B100914A41FA80DA0DE0D848412809A31FED904A4175AB56CAD5D848413C899D68E1904A4167211198CCD84841F644F8CFC5904A414C8EC4B2B9D84841BACC53C2A2904A41873DABFBB4D84841BBBDD6399C904A41F4BA78BEAFD848415BE3A1CF90904A4143EABCF7ABD84841D8DE79AC89904A41BD2C4201A6D8484195786A7080904A41DB482883A3D848413B5F2F8B78904A41D9E3A519B7D84841F049CC7D6E904A41D87A0CCBC6D848411019EED664904A4106ED9AF8C1D84841FF21500F59904A416689AD45BED84841FC9752864C904A41A463CEE1BFD8484190729F9146904A41237E7A1EC1D84841A0C01A9B45904A416D50E3BCC2D8484169A0EA5045904A41E4C13CBFCDD848419FEAF87D4A904A41E1C2001ED5D8484132A401C447904A411CC737A5DCD8484167BA528B42904A41E96BADEFE3D8484157BE23C538904A4100B01E98EED84841E9B35CE32C904A41014FF890FED84841D0E41FB929904A41C8AA079010D948413C7CC8E414904A4197C0DB5116D948418AE175FE19904A4167D091DE1AD94841A6A5103619904A4134E55CA41ED948412050AB8717904A419CFB79D723D94841E7147C2715904A4193778AEC30D948418DC82F0309904A415E5F085430D948412723ECD102904A415654B2CA2BD94841D0257C1D01904A41A32E36272DD948418F652892F58F4A4180F9A78936D9484122AEDFF7EB8F4A41ECB7962E3BD94841F2BF9EA9DC8F4A4134C93CB244D9484167DAC19DCA8F4A4178F7214248D9484129EC5D72C18F4A412C4E99084AD94841F3E5A2E1B58F4A41AB4D8D7649D94841845976F1A78F4A41D67AFD6448D94841481D595F988F4A416E4948A943D94841F87AC16A8D8F4A41213526B235D94841E07C6790898F4A41AB4D175421D948419FF2CDC3858F4A413DD766D90CD94841E2D57E847C8F4A415A05F4C3F6D84841B6BBF27B6A8F4A41CB2351D0E0D84841095FEE83478F4A410C65C216CFD84841B2653E2E208F4A410B93C439C8D8484126891399118F4A41A57C20FFC2D84841B42CBBAFF48E4A413E8017D0BDD84841D4B902E7E08E4A41F2DA18D5B5D8484183B941C5D78E4A41A131B136AED84841B0C27CBFCA8E4A41AC4CEA35A9D8484105AA3168BA8E4A4108729E45A6D84841979D6F87A18E4A41ED55CC26A1D848415E330C61948E4A41596FD88D91D848411B1E3EC1838E4A419CFF410289D8484144E815736F8E4A41735A512667D8484158F1B2A12F8E4A412440A8D344D848418BB7677AE98D4A41BB75F62C37D848412284BE10CB8D4A41B5442EA62BD84841626C2EABB58D4A41AF934C4C21D848411A759A74A18D4A411AFBF1A015D848414428BB28898D4A414771828410D8484187F1E60B7F8D4A4157A34F7E08D8484100F116B6778D4A415492A14401D848419E70CC69728D4A41BEEF9E66FDD7484163DEF155658D4A411C88EDBAFAD748416FAAE8DA598D4A416470C349F3D748417053B5323D8D4A41DDC0DF9BEBD748419346D361218D4A413629AB02E9D74841664C626B178D4A41D73A74B8EED748413E6230620F8D4A41DF86ED56F2D74841286FB647048D4A410EED0D9BF5D748414DD55FC3FE8C4A418C0CD220F8D748419E9DCCEFFA8C4A41A677751BFBD74841B1FE7DE4F58C4A419D084606FBD74841C6457327ED8C4A413E8B4555FFD7484165197A25E28C4A419CF013BDF8D748419E127C56DE8C4A413A55C15CFBD748417E57C6C4D48C4A414E66B43903D84841E5A4E40FD48C4A410C5063830AD8484192998C3ED88C4A4161EB84A81CD84841A74D0528DC8C4A4179575C5B2DD848412D80B148E08C4A41533C22B135D8484174A2C8D4E28C4A417FA8131B3DD848418537CB02E58C4A4160F7212E4BD848412BD9F48CE98C4A4176EF856259D8484188535D52EF8C4A4104F7A55C73D848418B7FF7A1F28C4A41C8296FF488D848419E17DBA4038D4A414BA14EB29BD84841FBF08F83108D4A41FCFE8BA8A6D84841A3534E59158D4A41F1E7D0AAAED84841D1F46F3F148D4A41CBDE0780B7D84841DC2928700D8D4A41CADEED34BAD848418E68DCC2038D4A416137880FBBD84841B4D42496F58C4A41F4896443BCD84841CDA1B2CDD38C4A4184A51491C4D84841B89A8304C98C4A41ADE93E86C4D84841EACA5B92AF8C4A41A753735CC9D848417D7241749F8C4A4184AB8E09CFD84841B2686AF28A8C4A415E9A121AD1D848414F0362CC878C4A417A9A348BD5D848418262BF36868C4A41A09DE2D2D8D84841D1405734898C4A41E8EFE8DFD9D84841978F0B708D8C4A4166417282D7D8484160F45793958C4A41CC482B83DAD848414240DEC2A08C4A41CA24C622DBD848417C068D20B58C4A41D150EDD9E4D84841D45CEA84B38C4A41B2FE521FE7D84841CDE6733DC18C4A417895E832EED8484114A821F5BF8C4A41182ACE33ECD84841D4314FF1B28C4A415A8A589AF5D84841C4354CC5B18C4A4179231F64F7D84841C4D234B8C18C4A416E90794F02D948418CA48DF2D88C4A41E240E3350CD94841D3F171F7E68C4A41AB6BC1FA18D9484194E18DD8EB8C4A41CEBDBF6130D94841FA2FC737EF8C4A4114DD0E974AD94841A6786CFFF28C4A41DC6A7DFD5ED94841C512DD40FA8C4A41C9531C056DD9484124B3C358FF8C4A412D2B3AEB7DD948415DE59616068D4A412112B5E796D9484188D24069158D4A41F21F1B55B7D94841F2962FC7288D4A4199AC6882D2D948412D90E76E378D4A41DECD7672E1D9484143C940DC3D8D4A419C807F70F4D948413CD10AC6448D4A410CA87D980FDA484166A2E4F84F8D4A41F61530BD22DA484162E672BB588D4A4180CB9A4132DA48411012FF7F578D4A41EBA1F65A43DA4841B8A3550D5B8D4A4162B1ECEC51DA4841F4C30065618D4A41EF4BF4B45FDA4841CF366A296F8D4A411742111869DA48419C3FDE167C8D4A41046EF27F6CDA4841A33F14848A8D4A4127046DF26BDA4841B3365463978D4A416CC3F36F6BDA4841DA172C2CA38D4A41BE93294801DB4841262F7A9A328E4A41EF6D618324DB4841D44E0C34478E4A418886A5263CDB48416A83AF064F8E4A419F6B514B5CDB4841CBC4EE13488E4A41F050DD2A7CDB4841E09A41B0448E4A41191DCC1F98DB484129AB5DC24A8E4A41360884D8AADB48419AB9DF114C8E4A41201FA709BBDB4841845164DB3A8E4A4190EAB85EBADB4841C51E984D318E4A412154EBEEBBDB48416AE45F6A1A8E4A41DB508F6DBDDB48411FCA2686048E4A4134552262AFDB4841BA778119FE8D4A41DFD4467CA2DB4841AC9C57BBF48D4A41165A40C59DDB484105E8C7EFEA8D4A41A82313D7A5DB4841C5098665DE8D4A412680F342A8DB4841730DFF37D08D4A41E7B35875B2DB4841FAFD1E22BB8D4A41225FF57DBADB484158D4B0799D8D4A41A87894B5C5DB4841686DCAF0818D4A41BAFC1F00CCDB484155DB41DA778D4A4108905572CDDB4841F920860B738D4A418614068DEADB4841EB0E48FF328D4A4127CEC807F4DB4841FC8AAC801F8D4A410B1F1A0709DC48411ADF8F54F48C4A411F0E5E670ADC4841B7C4E101E78C4A41E675008B07DC484106CC6772DC8C4A4122F9945F06DC48419A440241DA8C4A4156853793F6DB48417BEF1AF0C98C4A41F0EFA918EFDB484152A5EA7EB28C4A41542806DDEEDB48419217F0568A8C4A415BC726CDF1DB484186C9ECFB6F8C4A410DA1CE17FDDB48417E34DE5F358C4A41DAAFC7C300DC4841153750D11D8C4A413D7C1F8502DC4841DDE79BAC098C4A412A7A1F9DFFDB484195227D31078C4A415064288BFFDB4841CA9B70A8FD8B4A415B81B5B500DC4841E4B89A17E68B4A418E77B52E03DC4841BFFF4DDFC18B4A41D219054301DC48411F9D7E60A48B4A41E47A56F0FDDB48413290D489868B4A41DAB376A5FBDB4841894C13E4698B4A4103C042F8F5DB4841C58C36756A8B4A41CAF8A6EAF3DB48411E497B6C5D8B4A41564DB543EEDB4841314B7565408B4A41D2A732E7ECDB48416C1D38A3258B4A41679E0EA7EBDB484151E83C8D078B4A411A2F5DB4E3DB4841FB112D0BF48A4A41060DA21DE2DB4841FFEEAC7CED8A4A4147445C1FDEDB4841BAED338DE08A4A41FCC744F5CCDB48410DD7FFDDA88A4A4188A4A325C7DB48413E06A40AA48A4A41E260CE1ABFDB484180FEC5847B8A4A419B781EF3B2DB48418BCC4665678A4A41F67C4BD3A7DB4841609B709F5C8A4A41ED2B98EEA4DB4841096FB491538A4A410BEAB4B9A7DB48415DBB8B13518A4A41445A61C88FDB48418A0337771B8A4A419ECEC87E6ADB4841167F351CD7894A416D56E7B642DB48418510B74090894A417A6CA7082CDB484174E98E626F894A419ED2B29824DB4841A6DEF72C63894A4100F3D6761EDB4841FA94BEB365894A41A45E354217DB48416B5CC80B5E894A411592CF8412DB4841AED9ABB655894A4194C8B8A602DB48411D3D9CB33F894A411A6DC9C6E7DA48411E453ABB1B894A4170E83F62D2DA4841EEEC6C0501894A41DC764715BCDA4841D0F9FC22ED884A41C6683A838FDA48417775363AB8884A41A714693268DA4841AED01A9F98884A411ACA2CF837DA4841E932FFA66F884A41F02DA25F29DA4841C1705C4063884A4103313DEDF7D94841383ADF2A44884A4187EC7FBED0D9484162A014F329884A412EBD4D58C0D94841D60ADFAC1C884A4140B1E14C95D94841967CFB7705884A41AED0589A75D948410A878014F2874A416BC6A6DE4DD948414EA9403EDC874A410CF30E5132D94841A589C4CAD0874A414C73BAFF19D94841C0250CC9C3874A41C65B7EC8F4D8484154D7A8CEB4874A4111C49CDBD0D8484145FD4AC3AE874A41DD0EE947A5D84841316AD6D1A8874A41E03EDE2697D848411B1D6053A7874A416E05E3CD90D84841F7AA3F44B3874A4100D04E1C77D8484186786BEDB6874A41A35FA92F5CD848416B503112BB874A415EE737E345D84841729B7538C1874A412A75C80833D848417C839692C6874A417AE8C81E28D8484106C39E2CCC874A41C02EA9A31ED8484115C9394BD1874A414F45739C19D848419FF300C6D7874A4145CE4C7013D84841D3CC9172E1874A417D2E61BB00D8484129A09236F2874A4162A08092F1D74841BF287D7609884A416DD04B08ECD74841876B210719884A418AC748E7E7D7484180C1A96723884A4130F2BA02E6D748413E2A812932884A41720CA454E3D74841459F803F47884A4120EB4A90E1D74841AD68611D5B884A41E3CBB9B7E0D748419C6358466B884A41CECE0355E0D74841DC5DBC2778884A411295A842E2D7484112DC07B482884A41FCD906CDE0D74841E40D6AB791884A411785D6CAE1D74841585BB9C794884A4120154903E1D7484167B3F1399F884A41D623DAE9DFD748418EAD2FCFA3884A410861F895D8D7484148D315E6AC884A41BA1917FFD4D74841B8715BF8B6884A41947D9640CBD74841496797FDBA884A41006B9F28BFD74841960BE533CA884A41F7530CC0B9D7484136811C2BD8884A416D83303AB3D74841691E17A9E0884A419D9201B5ABD74841B5E4D4B7E8884A4127603A65A5D74841FFBB9859F5884A415A56EE61A2D748417558BEA606894A410710D6E899D7484150B215A314894A4182A1D10792D7484190ADFD4823894A41EE224E658DD74841100EFBCE27894A411CA8F4A488D74841DB0FE9E42C894A41D627979881D74841143AC8F635894A41FEBC69F271D74841138D356142894A417E068CFA60D74841116953574D894A41E7B8975F59D748415D8DA89A5E894A41B069E9D950D748412DE3209F6B894A410FD3C7CB4AD74841994AA74B72894A41AE25C81341D748417D99E5E187894A418F6D0BF749D748412655A4B78D894A41BA1624B447D748414F1BD76592894A41E1F6C6063ED74841C59FD26C8B894A41BA55C6ED2DD7484167170B6AB2894A41E88B2E6D28D7484156609645AE894A41B6E9EF5127D748410D84B7D995894A41F55C912D27D7484133810B797A894A418400A5D629D74841B6CC0F4662894A41B267DB232ED74841422B4CBC51894A41EB40A0BA33D74841481909D341894A415C393E5B3BD748419E0369BD33894A4146AC263E40D74841A4C53B311E894A416AFBB42A46D74841E2D6419504894A419CF9117049D748416E4E9CDAF2884A4169F26C734BD748415FE9E034E9884A41B10985284FD7484165926D07E0884A41F957D1BE50D7484187D65A44D6884A41BA98BC3751D74841FA5CA706C7884A418C1A4D2F4CD7484180C5B6BDB0884A410AE909EB49D74841E7E637919F884A41268CDBB049D748416A5D08A095884A4152BDC26D49D748419BC5965B88884A41948AE03249D748419E0C5A7C73884A4144F3DE574BD7484175A8328961884A411B43202D51D74841BBEA83864B884A41A3076B8351D748414B74108839884A413041EC5B4FD748418639122C25884A41FD7CC1534AD748410E317E0A17884A41D4C59D4A48D748417BBAD44202884A4192FC00BC49D7484111355432D2874A414774068549D74841AFC3FA5DC0874A4130E0A4AD48D748411DD57542A2874A417059B67C4AD7484122573A388F874A41F4C0BB0C4FD74841795E311383874A4150079E6253D74841ED26623079874A41351231A859D748413143AB4271874A41039FA8AC5CD74841F1EAEC6970874A4163761A8362D748410C21F7E272874A4183C5A5A792D74841CFC981898B874A414931C8A195D748415D2F752C7C874A41A895EF794ED748419AEDC1755A874A41AE8D55D54AD7484135F837CB51874A415DB820C34CD748414E94197E46874A41203EDAA54DD74841AE7FF5DB39874A41219652E94ED74841B8DA0BC129874A417892587653D748415F505A1C13874A417CDD975F58D74841CFFA1CE200874A41A24A6CE85AD748416C4C8097EB864A41E4BAB4B259D748411CD5B4A0D6864A4168ECDF8C57D74841C124E209C5864A411C086B2654D748416AF90582B3864A414B443B5D4FD74841999F2BD0A4864A4163870B9748D7484151A1790F8E864A41D0E98F5A3FD748418DC568B87B864A4112455C1837D74841A569ECD46F864A41B187FC3E28D74841F901771C58864A418622FEAA18D74841FE86CFBA3F864A41B7507F0801D748414DB5E0EE19864A41', 'w113711202', '113711202', 'way', 'coastline', 'Bombaim', 'मुंबई', 'मुंबई', 'Mumbai');
COMMIT;
