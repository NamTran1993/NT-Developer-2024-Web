<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutPage.master" AutoEventWireup="true" CodeFile="flow.aspx.cs" Inherits="flow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <div>
        <section class="l-section is-xxxlg">
            <div class="l-container">
                <p class="u-text-center u-mbs is-bottom">※お見積り金額が7万円（税別）に満たない場合、一律で7万円（税別）でのご案内となります。あらかじめご了承ください。</p>
                <div class="c-flow-flex">
                    <div class="c-flow-flex__list">
                        <div class="c-flow-flex__item">
                            <div class="c-flow-flex__number">05</div>
                            <div class="c-flow-flex__content">
                                <div class="c-flow-flex__title">正式お見積り</div>
                                <div class="c-flow-flex__text">原本の数量および状態を確認し、サービス仕様を説明した上で、正式のお見積もりをご案内いたします。</div>
                            </div>
                        </div>

                        <div class="c-flow-flex__item">
                            <div class="c-flow-flex__number">06</div>
                            <div class="c-flow-flex__content">
                                <div class="c-flow-flex__title">データ入力作業</div>
                                <div class="c-flow-flex__text">
                                    お客様からのご要望やご希望、サービス仕様にもとづいて、データ入力を施工いたします。<br />
                                    <br />
                                    （１）プログラム作成<br />
                                    データ入力仕様書作成、入力フォーマット作成（受領）、入力テスト<br />
                                    <br />
                                    （２）デリバリー（受領）<br />
                                    入稿、集荷、数量確認、状態確認、装備・設備のチェック<br />
                                    <br />
                                    （３）前作業<br />
                                    バッチ分け、顧客から要求された付属作業<br />
                                    <br />
                                    （４）入力作業<br />
                                    仕様の指示、習熟度合いの確認、着手後の不具合QA出し<br />
                                    <br />
                                    （５）終作業<br />
                                    バッチ戻し、終了の確認<br />
                                    <br />
                                    （６）成果物の作成<br />
                                    仕様に沿った成果物の作成、中間ファイルの削除、入力データ検品・ロジックチェック<br />
                                    <br />
                                    （７）デリバリー（返却）<br />
                                    成果物(媒体)の納品、原稿の返却、廃棄・溶解処分<br />
                                    <br />
                                    （８）納品・保管<br />
                                    原稿保管、データ消去
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="c-flow-flex div-flow">
                    <div class="c-flow-flex__list">
                        <div class="c-flow-flex__item">
                            <img class="img-flow-01" src="App_Themes/upload/2024/09/flow-01.png" />
                        </div>
                    </div>


                </div>
                <div class="c-banner-simple  is-faq u-mbs is-xlg is-top">
                    <div class="c-banner-simple__inner">
                        <h2 class="c-banner-simple__title">納期目安は<br class="u-visible-sm" />
                            各サービスをご覧ください</h2>
                        <div class="c-banner-simple__text  c-lead">※原本状態や混雑具合等により納期が変動致します。詳しくはお問合せください。</div>
                        <div class="c-banner-simple__button"><a class="c-button" href="index">データ入力サービス一覧へ</a></div>
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
    <link href="<%=ResolveUrl("~/App_Themes/flow/flow-page.css?ver=1.0.0.0")%>" rel="stylesheet" type='text/css' />
</asp:Content>

