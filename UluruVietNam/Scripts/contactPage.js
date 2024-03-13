var app = angular.module('app', []);
var scope = null;

app.controller('contactController', function ($scope) {
    console.log('contactPage');

    this.scope = $scope;

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

    $scope.checkRequire = function (info) {
        if (info === undefined || info === null || info.length == 0) {
            return false;
        }
        return true;
    };

    $scope.validateEmail = function (email) {
        if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
            return (true)
        }
        return (false)
    };

    $scope.company = '';
    $scope.department = '';
    $scope.personname = '';
    $scope.furigana = '';
    $scope.phone = '';
    $scope.email = '';
    $scope.content = '';
    $scope.chkAccept = false;
    $scope.bPersonname = false;
    $scope.bFurigana = false;
    $scope.bPhone = false;
    $scope.bEmail = false;
    $scope.bAccept = false;
    $scope.messageErrorEmail = '未入力です。';

    $scope.send = function () {
        let bValidate = $scope.validate();

        if (!bValidate) {
            console.log('validate: ' + bValidate);
            return;
        }
    };

    $scope.validate = function () {
        $scope.bPersonname = false;
        $scope.bFurigana = false;
        $scope.bPhone = false;
        $scope.bEmail = false;
        $scope.bAccept = false;

        let validate = true;

        validate = $scope.checkRequire($scope.personname);
        if (!validate) $scope.bPersonname = true;

        validate = $scope.checkRequire($scope.furigana);
        if (!validate) $scope.bFurigana = true;

        validate = $scope.checkRequire($scope.phone);
        if (!validate) $scope.bPhone = true;

        debugger;
        validate = $scope.checkRequire($scope.email);
        if (!validate) {
            $scope.bEmail = true;
            $scope.messageErrorEmail = '未入力です。';
        }

        if ($scope.checkRequire($scope.email)) {
            let valEmail = $scope.validateEmail($scope.email);
            if (!valEmail) {
                $scope.messageErrorEmail = 'メールアドレスの形式ではありません。';
                $scope.bEmail = true;
            }
        }

        if (!$scope.chkAccept) {
            validate = false;
            $scope.bAccept = true;
        }

        return validate;
    };
});

