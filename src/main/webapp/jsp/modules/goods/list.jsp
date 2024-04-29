<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>
    <div class="modal fade" id="plusOrReduceGoodsKucunNumberModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <%-- 模态框标题--%>
                <div class="modal-header">
                    <h5 class="modal-title" id="plusOrReduceGoodsKucunNumberTitle">增加或减少库存</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <%-- 模态框内容 --%>
                <div class="modal-body">
                    数量:<input type="number" id="plusOrReduceGoodsKucunNumber" style="width: 300px;" class="form-control form-control-sm"
                              placeholder="数量" aria-controls="tableId" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
                    <input type="hidden" id="goodsId">
                    <input type="hidden" id="hideflag">
                    <input type="hidden" id="thisGoodsKucunNumber">
                </div>
                <%-- 模态框按钮 --%>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="submitPlusOrReduceGoodsKucunNumber()" class="btn btn-primary">提交</button>
                </div>
            </div>
        </div>
    </div>



    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">农产品信息管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">农产品信息管理</li>
                            <li class="breadcrumb-item active">农产品信息列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">农产品信息列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        农副产品名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="goodsNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="农副产品名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        农副产品类型
                                        <div class="layui-input-inline">
                                            <select name="goodsTypesSelectSearch"  style="width: 150px;" id="goodsTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        农户名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="shangjiaNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="农户名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-primary 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-primary 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >发布农户</th>
                                        <th >联系方式</th>
                                        <th>农副产品名称</th>
                                        <th>农副产品类型</th>
                                        <th>农副产品照片</th>
                                        <th>农副产品库存</th>
                                        <th>是否促销</th>
                                        <th>农副产品原价</th>
                                        <th>现价</th>
                                        <th>点击次数</th>
                                        <th>是否上架</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "goods";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->

        <!-- 本表的级联字段表 -->
        var goodsTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //农户名称
            var shangjiaNameSearchInput = $('#shangjiaNameSearch');
            if( shangjiaNameSearchInput != null){
                if (shangjiaNameSearchInput.val() != null && shangjiaNameSearchInput.val() != '') {
                    searchForm.shangjiaName = $('#shangjiaNameSearch').val();
                }
            }
                                                                                                                                                                    <!-- 本表的查询条件 -->

             
            //农副产品名称
            var goodsNameSearchInput = $('#goodsNameSearch');
            if( goodsNameSearchInput != null){
                if (goodsNameSearchInput.val() != null && goodsNameSearchInput.val() != '') {
                    searchForm.goodsName = $('#goodsNameSearch').val();
                }
            }
     
                //农副产品类型
            var goodsTypesSelectSearchInput = document.getElementById("goodsTypesSelectSearch");
            if(goodsTypesSelectSearchInput != null){
                var goodsTypesIndex = goodsTypesSelectSearchInput.selectedIndex;
                if( goodsTypesIndex  != 0){
                    searchForm.goodsTypes= document.getElementById("goodsTypesSelectSearch").options[goodsTypesIndex].value;
                }
            }
                                                    getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("goods/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                goodsDelete: 1,
                //本表的
                goodsName: searchForm.goodsName,
                goodsTypes: searchForm.goodsTypes,
            //级联表的
                shangjiaName: searchForm.shangjiaName,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //农户名称
            var shangjiaNameCell = document.createElement('td');
            shangjiaNameCell.innerHTML = item.shangjiaName;
            row.appendChild(shangjiaNameCell);


                    //联系方式
            var shangjiaPhoneCell = document.createElement('td');
            shangjiaPhoneCell.innerHTML = item.shangjiaPhone;
            row.appendChild(shangjiaPhoneCell);

            //农副产品名称
            var goodsNameCell = document.createElement('td');
            goodsNameCell.innerHTML = item.goodsName;
            row.appendChild(goodsNameCell);


            //农副产品类型
            var goodsTypesCell = document.createElement('td');
            goodsTypesCell.innerHTML = item.goodsValue;
            row.appendChild(goodsTypesCell);

                //农副产品照片
            var goodsPhotoCell = document.createElement('td');
            var goodsPhotoImg = document.createElement('img');
            var goodsPhotoImgValue = item.goodsPhoto;
            if(goodsPhotoImgValue !=null && goodsPhotoImgValue !='' && goodsPhotoImgValue !='null'){
                goodsPhotoImg.setAttribute('src', goodsPhotoImgValue);
                goodsPhotoImg.setAttribute('height', 100);
                goodsPhotoImg.setAttribute('width', 100);
                goodsPhotoCell.appendChild(goodsPhotoImg);
            }else{
                goodsPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(goodsPhotoCell);

            //农副产品库存
            var goodsKucunNumberCell = document.createElement('td');
            goodsKucunNumberCell.innerHTML = item.goodsKucunNumber;
            row.appendChild(goodsKucunNumberCell);


            //是否促销
            var cuxiaoTypesCell = document.createElement('td');
            cuxiaoTypesCell.innerHTML = item.cuxiaoValue;
            row.appendChild(cuxiaoTypesCell);


            //农副产品原价
            var goodsOldMoneyCell = document.createElement('td');
            goodsOldMoneyCell.innerHTML = item.goodsOldMoney;
            row.appendChild(goodsOldMoneyCell);


            //现价
            var goodsNewMoneyCell = document.createElement('td');
            goodsNewMoneyCell.innerHTML = item.goodsNewMoney;
            row.appendChild(goodsNewMoneyCell);


            //点击次数
            var goodsClicknumCell = document.createElement('td');
            goodsClicknumCell.innerHTML = item.goodsClicknum;
            row.appendChild(goodsClicknumCell);


            //是否上架
            var shangxiaTypesCell = document.createElement('td');
            shangxiaTypesCell.innerHTML = item.shangxiaValue;
            row.appendChild(shangxiaTypesCell);


            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            let flag = window.sessionStorage.getItem('role') == '管理员';
            console.log('role:', window.sessionStorage.getItem('role'));
            console.log(flag);
            if (flag) {
                //审核
                if (item.shangxiaTypes==3) {
                    var editBtn = document.createElement('button');
                    var msg = "'审核通过'";
                    var editAttr = 'shangxia(' + item.id + ',' + 1 + ',' + msg + ')';
                    editBtn.setAttribute("type", "button");
                    editBtn.setAttribute("class", "btn btn-primary btn-sm 修改");
                    editBtn.setAttribute("onclick", editAttr);
                    editBtn.innerHTML = "审核通过";
                    btnGroup.appendChild(editBtn);

                    var editBtn2 = document.createElement('button');
                    var msg = "'审核失败'";
                    var editAttr2 = 'shangxia(' + item.id + ',' + 4 + ',' + msg + ')';
                    editBtn2.setAttribute("type", "button");
                    editBtn2.setAttribute("class", "btn btn-danger btn-sm 修改");
                    editBtn2.setAttribute("onclick", editAttr2);
                    editAttr = 'shangxia(' + item.id + ',' + 4 + ')';
                    editBtn2.innerHTML = "审核失败";
                    btnGroup.appendChild(editBtn2);
                } else if (item.shangxiaTypes==4) {
                    var editBtn = document.createElement('button');
                    var msg = "'重新审核通过'";
                    var editAttr = 'shangxia(' + item.id + ',' + 1 + ',' + msg + ')';
                    editBtn.setAttribute("type", "button");
                    editBtn.setAttribute("class", "btn btn-primary btn-sm 修改");
                    editBtn.setAttribute("onclick", editAttr);
                    editBtn.innerHTML = "重新审核通过";
                    btnGroup.appendChild(editBtn);
                }
            } else {

                //上下架
                var editBtn = document.createElement('button');
                var editAttr = ''; //'shangxia(' + item.id + ',' +item.shangxiaTypes+ ')';
                var msg = '';
                editBtn.setAttribute("type", "button");
                if(item.shangxiaTypes == 1){
                    editBtn.innerHTML = "下架";
                    editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                    msg = "'下架成功'";
                    editAttr = 'shangxia(' + item.id + ',' + 2 + ',' + msg + ')';
                    editBtn.setAttribute("onclick", editAttr);
                    btnGroup.appendChild(editBtn);
                } else if(item.shangxiaTypes == 2){
                    editBtn.innerHTML = "上架申请";
                    editBtn.setAttribute("class", "btn btn-info btn-sm 修改");
                    msg = "'申请成功'";
                    editAttr = 'shangxia(' + item.id + ',' + 3 + ',' + msg + ')';
                    editBtn.setAttribute("onclick", editAttr);
                    btnGroup.appendChild(editBtn);
                } else if(item.shangxiaTypes == 4){
                    editBtn.innerHTML = "重新上架申请";
                    editBtn.setAttribute("class", "btn btn-info btn-sm 修改");
                    msg = "'重新申请成功'";
                    editAttr = 'shangxia(' + item.id + ',' + 3 + ',' + msg + ')';
                    editBtn.setAttribute("onclick", editAttr);
                    btnGroup.appendChild(editBtn);
                }

                //增加库存
                var plusBtn = document.createElement('button');
                var plusAttr = "plusGoodsKucunNumber(" + item.id+','+item.goodsKucunNumber+")";
                plusBtn.setAttribute("type", "button");
                plusBtn.setAttribute("class", "btn btn-info btn-sm 修改");
                plusBtn.setAttribute("onclick", plusAttr);
                plusBtn.innerHTML = "增加库存";
                btnGroup.appendChild(plusBtn);

                //减少库存
                var reduceBtn = document.createElement('button');
                var reduceAttr = "reduceGoodsKucunNumber(" + item.id+','+item.goodsKucunNumber+')';
                reduceBtn.setAttribute("type", "button");
                reduceBtn.setAttribute("class", "btn btn-info btn-sm 修改");
                reduceBtn.setAttribute("onclick", reduceAttr);
                reduceBtn.innerHTML = "减少库存";
                btnGroup.appendChild(reduceBtn);

                //修改按钮
                var editBtn = document.createElement('button');
                var editAttr = 'edit(' + item.id + ')';
                editBtn.setAttribute("type", "button");
                editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                editBtn.setAttribute("onclick", editAttr);
                editBtn.innerHTML = "修改";
                btnGroup.appendChild(editBtn);

                //删除按钮
                var deleteBtn = document.createElement('button');
                var deleteAttr = 'remove(' + item.id + ')';
                deleteBtn.setAttribute("type", "button");
                deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
                deleteBtn.setAttribute("onclick", deleteAttr);
                deleteBtn.innerHTML = "删除";
                btnGroup.appendChild(deleteBtn);
            }

            row.appendChild(btnGroup);
            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("goods/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addgoods", "addgoods");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }


        //上下架
        function shangxia(id,shangxiaTypes, msg) {
            let data = {"id":id,"shangxiaTypes":shangxiaTypes};
            httpJson("goods/update", "POST", data, (res) => {
                if(res.code == 0){
                    alert(msg);
                    getDataList()
                }else{
                    alert(res.msg);
                }
            });
        }
    //填充级联表搜索下拉框
                                         
                                                                                                                                                                
    //填充本表搜索下拉框
             
     
        function goodsTypesSelectSearch() {
            var goodsTypesSelectSearch = document.getElementById('goodsTypesSelectSearch');
            if(goodsTypesSelectSearch != null) {
                goodsTypesSelectSearch.add(new Option('-请选择-',''));
                if (goodsTypesOptions != null && goodsTypesOptions.length > 0){
                    for (var i = 0; i < goodsTypesOptions.length; i++) {
                            goodsTypesSelectSearch.add(new Option(goodsTypesOptions[i].indexName,goodsTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                        
    //查询级联表搜索条件所有列表

    //查询当前表搜索条件所有列表
            function goodsTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=goods_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        goodsTypesOptions = res.data.list;
                    }
                });
            }





        //增加库存
        function plusGoodsKucunNumber(thisId,goodsKucunNumber) {
            if(thisId == null || thisId=="" || thisId=="null"){
                alert("未知错误,请联系管理员处理");
                return;
            }
            $("#plusOrReduceGoodsKucunNumberTitle").val("增加库存");
            $("#thisGoodsKucunNumber").val(goodsKucunNumber);
            $("#hideflag").val("+");
            $("#goodsId").val(thisId);
            id=thisId;
            $('#plusOrReduceGoodsKucunNumberModal').modal('show');
        }

        //减少库存
        function reduceGoodsKucunNumber(thisId,goodsKucunNumber) {
            if(thisId == null || thisId=="" || thisId=="null"){
                alert("未知错误,请联系管理员处理");
                return;
            }
            $("#plusOrReduceGoodsKucunNumberTitle").val("减少库存");
            $("#thisGoodsKucunNumber").val(goodsKucunNumber);
            $("#hideflag").val("-");
            $("#goodsId").val(thisId);
            id=thisId;
            $('#plusOrReduceGoodsKucunNumberModal').modal('show');
        }
        $('#plusOrReduceGoodsKucunNumberModal').on('show.bs.modal', function () {
            //清理表格内容,防止重复回显
            $("#plusOrReduceGoodsKucunNumber").val(0);
            if(id ==null){
                alert("获取当前列id错误,请联系管理员处理");
                $('#plusOrReduceGoodsKucunNumberModal').modal('hide');
                $("#plusOrReduceGoodsKucunNumberTitle").val("");
                $("#thisGoodsKucunNumber").val("");
                $("#hideflag").val("");
                $("#goodsId").val("");
                getDataList();
                return;
            }
        });
        //模态框关闭的时候会执行这个里面的东西
        $('#plusOrReduceGoodsKucunNumberModal').on('hide.bs.modal', function () {
            id=null;
            $("#plusOrReduceGoodsKucunNumber").val(0);
            $("#plusOrReduceGoodsKucunNumberTitle").val("");
            $("#thisGoodsKucunNumber").val("");
            $("#hideflag").val("");
            $("#goodsId").val("");
            getDataList();
        });

        function submitPlusOrReduceGoodsKucunNumber() {
            var id = $("#goodsId").val();//当前数据id
            var hideflag = $("#hideflag").val();//是加还是减
            var thisGoodsKucunNumber = $("#thisGoodsKucunNumber").val();//原先的数量
            var plusOrReduceGoodsKucunNumber = $("#plusOrReduceGoodsKucunNumber").val();//增加或者减少的数量
            var sumNumber=0;
            var msg;
            if(hideflag == "+"){
                sumNumber =parseInt(thisGoodsKucunNumber) + parseInt(plusOrReduceGoodsKucunNumber);
                msg = "增加库存成功";
            }else if(hideflag == "-"){
                sumNumber =parseInt(thisGoodsKucunNumber) - parseInt(plusOrReduceGoodsKucunNumber);
                msg = "减少库存成功";
            }else{
                alert("提交库存增加减少未知错误");
                return;
            }
            let data = {"id":id,"goodsKucunNumber":sumNumber};
            httpJson("goods/update", "POST", data, (res) => {
                if(res.code == 0){
                    alert(msg);
                    getDataList();
                }else{
                    alert(res.msg);
                }
                $('#plusOrReduceGoodsKucunNumberModal').modal('hide');
            });

        }








        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框

            //查询当前表的搜索下拉框
            goodsTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                                                                                                                                                                                                
        //当前表的下拉框赋值
                                     
             
            goodsTypesSelectSearch();
                                                                                                                        
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>
