<%@ Page Title="Về chúng tôi | LEON 2" Language="C#" MasterPageFile="~/LayoutPage.master" AutoEventWireup="true" CodeFile="flow.aspx.cs" Inherits="flow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <div>
        <section class="l-section is-xxxlg">
            <div class="l-container">
                <div class="c-flow-flex">
                    <div class="c-flow-flex__list">
                        <div class="c-flow-flex__item">
                            <div class="c-flow-flex__number">06</div>
                            <div class="c-flow-flex__content">
                                <div class="c-flow-flex__title">LEON II được thành lập vào tháng 7 năm 2022. </div>
                                <div class="c-flow-flex__text">
                                    Mặc dù mới được thành lập tuy nhiên Leon II có đội ngũ kỹ sư nhiều năm kinh nghiệm làm việc tại Nhật, cung cấp giải pháp<br />
                                    <br />
                                    Chúng tôi mang đến đa dạng dịch vụ cho khách hàng bao gồm:
                                    <br />
                                    （１）Phát triển Website & Ứng dụng<br />
                                    <br />
                                    （２）Tư vấn Giải pháp Chuyển đổi số Doanh nghiệp<br />
                                    <br />
                                    （３）Phát triển hệ thống tích hợp IoT<br />
                                    <br />
                                    （４）Cung cấp trang thiết bị văn phòng, trường học<br />
                                    <br />
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
                <div class="c-banner-simple  is-margin">
                    <div class="c-banner-simple__inner">
                        <h2 class="c-banner-simple__title">Hãy cùng chúng tôi kiến tạo giá trị khác biệt</h2>
                        <div class="c-banner-simple__content">
                            <div class="c-banner-simple__tels">
                                <a class="c-banner-simple__tel" href="tel:0120-269-356">
                                    <img decoding="async" src="App_Themes/uluru-data-html/dist/assets/images/img-tel-black.png" alt="" />
                                    0866-507-268 </a><small>Giờ làm việc : 09:00 ~ 18:00 </small>
                            </div>
                            <a class="c-banner-simple__button c-button is-gradient" href="/contact">Liên hệ & Đặt lịch tư vấn</a>
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
    <link href="<%=ResolveUrl("~/App_Themes/flow/flow-page.css?ver=1.0.0.0")%>" rel="stylesheet" type='text/css' />
</asp:Content>

