<%@ Page Title="Liên hệ | LEON 2" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceBody" runat="Server">
    <div data-ng-app="app">
        <div data-ng-controller="contactController">
            <section class="l-section is-lg is-bg-color">
                <div class="l-container">
                    <div>
                        <div class="c-form-head">
                            <div class="c-form-head__block">
                                <div class="c-form-head__title">お問い合わせ・お見積り</div>
                                <div class="c-form-head__list">
                                    <div class="c-form-head__item is-current" id="item_1">
                                        <div class="c-form-head__item-number">1</div>
                                        <div class="c-form-head__item-text">Nhập thông tin</div>
                                    </div>
                                    
                                    <div class="c-form-head__item" id="item_2">
                                        <div class="c-form-head__item-number">2</div>
                                        <div class="c-form-head__item-text">Hoàn thành</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="c-forms">
                        <div class="row">
                            <div class="large-10 is-push-lg-1 small-12">
                                <div id="mw_wp_form_mw-wp-form-7" class="mw_wp_form mw_wp_form_input" data-ng-show="bShowInfo">
                                    <div class="c-forms__text">お問い合わせ・お見積りなどのご相談は、下記のフォームに必要項目を入力しご送信ください。</div>

                                    <div class="c-forms__block">
                                        <div class="c-forms__title">Tên công ty</div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="貴社名" size="60"  placeholder="株式会社カンパニー" data-ng-model="company" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">Chức vụ</div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="部署" size="60"  placeholder="営業部営業一課" data-ng-model="department" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">Người liên hệ<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="ご担当者氏名" size="60"  placeholder="山田　太郎" data-ng-model="personname" />
                                                <span data-ng-show="bPersonname">Hãy nhập thông tin</span>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">Điện thoại<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" size="60" placeholder="123-456-789" data-ng-model="phone" />
                                                <span data-ng-show="bPhone">Hãy nhập thông tin</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">Email<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="メールアドレス" size="60" placeholder="info@mail.com" data-ng-model="email" />
                                                <span id="val-email" data-ng-show="bEmail">{{messageErrorEmail}}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title is-vertical-top">File đính kèm</div>
                                        <div class="c-forms__content">
                                            <p>
                                                <small class="u-hidden-mw-wp-confirm">※サンプルや参考資料などありましたら添付してください<br />
                                                    ※大変申し訳ございませんが合計3MBを超える場合には、添付エラーになる場合がございます（ご連絡ください）
                                                </small>
                                            </p>
                                            <div class="c-forms__file">
                                                <input type="file" name="アップロード機能" id="fileupload" />
                                                <span data-mwform-file-delete="アップロード機能" class="mwform-file-delete">&times;</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title is-vertical-top">Nội dụng liên hệ</div>
                                        <div class="c-forms__content">
                                            <p><small class="u-hidden-mw-wp-confirm">データ化する原本（冊子・名簿など）、数量、ご希望納期、その他ご要望をご記入ください。</small></p>
                                            <div class="c-forms__textarea">
                                                <textarea name="お問い合わせ内容" cols="50" rows="5" placeholder="お問い合わせ内容をご記入ください" data-ng-model="content"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__submit">
                                        <button type="button" name="submit" value="send" class="c-button is-xlg" data-ng-click="send()">Send Mail</button>
                                    </div>
                                </div>

                                <div class="c-forms__inner" data-ng-show="!bShowInfo">
                                    <div class="row">
                                        <div class="large-10 is-push-lg-1 small-12">
                                            <div class="c-forms__heading c-heading is-md is-normal u-text-center is-bottom">
                                                お問い合わせ<br class="u-hidden-lg">
                                                ありがとうございました。
                                            </div>
                                            <div class="c-forms__text">
                                                この度はお問い合わせいただき、誠にありがとうございます。<br>
                                                いただいた内容を確認後、担当者より再度ご連絡いたします。<br>
                                                大変恐縮ですが、今しばらくお待ちくださいませ。<br>
                                                <br>
                                                <p>
                                                    ※尚、ご入力いただいたメールアドレス宛に<br class="u-hidden-sm">
                                                    お問い合わせ内容を記載した自動返信メールが配信されております。<br>
                                                    そちらも併せてご確認くださいませ。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div data-ng-if="!bShowInfo" class="c-forms__pagetop u-text-center"><a class="c-button is-xlg" href="/">トップページに戻る</a></div>
                                <div style="height: 105px"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceBodyFooter" runat="Server">
    <script src="<%=ResolveUrl("~/Scripts/contactPage.js?ver=1.0.0.0")%>"></script>
    <link href="<%=ResolveUrl("~/App_Themes/contact/contact-page.css?ver=1.0.0.0")%>" rel="stylesheet" type='text/css' />
</asp:Content>

