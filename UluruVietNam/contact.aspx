<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

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
                                    <div class="c-form-head__item is-current">
                                        <div class="c-form-head__item-number">1</div>
                                        <div class="c-form-head__item-text">お客様情報入力</div>
                                    </div>
                                    <div class="c-form-head__item">
                                        <div class="c-form-head__item-number">2</div>
                                        <div class="c-form-head__item-text">入力内容の確認</div>
                                    </div>
                                    <div class="c-form-head__item">
                                        <div class="c-form-head__item-number">3</div>
                                        <div class="c-form-head__item-text">送信完了</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="c-forms">
                        <div class="c-forms__text">お問い合わせ・お見積りなどのご相談は、下記のフォームに必要項目を入力しご送信ください。</div>
                        <div class="row">
                            <div class="large-10 is-push-lg-1 small-12">
                                <div id="mw_wp_form_mw-wp-form-7" class="mw_wp_form mw_wp_form_input  ">
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">貴社名</div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="貴社名" size="60" value="" placeholder="株式会社カンパニー" data-ng-model="company" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">部署</div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="部署" size="60" value="" placeholder="営業部営業一課" data-ng-model="department" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">ご担当者氏名<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="ご担当者氏名" size="60" value="" placeholder="山田　太郎" data-ng-model="personname" />
                                                <span data-ng-show="bPersonname">未入力です。</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">フリガナ<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="フリガナ" size="60" value="" placeholder="ヤマダ　タロウ" data-ng-model="furigana" />
                                                <span data-ng-show="bFurigana">未入力です。</span>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">TEL<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" size="60" placeholder="123-456-789" data-ng-model="phone" />
                                                <span data-ng-show="bPhone">未入力です。</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title">メールアドレス<span class="c-forms__label">必須</span></div>
                                        <div class="c-forms__content">
                                            <div class="c-forms__input">
                                                <input type="text" name="メールアドレス" size="60" placeholder="info@mail.com" data-ng-model="email" />
                                                <span id="val-email" data-ng-show="bEmail">{{messageErrorEmail}}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title is-vertical-top">アップロード機能</div>
                                        <div class="c-forms__content">
                                            <p>
                                                <small class="u-hidden-mw-wp-confirm">※サンプルや参考資料などありましたら添付してください<br />
                                                    ※大変申し訳ございませんが合計3MBを超える場合には、添付エラーになる場合がございます（ご連絡ください）
                                                </small>
                                            </p>
                                            <div class="c-forms__file">
                                                <input type="file" name="アップロード機能" />
                                                <span data-mwform-file-delete="アップロード機能" class="mwform-file-delete">&times;</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__block">
                                        <div class="c-forms__title is-vertical-top">お問い合わせ内容</div>
                                        <div class="c-forms__content">
                                            <p><small class="u-hidden-mw-wp-confirm">データ化する原本（冊子・名簿など）、数量、ご希望納期、その他ご要望をご記入ください。</small></p>
                                            <div class="c-forms__textarea">
                                                <textarea name="お問い合わせ内容" cols="50" rows="5" placeholder="お問い合わせ内容をご記入ください" data-ng-model="content"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="c-forms__privacy">
                                        <label>
                                            <span class="mwform-checkbox-field horizontal-item">
                                                <label for="privacy-policy-1">
                                                    <input type="checkbox" name="個人情報保護方針[data][]" value=" " id="privacy-policy-1" data-ng-model="chkAccept" />
                                                    <span class="mwform-checkbox-field-text"></span>
                                                </label>
                                            </span>

                                            <input type="hidden" name="個人情報保護方針[separator]" value="," />

                                            <input type="hidden" name="__children[個人情報保護方針][]" value="{&quot; &quot;:&quot; &quot;}" />
                                            <a href="~/index.aspx" target="_blank" rel="noopener">個人情報保護方針</a>の内容に同意する
                                        </label>
                                        <div>
                                            <span data-ng-show="bAccept">未入力です。</span>
                                        </div>
                                    </div>
                                    <div class="c-forms__submit">
                                        <button type="button" name="submit" value="send" class="c-button is-xlg" data-ng-click="send()">送信する</button>
                                    </div>
                                </div>
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

