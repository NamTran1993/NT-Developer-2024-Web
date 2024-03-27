var app = angular.module('app', []);
var scope = null;

app.controller('contactController', function ($scope) {
    this.scope = $scope;

    $scope.urlPostData = '../Ajax/POSTData.ashx';
    $scope.applyDelay = null;
    $scope.updateUI = function () {
        try {
            if ($scope.applyDelay !== null) {
                clearTimeout($scope.applyDelay);
            }

            $scope.applyDelay = setTimeout(function () {
                $scope.$apply();
                loadingUI.Close();
            }, 500);
        }
        catch (e) {
            console.log('$scope.applyDelay Exception:');
        }
    };

    $scope.uuidv4 = function () {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
            .replace(/[xy]/g, function (c) {
                const r = Math.random() * 16 | 0,
                    v = c == 'x' ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
    };

    $scope.checkRequire = function (info) {
        if (info === undefined || info === null || info.length == 0) {
            return false;
        }
        return true;
    };

    $scope.validateEmail = function (email) {
        var re = /\S+@\S+\.\S+/;
        return re.test(email);
    };

    $scope.bShowInfo = true;
    $scope.company = '';
    $scope.department = '';
    $scope.personname = '';
    $scope.phone = '';
    $scope.email = '';
    $scope.content = '';
    $scope.bPersonname = false;
    $scope.bFurigana = false;
    $scope.bPhone = false;
    $scope.bEmail = false;
    $scope.messageErrorEmail = 'Hãy nhập thông tin';

    $scope.send = function () {
        let bValidate = $scope.validate();

        if (!bValidate) {
            console.log('validate: ' + bValidate);
            return;
        }

        document.getElementById('item_1').className = 'c-form-head__item';
        document.getElementById('item_2').className = 'c-form-head__item is-current';

        var formData = new FormData();
        var files = document.getElementById('fileupload').files;
        if (files.length > 0) {
            for (var i = 0; i < files.length; i++) {
                formData.append("file-" + i, files[i]);
            }
        }

        let jsonReq = {
            'company': $scope.company,
            'department': $scope.department,
            'personname': $scope.personname,
            'furigana': $scope.furigana,
            'phone': $scope.phone,
            'email': $scope.email,
            'content': $scope.content,
            'guid': $scope.uuidv4()
        };

        formData.append("info", JSON.stringify(jsonReq));

        $.ajax({
            type: "POST",
            url: $scope.urlPostData + "?func=SEND-CONTACT",
            data: formData,
            contentType: false,
            processData: false,

            beforeSend: function () {
                $scope.bShowInfo = false;
            },

            success: function (jsonRes) {
                try {
                } catch (e) {
                    console.error('=>> ERROR: ' + e);
                }
            },

            error: function (xhr, textStatus, error) {
            }
        });
    };

    $scope.validate = function () {
        $scope.bPersonname = false;
        $scope.bFurigana = false;
        $scope.bPhone = false;
        $scope.bEmail = false;

        let validate = true;

        validate = $scope.checkRequire($scope.personname);
        if (!validate) $scope.bPersonname = true;

        validate = $scope.checkRequire($scope.furigana);
        if (!validate) $scope.bFurigana = true;

        validate = $scope.checkRequire($scope.phone);
        if (!validate) $scope.bPhone = true;

        validate = $scope.checkRequire($scope.email);
        if (!validate) {
            $scope.bEmail = true;
            $scope.messageErrorEmail = 'Hãy nhập thông tin';
        }

        if ($scope.checkRequire($scope.email)) {
            let valEmail = $scope.validateEmail($scope.email);
            if (!valEmail) {
                validate = false;
                $scope.messageErrorEmail = 'Hãy nhập đúng định dạng';
                $scope.bEmail = true;
            }
        }

        return validate;
    };
});