<#--

       Copyright 2006-2017 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

-->
<style type="text/css">
    body {
        margin-left: 45px;
        margin-right: 45px;
        font-family: Arial Unicode MS;
        font-size: 10px;
    }

    table {
        margin: auto;
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #444444;
    }

    th,td {
        border: 1px solid #444444;
        font-size: 10px;
        margin-left: 5px;
    }

    .mcContent {
        line-height: 180%;
        padding: 20px;
    }

    .logo {
        text-align: center;
    }

    .title {
        text-align: center;
        font-weight: bold;
        font-size: 20px;
    }

    .notes {
        font-family:宋体; font-size:10.5pt; font-weight:bold
    }

    .text_content {
        font-family:宋体; font-size:10.5pt; font-weight:bold
    }

    .sum_insured_first_row {
        width: 20%;
    }

    .sum_insured_span {
        font-size: 10px;
    }

    .special_agreements_div {
        page-break-before: always;
        font-size: 14px;
        margin-top: 20px;
    }

    .special_agreements_div .special_agreements {
        font-size: 18px;
        font-weight: bold;
    }

    .title_right {
        width: 100%;
        margin: 0 auto;
    }

    .title_right p {
        text-align: left;
        margin: 0;
        margin-left: 50%;
        padding: 0;
    }

    @page {
        size: 8.5in 11in;
    @
    bottom-center
    {
        content
        :
                "page "
                counter(
                        page
                )
                " of  "
                counter(
                        pages
                );
    }

    .signature {
        margin: 0 auto;
        clear: both;
        font-size: 16px;
        font-weight: bold;
    }

    .signature_table {
        /* 	font-size: 16px; */
        font-weight: bold;
    }

</style>
<br><br><br><br><br>

<div>
    <div>
        <div class="logo"><!--这里的图片使用相对与ITextRenderer.getSharedContext().setBaseURL("file:/"+imageDiskPath);的路径-->
            <img src="../../../static/images/logo.jpg" width="100px" height="200px" align="left">
        </div>
        <br><br><br><br><br><br><br>
        <p style="margin:0pt; text-align:center">
            <span style="font-family:华文中宋; font-size:16pt; font-weight:bold">未来域定房单</span>
        </p>
        <p style="font-size:10.5pt; line-height:130%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:bold">尊敬的客户：</span>
        </p>
        <p style="margin:0pt 0pt 0pt 5.2pt; orphans:0; text-align:justify; text-indent:20pt; widows:0">
            <span style="font-family:华文宋体; font-size:10.5pt">感谢您预定</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">${company_name} </span>
            <span style="font-family:华文宋体; font-size:10.5pt">公司</span>
            <span style="font-family:华文宋体; font-size:10.5pt">（</span>
            <span style="font-family:华文宋体; font-size:10.5pt">下称</span>
            <span style="font-family:华文宋体; font-size:10.5pt">“</span>
            <span style="font-family:华文宋体; font-size:10.5pt">未来域</span>
            <span style="font-family:华文宋体; font-size:10.5pt">”</span>
            <span style="font-family:华文宋体; font-size:10.5pt">）</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">${store}</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline"> </span>
            <span style="font-family:华文宋体; font-size:10.5pt">店</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">${room_no}</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">房</span>
            <span style="font-family:华文宋体; font-size:10.5pt">间，成为我们的“域主”。我们将秉承未来域一贯的宗旨为您在未来域的精致生活提质的服务！</span>
        </p>
        <p style="font-size:10.5pt; line-height:130%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:bold">您的预定信息：</span>
        </p>
        <p style="font-size:11pt; line-height:130%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:华文宋体; font-size:11pt">姓名：</span>
            <span style="font-family:华文宋体; font-size:11pt; text-decoration:underline">${contract_name} </span>
            <span style="font-family:华文宋体; font-size:11pt">手机号：</span>
            <span style="font-family:华文宋体; font-size:11pt; text-decoration:underline">${contract_phone}</span>
        </p>
        <p style="font-size:11pt; line-height:130%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:华文宋体; font-size:11pt">身份证号码：</span>
            <span style="font-family:华文宋体; font-size:11pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:11pt">.</span>
        </p>
        <p style="font-size:10.5pt; line-height:150%; margin:0pt">
            <span style="font-family:华文宋体; font-size:10.5pt">入住周期：</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">年</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">月</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">日</span>
            <span style="font-family:华文宋体; font-size:10.5pt">&nbsp;&nbsp;&nbsp;&nbsp; 至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">年</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">月</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">日</span>
        </p>
        <p style="line-height:16pt; margin:0pt">
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal">房费：￥</span>
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal; text-decoration:underline">${rent_price}</span>
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal">元</span>
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal">/月；押金：￥</span>
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal; text-decoration:underline">${yajin}</span>
            <span style="font-family:华文宋体; font-size:10.5pt; font-weight:normal">元；</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">支付方式：【□季度</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">□半年度</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">□年度</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal"> </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">】支</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:normal">付。</span>
        </p>
        <p style="line-height:16pt; margin:0pt">
            <span style="font-family:宋体; font-size:10pt; font-weight:bold">定金详情：</span>
        </p>
        <p style="line-height:16pt; margin:0pt">
            <span style="font-family:宋体; font-size:10pt">&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt">&nbsp; 您本次所支付定金</span>
            <span style="font-family:华文宋体; font-size:10.5pt">￥</span>
            <span style="font-family:宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt">元整</span>
            <span style="font-family:宋体; font-size:10.5pt">(</span>
            <span style="font-family:宋体; font-size:10.5pt">大写：</span>
            <span style="font-family:宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt">)，请缴款后索取缴款单，本定房单生效。　</span>
        </p>
        <p style="line-height:16pt; margin:0pt">
            <span style="font-family:宋体; font-size:10.5pt">&nbsp; 请您于本</span>
            <span style="font-family:宋体; font-size:10.5pt">定房</span>
            <span style="font-family:宋体; font-size:10.5pt">单签订</span>
            <span style="font-family:宋体; font-size:10.5pt">之日起三日内，即</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">年</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">月</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">日前，前往本店</span>
            <span style="font-family:宋体; font-size:10.5pt">签定</span>
            <span style="font-family:宋体; font-size:10.5pt">《入住登记表》及《入住协议》等相关协议（本店另行通知时间除外）。届时，请您提供身份证、护照等相关证明及复印件，以及携带第一次应缴金额（房费</span>
            <span style="font-family:宋体; font-size:10.5pt">+押金+物业费等），金额共计人民币</span>
            <span style="font-family:华文宋体; font-size:10.5pt">￥</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">元（大写：</span>
            <span style="font-family:华文宋体; font-size:10.5pt; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:华文宋体; font-size:10.5pt">元）</span>
            <span style="text_content">。如未来域不能按时提供房间</span>
            <span style="font-family:宋体; font-size:10.5pt">,将向您</span>
            <span style="font-family:宋体; font-size:10.5pt">双倍返定金；如您逾期不能入住所预定之房间或者身份证件不合法等，未来域将不予退还您的定金。感谢您的理解与支持！</span>
        </p>
        <p style="font-size:10pt; line-height:150%; margin:0pt; orphans:0; widows:0">
            <span style="font-family:宋体; font-size:10pt">&nbsp;</span>
        </p>
        <p style="font-size:10pt; line-height:150%; margin:0pt; orphans:0; widows:0">
            <span style="font-family:宋体; font-size:10pt">备注：</span>
            <span style="font-family:宋体; font-size:10pt; text-decoration:underline">${remark} </span>
            <span style="font-family:宋体; font-size:10pt">.</span>
        </p>
        <p style="font-size:10.5pt; line-height:200%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">客户确认签字：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 未来域授权</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">代表</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">签字：</span>
        </p>
        <p style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; widows:0">
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">日期：</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">年</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">月</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 日期：</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">年</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">月</span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold; text-decoration:underline">&nbsp;&nbsp;&nbsp; </span>
            <span style="font-family:宋体; font-size:10.5pt; font-weight:bold">日</span>
        </p>
    </div>

</div>
</div>