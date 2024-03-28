<%@ Page Title="Cung cấp trang thiết bị | LEON 2" Language="C#" MasterPageFile="~/LayoutPage.master" AutoEventWireup="true" CodeFile="equipment.aspx.cs" Inherits="equipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <div>
        <div class="l-page-header " style="visibility: visible; opacity: 1;">
            <div class="l-page-header__container">
                <div class="l-page-header__image" style="background-image: url(App_Themes/upload/2024/10/page_detail04.jpg)">
                </div>
                <div class="l-page-header__content">
                    <div class="l-page-header__inner">
                        <div class="l-page-header__icon">
                            <img src="App_Themes/upload/2024/01/icon-page-header-questionnaire.png" alt="">
                        </div>
                        <h1 class="l-page-header__title">
                            <span>アンケート入力・集計</span>
                        </h1>
                        <div class="l-page-header__text">アンケート回答用紙のデータ化及び集計までワンストップ対応することでコア業務への集中ができます。</div>
                    </div>
                </div>
            </div>
            <div class="c-breadcrumb">
                <div class="l-container">
                    <div class="c-breadcrumb__inner"><span><span><a href="#">ホーム</a></span> &gt; <span><a href="#">サービス一覧</a></span> &gt; <span class="breadcrumb_last" aria-current="page">アンケート入力・集計</span></span></div>
                </div>
            </div>
            <div class="c-counts  is-page-header">
                <div class="c-counts__count">
                    <strong>対応件数</strong>
                    <small>（2021年10月現在）</small>
                    <span>4,437</span><strong>案件</strong>
                </div>
            </div>
        </div>
        <section class="l-section is-xxxxlg is-bg-color">
            <div class="c-step-point">
                <div class="l-container">
                    <h2 class="c-heading is-lg is-center is-bottom"><span>単価が変わる要因</span></h2>
                    <div class="c-step-point__inner">
                        <div class="c-step-point__block">
                            <div class="c-step-point__flex">
                                <div class="c-step-point__image">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-step-point-01.jpg" alt="" />
                                </div>
                                <div class="c-step-point__content">
                                    <div class="c-step-point__head">
                                        <div class="c-step-point__number"><small>POINT</small><span>01</span></div>
                                        <div class="c-step-point__title">PC & Laptop</div>
                                    </div>
                                    <div class="c-step-point__text">
                                        弊社では、お客様の目的に沿った業務設計をプロジェクトごとに行っております。<br />
                                        そのため、用いるリソース、作業工程、作業に要する時間がプロジェクトごと変わってくるため、単価の変動要因となります。
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="c-step-point__block">
                            <div class="c-step-point__flex">
                                <div class="c-step-point__image">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-step-point-02.jpg" alt="" />
                                </div>
                                <div class="c-step-point__content">
                                    <div class="c-step-point__head">
                                        <div class="c-step-point__number"><small>POINT</small><span>02</span></div>
                                        <div class="c-step-point__title">Máy in</div>
                                    </div>
                                    <div class="c-step-point__text">原本とは入力対象となる「情報の元」を指します。原本が活字か手書きか、原本体裁が統一かバラバラか、デジタルデータ化（≒スキャン）が容易か困難か、などの原本状態が作業工数に影響するため、単価の変動要因となります。</div>
                                </div>
                            </div>
                        </div>

                        <div class="c-step-point__block">
                            <div class="c-step-point__flex">
                                <div class="c-step-point__image">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-step-point-03.jpg" alt="" />
                                </div>
                                <div class="c-step-point__content">
                                    <div class="c-step-point__head">
                                        <div class="c-step-point__number"><small>POINT</small><span>03</span></div>
                                        <div class="c-step-point__title">Máy chiếu</div>
                                    </div>
                                    <div class="c-step-point__text">データ入力には付帯業務が発生します。原本の現状復帰（たとえば名刺ファイル内の並び順の復元など）、入力データとスキャン画像データの関連付け、一定数量で原本を輪ゴム止めするなど、お客様のご要望によって様々な対応をします。このようなデータ入力以外の付帯業務の有無も、単価の変動要因となります。</div>
                                </div>
                            </div>
                        </div>

                        <div class="c-step-point__block">
                            <div class="c-step-point__flex">
                                <div class="c-step-point__image">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-step-point-03.jpg" alt="" />
                                </div>
                                <div class="c-step-point__content">
                                    <div class="c-step-point__head">
                                        <div class="c-step-point__number"><small>POINT</small><span>04</span></div>
                                        <div class="c-step-point__title">Phần mềm</div>
                                    </div>
                                    <div class="c-step-point__text">データ入力には付帯業務が発生します。原本の現状復帰（たとえば名刺ファイル内の並び順の復元など）、入力データとスキャン画像データの関連付け、一定数量で原本を輪ゴム止めするなど、お客様のご要望によって様々な対応をします。このようなデータ入力以外の付帯業務の有無も、単価の変動要因となります。</div>
                                </div>
                            </div>
                        </div>

                        <div class="c-step-point__block">
                            <div class="c-step-point__flex">
                                <div class="c-step-point__image">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-step-point-03.jpg" alt="" />
                                </div>
                                <div class="c-step-point__content">
                                    <div class="c-step-point__head">
                                        <div class="c-step-point__number"><small>POINT</small><span>05</span></div>
                                        <div class="c-step-point__title">Linh kiện</div>
                                    </div>
                                    <div class="c-step-point__text">データ入力には付帯業務が発生します。原本の現状復帰（たとえば名刺ファイル内の並び順の復元など）、入力データとスキャン画像データの関連付け、一定数量で原本を輪ゴム止めするなど、お客様のご要望によって様々な対応をします。このようなデータ入力以外の付帯業務の有無も、単価の変動要因となります。</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div style="display: none;">
            <p>&nbsp;</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceBodyFooter" runat="Server">
</asp:Content>

