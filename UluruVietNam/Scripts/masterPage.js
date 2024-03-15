var app = angular.module('app', []);
var scope = null;

app.controller('masterController', function ($scope) {
    console.log('masterPage');

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

    let currentInit = new Date();

    $scope.seconds = $scope.convertDateTime(currentInit.getSeconds().toString());
    $scope.minutes = $scope.convertDateTime(currentInit.getMinutes().toString());
    $scope.hours = $scope.convertDateTime(currentInit.getHours().toString());
    $scope.days = $scope.convertDateTime(currentInit.getDate().toString());
    $scope.month = $scope.convertDateTime((currentInit.getMonth() + 1).toString());
    $scope.year = currentInit.getFullYear();

    $scope.getCurrent = function () {
        let current = new Date();
        $scope.seconds = $scope.convertDateTime(current.getSeconds().toString());
        $scope.minutes = $scope.convertDateTime(current.getMinutes().toString());
        $scope.hours = $scope.convertDateTime(current.getHours().toString());
        $scope.days = $scope.convertDateTime(current.getDate().toString());
        $scope.month = $scope.convertDateTime((current.getMonth() + 1).toString());
        $scope.year = current.getFullYear();


        $scope.updateUI();
    };

    

    

    setInterval($scope.getCurrent, 1000);
});

window.addEventListener('load', function () {
    console.log('load');
});
