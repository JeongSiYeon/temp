<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <base href='../../'>
    <%@ include file="../../../_include/head.jsp" %>
</head>

<!-- begin::Body -->

<body
    class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">
    <!-- begin:: Page -->

    <!-- begin:: Header Mobile -->
    <%@ include file="../../../_include/mobileHeader.jsp" %>
    <!-- end:: Header Mobile -->

    <div class="kt-grid kt-grid--hor kt-grid--root">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">

            <!-- begin:: Aside -->
            <%@ include file="../../../_include/leftmenu.jsp" %>
            <!-- end:: Aside -->
            <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

                <!-- begin:: Header -->
                <%@ include file="../../../_include/header.jsp" %>
                <!-- end:: Header -->
                <div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

                    <!-- begin:: Content Head -->
                    <%@ include file="../../../_include/subheader.jsp" %>
                    <!-- end:: Content Head -->

                    <!-- begin:: Content -->
                    <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
                        <%@ include file="../../../_include/tagAlertText.jsp" %>

                        <!--begin::Portlet-->
                        <div class="kt-portlet kt-portlet--tabs">
                            <div class="kt-portlet__head">

                                <div class="kt-portlet__head-toolbar">
                                    <ul class="nav nav-tabs nav-tabs-line nav-tabs-line-brand nav-tabs-line-2x nav-tabs-line-right nav-tabs-bold" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#tab_monthly" role="tab" id="monthly_tab">
                                                <i class="flaticon2-heart-rate-monitor" aria-hidden="true"></i>Monthly
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#tab_daily" role="tab" id="daily_tab">
                                                <i class="flaticon2-pie-chart-2" aria-hidden="true"></i>Daily
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="kt-portlet__head-toolbar">
                                    <div class="kt-portlet__head-wrapper">
                                        <button type="button" class="btn btn-brand btn-icon-sm" id="_excelExport_">
                                            <i class="flaticon2-file"></i> Download CSV
                                        </button>
                                    </div>
                                </div>

                            </div>
                            <div class="kt-portlet__body kt-portlet__body--fit" id="content-wrap">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab_monthly" role="tabpanel">
                                        <div class="kt-portlet kt-portlet--mobile m-0">

                                            <div class="kt-portlet__body">

                                                <!--begin: Search Form -->
                                                <!--begin: Search Form -->
                                                <div class="form-group row">
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>키워드 검색</label>
                                                        <input type="email" class="form-control" id="generalSearch-monthly" aria-describedby="emailHelp" placeholder="Search...">
                                                    </div>
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>조회 시작월 선택</label> <select
                                                            class="form-control kt-selectpicker"
                                                            id="from_monthpicker"></select>
                                                    </div>
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>조회 마지막월 선택</label>
                                                        <select class="form-control kt-selectpicker" id="to_monthpicker"></select>
                                                    </div>

                                                    <div class="col-lg-2 col-md-4">
                                                        <label>고객사 선택</label>
                                                        <select class="form-control kt-selectpicker" id="corp-monthly" title="Select Corp" data-width="100%" data-selected-text-format="count > 1" multiple
                                                                data-actions-box="true">
                                                        </select>
                                                    </div>

                                                    <div class="col-lg-2 col-md-4">
                                                        <label>서비스 선택</label>
                                                        <select class="form-control kt-selectpicker" id="service-monthly" title="Select Service" data-width="100%" data-selected-text-format="count > 1" multiple
                                                                data-actions-box="true">
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <button class="btn btn-primary w-100" id="searchBtn-monthly">
                                                            <i class="la la-search"></i> 검색
                                                        </button>
                                                    </div>
                                                </div>
                                                <!--end: Search Form -->

                                            </div>
                                            <div class="kt-portlet__body kt-portlet__body--fit">
                                                <div class="row">
                                                    <div class="col-xl-12">
                                                        <div class="kt-section__content ml-3 mr-3" id="tagAlert_monthly"></div>
                                                        <!--begin::Portlet-->
                                                        <div class="kt-portlet__body">
                                                            <div id="monthly_legend" class="chart_legend kt-align-center"></div>
                                                            <span class="kt-align-right">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <label for="chartMonthly"><small>차트 선택</small></label>
                                                                        <button type="button" id="chartMonthly" class="btn btn-hover-brand btn-elevate-hover btn-icon btn-sm btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <div class="dropdown-header">차트 선택</div>
                                                                            <div class="dropdown-divider"></div>
                                                                            <a href="#" class="dropdown-item monthly-dropdown-item active" data-dropItem="Bar">Bar</a>
                                                                            <a href="#" class="dropdown-item monthly-dropdown-item" data-dropItem="Line">Line</a>
                                                                            <a href="#" class="dropdown-item monthly-dropdown-item" data-dropItem="Stack">Stack</a>
                                                                        </div>
                                                                    </div>
                                                                </span>
                                                            <div style="height: 300px;">
                                                                <canvas id="kt_amchart_monthly"></canvas>
                                                            </div>
                                                        </div>
                                                        <!--end::Portlet-->
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xl-12">
                                                        <!--begin::Portlet-->
                                                        <div class="kt-portlet__body kt-portlet__body--fit">
                                                            <!--begin: Datatable -->
                                                            <div class="kt_datatable kt_datatable_max_height" id="kt_datatable_monthly"></div>
                                                            <!--end: Datatable -->
                                                        </div>
                                                        <!--end::Portlet-->
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab_daily" role="tabpanel">
                                        <div class="kt-portlet kt-portlet--mobile m-0">

                                            <div class="kt-portlet__body">

                                                <!--begin: Search Form -->
                                                <div class="form-group row">
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>키워드 검색</label>
                                                        <input type="email" class="form-control" id="generalSearch-daily" aria-describedby="emailHelp" placeholder="Search...">
                                                    </div>
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>조회 시작날짜 선택</label>
                                                        <div class="input-group date">
                                                            <input type="text" class="form-control" readonly placeholder="Select Date" id="from_datepicker" />
                                                            <div class="input-group-append">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-calendar-check-o"></i>
                                                                    </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>조회 마지막날짜 선택</label>
                                                        <div class="input-group date">
                                                            <input type="text" class="form-control" readonly placeholder="Select Date" id="to_datepicker" />
                                                            <div class="input-group-append">
                                                                    <span class="input-group-text">
                                                                        <i class="la la-calendar-check-o"></i>
                                                                    </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-2 col-md-4">
                                                        <label>고객사 선택</label>
                                                        <select class="form-control kt-selectpicker" id="corp-daily" title="Select Corp" data-width="100%" data-selected-text-format="count > 1" multiple
                                                                data-actions-box="true">
                                                        </select>

                                                    </div>

                                                    <div class="col-lg-2 col-md-4">
                                                        <label>서비스 선택</label>
                                                        <select class="form-control kt-selectpicker" id="service-daily" title="Select Service" data-width="100%" data-selected-text-format="count > 1" multiple
                                                                data-actions-box="true">
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <button class="btn btn-primary w-100" id="searchBtn-daily">
                                                            <i class="la la-search"></i> 검색
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                                <!--end: Search Form -->

                                            </div>
                                            <div class="kt-portlet__body kt-portlet__body--fit">
                                                <div class="row">
                                                    <div class="col-xl-12">

                                                        <div class="kt-section__content ml-3 mr-3" id="tagAlert_daily"></div>
                                                        <!--begin::Portlet-->
                                                        <div class="kt-portlet__body">
                                                            <div id="daily_legend" class="kt-align-center chart_legend"></div>
                                                            <span class="kt-align-right">
                                                                    <div class="dropdown dropdown-inline">
                                                                        <label for="chartDaily"><small>차트 선택</small></label>
                                                                        <button id="chartDaily" type="button" class="btn btn-hover-brand btn-elevate-hover btn-icon btn-sm btn-icon-md" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                            <i class="flaticon-more-1"></i>
                                                                        </button>
                                                                        <div class="dropdown-menu dropdown-menu-right">
                                                                            <div class="dropdown-header">차트 선택</div>
                                                                            <div class="dropdown-divider"></div>
                                                                            <a href="#" class="dropdown-item daily-dropdown-item active" data-dropItem="Bar">Bar</a>
                                                                            <a href="#" class="dropdown-item daily-dropdown-item" data-dropItem="Line">Line</a>
                                                                            <a href="#" class="dropdown-item daily-dropdown-item" data-dropItem="Stack">Stack</a>
                                                                        </div>
                                                                    </div>
                                                                </span>
                                                            <div style="height: 300px;">
                                                                <canvas id="kt_amchart_daily"></canvas>
                                                            </div>
                                                        </div>
                                                        <!--end::Portlet-->
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xl-12">
                                                        <!--begin::Portlet-->
                                                        <div class="kt-portlet__body kt-portlet__body--fit">
                                                            <!--begin: Datatable -->
                                                            <div class="kt_datatable kt_datatable_max_height" id="kt_datatable_daily"></div>
                                                            <!--end: Datatable -->
                                                        </div>
                                                        <!--end::Portlet-->
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end::Portlet-->
                    </div>

                    <!-- end:: Content -->
                </div>

                <!-- begin:: Footer -->
                <%@ include file="../../../_include/footer.jsp" %>
                <!-- end:: Footer -->
            </div>
        </div>
    </div>

    <!-- end:: Page -->

    <!-- begin::Scrolltop -->
    <div id="kt_scrolltop" class="kt-scrolltop">
        <i class="fa fa-arrow-up"></i>
    </div>
    <!-- end::Scrolltop -->

    <!-- begin::Sticky Toolbar -->
    <ul class="kt-sticky-toolbar" style="margin-top: 30px;">
        <li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--warning" id="kt_demo_panel_toggle" data-toggle="kt-tooltip" title="Check out Page Guide" data-placement="right">
            <a href="#" class=""><i class="fa  fa-question"></i></a>
        </li>
        <li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--danger" data-toggle="kt-tooltip" title="Please feel free to contact us" data-placement="left">
            <a href="https://support.fitcloud.co.kr/" target="_blank"><i class="fa fa-headset"></i></a>
        </li>
    </ul>
    <!-- end::Sticky Toolbar -->

    <!-- begin::Demo Panel -->
    <div id="kt_demo_panel" class="kt-demo-panel">
        <div class="kt-demo-panel__head">
            <h3 class="kt-demo-panel__title">
                Help
                <!--<small>5</small>-->
            </h3>
            <a href="#" class="kt-demo-panel__close" id="kt_demo_panel_close"><i class="flaticon2-delete"></i></a>
        </div>
        <div class="kt-demo-panel__body">
            <div class="kt-demo-panel__item kt-demo-panel__item--active">
                <div class="kt-demo-panel__item-title text-left">
                    <p class="fa flaticon-warning kt-font-danger">본 화면의 금액은 결산 금액과 상이 할수 있습니다.</p>
                </div>
                <div class="kt-demo-panel__item">
                    <p class="kt-font-danger"> (마우스 오버 및 CSV download 시 해당 정보를 상세하게 열람 할 수 있습니다.)</p>
                    <p>1. 용어 설명: <br>
                        - Usage Type : 특정 유형의 리소스 사용량 측정 시 사용하는 단위<br>
                    <p></p>
                    - ApplyRI : RI(Reserved Instance)가 적용되어 할인된 <br>&nbsp; on-demand환산 금액<br>
                    - Fee : Upfront RIs, Partial Upfront RIs의 연간 청구금액<br>
                    - RIFee : Partial Upfront RIs, No Upfront RIs, All Upfronts의<br>&nbsp; 월간 청구금액<br>
                    - SavingsPlanUpfrontFee : All Upfront Savings Plan,<br>&nbsp; Partial Upfront Savings Plan의 연간 청구금액<br>
                    - SavingsPlanRecurringFee : Partial Upfront Savings Plan,<br>&nbsp; No Upfront Savings Plan의 월간 청구금액<br>
                    - ApplySavingsPlan : Savings Plan이 적용되어 할인된 <br>&nbsp; on-demand환산 금액<br>
                    </p>
                    <hr>
                    <p>2. 참고
                        <br>-상기 데이터는 계정에 따른 서비스 이용 시 발생하는 금액을 소수점 두 자리까지 표기한 데이터입니다. 소수점에 따라 결산금액과 차이가 발생 할 수 있습니다.
                        <br>-소수점은 완벽하게 표기할 수 없어 csv파일 다운로드 시에도 차이가 발생할 수 있습니다.
                        <br>-서포트 요금이 포함된 데이터입니다.
                        <br>-Monthly와 Daily로 구분되어 월별과 일별로 서비스 별 사용 금액에 관한 내용을 나누어 보실 수 있습니다.
                        <br>-Daily탭을 이용 시 선택일로부터 7일간의 데이터를 열람 할 수 있습니다.
                        <br>-Type과 금액에 마우스를 오버하면 상세 설명과 구체적인 데이터를 보실 수 있습니다.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- end::Demo Panel -->

    <%@ include file="../../../_include/_includeFile.jsp" %>
    <script src="assets\js\dist\resellerTest2.js?${buildTime}" type="text/javascript"></script>

    </body>

    </html>
