<!DOCTYPE html>
<html class="no-js" lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <#if goods.seo_describe?exists>
    	<#if goods.seo_describe?trim != ''>
    		<meta name="description" content="${goods.seo_describe}" />
    	<#else>
    		<meta name="description" content="111医药馆网上药店是国家药监局认证指定网上药房|打造为老百姓服务药品价格低品种全|网上购药买药就选壹壹壹医药馆药品特卖网站" />
    	</#if>
    <#else>
    	<meta name="description" content="111医药馆网上药店是国家药监局认证指定网上药房|打造为老百姓服务药品价格低品种全|网上购药买药就选壹壹壹医药馆药品特卖网站" />
    </#if>
   
    <#if goods.seo_keyword?exists>
    	<#if goods.seo_keyword?trim != ''>
    		<meta name="keywords" content="${goods.seo_keyword}" />
    	<#else>
	    	<meta name="keywords" content="壹壹壹医药馆|壹药馆|11医药馆|1药馆|医卡通|111医药馆|医药网|药品特卖网站" />
    	</#if>
    <#else>
    	<meta name="keywords" content="壹壹壹医药馆|壹药馆|11医药馆|1药馆|医卡通|111医药馆|医药网|药品特卖网站" />
    </#if>
    
    
    <#if goods.seo_title?exists>
    	<#if goods.seo_title?trim != ''>
    		<title>${goods.seo_title}</title>
    	<#else>
	    	<title>${goods.goodsName?default('')}-111医药馆-要健康 要美丽 要时尚-医卡通买药价格低便宜实惠-国家药监局指定壹壹壹医药馆网上连锁药店</title>
    	</#if>
    <#else>
    	<title>${goods.goodsName?default('')}-111医药馆-要健康 要美丽 要时尚-医卡通买药价格低便宜实惠-国家药监局指定壹壹壹医药馆网上连锁药店</title>
    </#if>
    
    <meta name="renderer" content="webkit" />
    <meta http-equiv="Cache-Control" content="no-siteapp"/> 
    <link rel="icon" type="image/png" href="/web/img/favicon.png">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="/web/img/favicon-196x196.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="apple-touch-icon-precomposed" href="/web/img/apple-icon-touch.png">
    <meta name="msapplication-TileImage" content="/web/img/win8-tile-icon.png">
    <meta name="msapplication-TileColor" content="#0e90d2">
    <link rel="stylesheet" type="text/css" href="/web/css/commonNew.css"/>
    <link rel="stylesheet" type="text/css" href="/web/css/base.css"/>
    <#assign ui1 = "http://img.zdfei.com/"/>
    <#assign www = "http://www.111yao.com/"/>
    <#assign www1 = "/p/"/>
</head>

