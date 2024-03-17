var app = angular.module('app', []);
var scope = null;

app.controller('masterController', function ($scope, $sce) {
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

    $scope.convertDateTime = function (value) {
        if (value !== null && value !== '') {
            return value.length < 2 ? '0' + value : value;
        }
        return value;
    };

    $scope.days = ''
    $scope.month = '';
    $scope.bShow = false;

    $scope.getCurrent = function () {
        let current = new Date();
        $scope.days = $scope.convertDateTime(current.getDate().toString());
        $scope.month = $scope.convertDateTime((current.getMonth() + 1).toString());
        $scope.updateUI();

        if (!$scope.bShow) {
            this.document.getElementById('headerCount').style.visibility = 'visible';
            $scope.bShow = true;
        }
    };

    setInterval($scope.getCurrent, 1000);
});