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
                                <div class="c-flow-flex__title">LEON II được thành lập vào tháng 7 năm 2022. </div>
                                <div class="c-flow-flex__text">
                                    Mặc dù mới được thành lập tuy nhiên Leon II có đội ngũ kỹ sư nhiều năm kinh nghiệm làm việc tại Nhật, cung cấp giải pháp<br />
                                    <br />
                                    Chúng tôi mang đến đa dạng dịch vụ cho khách hàng bao gồm: <br />
                                    （１）Phát triển Website & Ứng dụng<br /><br />
                                    （２）Tư vấn Giải pháp Chuyển đổi số Doanh nghiệp<br /><br />
                                    （３）Phát triển hệ thống tích hợp IoT<br /><br />
                                    （４）Cung cấp trang thiết bị văn phòng, trường học<br /><br />
                                    Với phương châm “Behind your success”, LEON II tự tin là đơn vị cung cấp dịch vụ/giải pháp CNTT uy tín, tối ưu hóa và kiến tạo giá trị riêng cho doanh nghiệp của bạn
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