<body>
	<input type="hidden" value="1" id="goodsdetail-turn"/>
	<input type="hidden" value="${goods.id?c?default('')}" id="trun-gid" />
	<#include "/static/inc/version2.2.0/header.ftl">
	<style>#goods_detail_class {width:1000px;}</style>
	<script type="text/javascript" src="/web/version2.2.0/js/goods_detail_header.js"></script>
	<div class="search_nav_category">
			<div class="classify_find_category">
            	<i></i>按分类找药
            	<span class="classify_nav_icon"></span>
            </div>
		    <#include "/static/inc/version2.2.0/search_box.html">
			<!--商品导航-->
			<div class="product_nav_category"><#include "/static/inc/version2.2.0/product_category.ftl"></div>
	</div>
	<link rel="stylesheet" type="text/css" href="/web/version2.2.0/css/normal.product.css"/>
	<div class="bread-nav" style="margin:auto;width:1000px;">
		<#list listpc?if_exists as resc>
            <#if resc_index == 0>
                <a href="${www}${resc.id?default('')}/list.html" class="bread-column">${resc.name?default('')}</a>
        	<#else>
                <em>&gt;</em><a href="${www}${resc.id?default('')}/list.html">${resc.name?default('')}</a>
        	</#if>
    	</#list>
	    <em>&gt;</em><a style="color:#000;font-weight:bold;">${goods.goodsName?default('')}</a>
    </div>
	<div class="line_dot"></div>
    <!--商品详情开始-->
    <div class="product-box">
    	<!--商品详情信息开始-->
    	<div class="details-info">
        	<div class="w1210" style="width:1000px;">
                
                <div class="details-box w1210 clearfix clear" style="width:1000px;">
                    <!--产品参数开始-->
                    <div class="magnifier" style="margin:20px 0 0 15px;">
                    <div id="preview" class="spec-preview">
						<span class="jqzoom">
                   			<img class="pro-img" jqimg="${ui1}${goods.defaultimg?default('')}" src="${ui1}${goods.defaultimgs?default('')}350x350.jpg" />
                   		</span>  
                    </div>
                    <!--缩图开始-->
                    <div class="spec-scroll clearfix"> <a class="prev">&lt;</a> <a class="next">&gt;</a>
                      <div class="items">
                        <ul>
                        <#list listi?if_exists as resc>
                        	<li><img alt="图片" bimg="${ui1}${resc.artworkUrl?default('')}" src="${ui1}${resc.imageUrl?default('')}350x350.jpg" onmousemove="preview(this);"></li>
					    </#list>
                        </ul>
                      </div>
                    </div>
                  <!--缩图结束-->
                  <div class="share-interest">
                        <a href="javascript:;" class="interest-btn" style="float:right;margin-top:3px;" onclick="attention()"><span class="attention-img"></span>&nbsp;关注商品</a>
                        <div class="bdsharebuttonbox" style="width:145px;float:right;margin-right:-5px;"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren" data-cmd="renren"></a><a href="#" class="bds_weixin" data-cmd="weixin"></a></div>
                    </div>
                  </div>
                  <!--产品参数结束-->
                  <div class="details-info-text">
                    <input type="hidden" value="${goods.id?c?default('')}" id="gid">
                    <input type="hidden" value="${goods.abbreviation_picture?default('')}" id="goodaimg">
                    <input type="hidden" value="${goods.goodsName?default('')}" id="goodsName">
                    <input type="hidden" value="${goods.pcPrice?default('')}" id="pcPrice">
                    
                    <h2 class="product-title">${goods.goodsName?default('')}</h2>
                    <p class="indications">${goods.mainTitle?default('')}</p>
                    <p class="details-text">通用名称：${goods.genericName?default('')}<b id="tymcid"></b></p>
                    <p class="details-text">产品编号：${goods.goodsno?default('')}</p>
                    <#if goods.approvalNumber?default('')!=''>
	                    <p class="details-text">批准文号：${goods.approvalNumber?default('')}</p>
	            	</#if>
                    <p class="details-text">生产厂家：<span>${goods.manufacturer?default('')}</span></p>
                    <div class="details-price">
					    <div class="price-text clearfix clear">
					    	<span id="jgmcid">价&nbsp;&nbsp;&nbsp;&nbsp;格：</span>
					    	<b class="product-price">¥<a id="new_pc_price">${goods.pcPrice?default('')}</a></b>
					    	<i>${goods.price?c?default('')}</i>
					    </div>
                    </div>
                    <dl class="choice-details clearfix clear" id="cpggids">
                        <dt>产品规格：</dt>
                        <dd id="rx_spec_con">
                            <ul class="clearfix clear">
	                            <#list lists?if_exists as resc>
		                            <li><a href="${www1}${resc.id?c?default('')}.html" id="specid_${resc.id?c?default('')}">${resc.spec?default('')}</a></li>
						    	</#list>
                            </ul>
                        </dd>
                    </dl>
                    <dl class="choice-details choice-details-count clearfix clear" id="product_nums">
                        <dt>产品数量：</dt>
                        <dd>
                            <div class="choice-count clearfix">
                            	<a href="javascript:;" class="count-min">-</a>
                                <input type="text" value="1" class="product_nums_in"/>
                                <a href="javascript:;" class="count-plus">+</a>
                            </div>
                        </dd>
                    </dl>
	                <div class="product-btn clearfix clear" id="buy_add_btn">
                        <a href="javascript:;" class="buy-now-btn" onclick="shortBug(${goods.id?c})">立即购买</a>
                        <a href="javascript:;" class="into-cart-btn" onclick="new_addCart(${goods.id?c})">加入购物车</a>
                    </div>
                    <div class="pay-way-show">
                    	<dl class="clearfix clear">
                        	<dt>支付方式：</dt>
                            <dd class="clearfix" id="pay_ways">
                                <a class="way2">微信支付</a>
                                <a class="way3">支付宝</a>
                            </dd>
                        </dl>
                    </div>    
                  </div>
                </div>
                </div>
            </div>
            <!--商品详情信息结束-->
            
            <div class="line_dot"></div>
            
            
            <div class="w1210 mt10 rxnewcontent" style="width:1000px;">
            	<div class="product-box">
                    <!--右侧主体开始-->
                    <div class="product-main" style="float:left;">
                        <div class="product-main-wrap">
                            <div class="product-relevant">
                                <!--推荐列表开始-->
                                <div class="product-list-main">
                                    <div id="tab">
                                        <div class="product-list-title clearfix clear" id="rx-product-list-title">
                                            <ul class="product-list-tag clearfix" id="tab-hd3">
                                                <li class="active2" onclick="selectCon(this,0)">商品介绍</li>
                                                <li id="docs-rx" onclick="selectCon(this,1)">说明书</li>
                                                <li onclick="selectCon(this,2)">荣誉资质</li>
                                                <li onclick="selectCon(this,3)">用户评价 <b class="cris">(0)</b></li>
                                                <li onclick="selectCon(this,4)">相关问答</li>
                                            </ul>
                                        </div>
                                        <div class="clearfix clear" id="tab-bd3">
                                            <!--商品介绍开始-->
                                            <div class="recommend-combination clearfix clear" id="rx-instroduce">
                                                <div class="rx-intro-tips clearfix clear">
                                                	<b></b> 
                                                	该商品为非处方药，具有批准文号：国药准字${goods.approvalNumber?default('')}，符合国家食品药品监督管理局对药品的注册要求。
                                                </div>
                                                <!-- 商品信息图片 -->
                                                <div class="title-rx information-rx"><img src="http://img.zdfei.com/static/image/temp/20160317/1ffb15c0bb95a5969ec22ff0a73a2f27.jpg"/></div>
                                            	<div class="information-rx-info">
                                                	<table cellpadding="0" cellspacing="0" border="0">
                                                        <tr>
                                                            <td class="tab-tit">商品名称</td>
                                                            <td class="tab-name"><span>${goods.goodsName?default('')}</span></td>
                                                            <td class="tab-tit">通用名称</td>
                                                            <td class="tab-name"><span>${goods.genericName?default('')}</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="tab-tit">批准文号</td>
                                                            <td class="tab-name"><span>${goods.approvalNumber?default('')}</span></td>
                                                            <td class="tab-tit">规<span>格</span></td>
                                                            <td class="tab-name"><span>${goods.spec?default('')}</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="tab-tit">有<b class="rx-y">效</b><b class="rx-n">期</b></td>
                                                            <td class="tab-name"><span>${goods.lasts?default('')}</span></td>
                                                            <td class="tab-tit">功能主治</td>
                                                            <td class="tab-name"><span>${goods.indication?default('')}</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="tab-tit">生产企业</td>
                                                            <td class="tab-name"><span>${goods.manufacturer?default('')}</span></td>
                                                            <td class="tab-tit">包<span>装</span></td>
                                                            <td class="tab-name"><span>${goods.packing?default('')}</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="tab-tit">用法用量</td>
                                                            <td class="tab-name"><span>${goods.usaged?default('')}</span></td>
                                                            <td class="tab-tit">注意事项</td>
                                                            <td class="tab-name"><span>${goods.note?default('')}</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="tab-tit">不良反应</td>
                                                            <td class="tab-name"><span>${goods.untowardEffect?default('')}</span></td>
                                                            <td class="tab-tit">禁<span>忌</span></td>
                                                            <td class="tab-name"><span>${goods.taboo?default('')}</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            	
                                            	<!--a href="javascript:;" class="more-rx-info" onclick="RX.selectCon('docs-rx',1)">更多参数</a-->
                                            	
                                            	<!-- 商品展示IMAGE图片 -->
                                            	<div class="title-rx image-rx"><img src="http://img.zdfei.com/static/image/temp/20160317/13cfb04f210dd43ee741ae3efb941610.jpg"/></div>
                                            	
                                            	<div class="introduce-box">
                                            		<#if goods.goodsDescribes?default('')!=''>
	                                            		${goods.goodsDescribes?default('')}
	                                            	<#else>
	                                            		<img src="http://img.zdfei.com/static/image/temp/20160129/35214c817c8e09df0d2c95761a43e8af.jpg"/>
									            	</#if>
                                                </div>
                                                
                                                <!-- 服务承诺图片 -->
                                                <div class="title-rx promise-rx"><img src="http://img.zdfei.com/static/image/temp/20160317/9e3890bc9a7f8596efd3e3712f4bb601.jpg"/></div>
                                                <div class="promise-rx-info"><img src="http://img.zdfei.com/static/image/temp/20160317/430ba8f4bd559f476a48a89772bce91f.jpg"/></div>
                                                
                                                <!-- 服务优势图片 -->
                                                <div class="title-rx advantage-rx"><img src="http://img.zdfei.com/static/image/temp/20160317/8854840424d262e324ea055df710d382.jpg"/></div>
                                                <div class="advantage-rx-info"><img src="http://img.zdfei.com/static/image/temp/20160418/56385bf699f9deb27698a0e7f3b4e002.jpg"/></div>
                                            </div>
                                            <!--商品介绍结束-->
                                            
                                            <!--说明书开始-->
                                            <div class="recommend-combination clearfix clear" id="rx-docs" style="display:none;">
                                                <div class="introduce-box">
                                                	${goods.instructions?default('')}
                                                </div>
                                            </div>
                                            <!--说明书结束-->
                                            
                                            <!--资质证明开始-->
                                            <div class="recommend-combination clearfix clear" id="rx-zzzm" style="display:none;">
                                                <div class="introduce-box seniority-box">
                                                	<img src="http://img.zdfei.com/static/image/temp/20160129/35214c817c8e09df0d2c95761a43e8af.jpg"/>
                                                </div>
                                            </div>
                                            <!--资质证明结束-->
                                            
                                            <!--用户评价-->
								            <div class="recommend-combination clearfix clear" id="rx-yhpj" style="display:none;">
								                <div class="introduce-box assess-box">
								                	<h2>商品评价</h2>
								                    <div class="assess-scaling clearfix clear">
								                    	<div class="scaling"><strong id="hpds"></strong><p>好评度</p></div>
								                        <div class="percent">
								                            <dl><dt>好评<span id="hpds1"></span></dt><dd><div id="divh"></div></dd></dl>
								                            <dl><dt>中评<span id="zpds"></span></dt><dd class="d1"><div id="divz"></div></dd></dl>
								                            <dl><dt>差评<span id="cpds"></span></dt><dd class="d1"><div id="divc"></div></dd></dl>
								                        </div>
								                    </div>
								                </div>
								                <!--评价列表开始-->
												<div class="product-list-main mt10" id="qbpjids">
								    				<div id="tab">
								        				<div class="product-list-title clearfix clear">
												            <ul class="product-list-tag clearfix" id="tab-hd4">
												                <li class="active2" onclick="tabonc(this,0)">全部评价<span id="ztsspanid1"></span></li>
												                <li onclick="tabonc(this,1)">好评<span id="bestid"></span></li>
												                <li onclick="tabonc(this,2)">中评<span id="betterid"></span></li>
												                <li onclick="tabonc(this,3)">差评<span id="poorid"></span></li>
												                <input type="hidden" value="" id="totalCri"/>
												                <input type="hidden" value="" id="goodCri"/>
												                <input type="hidden" value="" id="middleCri"/>
												                <input type="hidden" value="" id="poorCri"/>
												            </ul>
												        </div>
												        <!--assess title start-->
												        <div class="assess-title">
												        	<div class="w380"><span>评价心得</span></div>
												        	<div class="w328"><span>顾客满意度</span></div>
												            <div class="w300 assess-p"><span class="pl40">评论者</span></div>
												        </div>
								        				<div class="clearfix clear" id="tab-bd4">
									                        <!--全部评价开始-->
												            <div class="recommend-combination clearfix clear">
												                <div class="assess-details clearfix clear"><ul class="assess-details clearfix clear" id="allData0"></ul></div>
												            </div>
												            <!--好评开始-->
												            <div class="recommend-combination clearfix clear">
												                <div class="assess-details clearfix clear"><ul class="assess-details clearfix clear" id="allData1"></ul></div>
												            </div>
												            <!--中评开始-->
												            <div class="recommend-combination clearfix clear">
												                <div class="assess-details clearfix clear"><ul class="assess-details clearfix clear" id="allData2"></ul></div>
												            </div>
												            <!--差评开始-->
												            <div class="recommend-combination clearfix clear">
												                <div class="assess-details clearfix clear"><ul class="assess-details clearfix clear" id="allData3"></ul></div>
												            </div>
								        				</div>
								        				<div id="divpagingid2"><#include "/static/inc/paging.html"></div>
								    				</div>
												</div>
												<!--评价列表结束-->
								            </div>
								            <!--用户评价结束-->
								                                            
                                            <!--相关问答开始-->
                                            <div class="recommend-combination clearfix clear" id="rx-xgwd" style="display:none;">
                                            	<div class="rx-xgwd-title"><span>相关问答</span></div>
                                                <div class="introduce-box question-box">
                                                	<ul id="consultULId">
                                                    </ul>
                                                </div>
                                                <div class="rx-load-more">
                                                	 <img class="rx-loading-img" src="http://img.zdfei.com/static/image/temp/20160128/a1125330d69f3f2cf1f093ad8a71bfbd.gif"/>
                                                     <a class="rx-a-more" href="javascript:;" onclick="getConsultData(1)">加载更多</a>
                                                </div>
                                                <!--发表咨询开始-->
                                                <div class="submit-question">
                                                    <dl class="input-question clearfix clear">
                                                        <dd class="clearfix">
                                                        	<div class="input-area">
                                                            	<textarea maxlength="100" id="zxvalid" placeholder="在此提交您的问题，咨询内容长度在4-100字之间" onfocus="focus()"></textarea>
                                                            </div>
                                                            <p><a href="javascript:void(0);" class="submit-question-btn fr" onclick="submit()">提交</a></p>
                                                        </dd>
                                                    </dl>
                                                </div>
                                                <!--发表咨询结束-->
                                            </div>
                                            <!--相关问答结束-->
                                            
                                        </div>
                                    </div>
                                </div>
                                <!--推荐列表结束-->
                            </div>
                        </div>
                    </div>
                    <!--右侧主体结束-->
                    
                    <div class="product-sub" style="float:right;">
                        <div class="product-sider">
							<#include "/static/imgout/product_detail_ads.html">
                            <div class="product-sider-info">
                                <h2 class="product-sider-title">热销商品</h2>
                                <ul class="product-sider-list" id="hotsproducts"></ul>
                            </div>
                            <div class="product-sider-info">
                                <h2 class="product-sider-title">我的浏览历史</h2>
                                <ul class="product-sider-list" id="myprohisview"></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
    </div>
    <!--商品详情结束-->

    <script type="text/javascript" src="/web/js/jquery.jqzoom.js"></script>
    <script type="text/javascript" src="/web/js/base.js"></script>
    <script type="text/javascript" src="/web/version2.2.0/js/normal.product.js"></script>
    <script type="text/javascript" src="/web/js/hots-product.js"></script>
    <script type="text/javascript" src="/web/js/product-view-history.js"></script>
	<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
    <#include "/static/inc/version2.2.0/footer.ftl">
</body>	
</html>