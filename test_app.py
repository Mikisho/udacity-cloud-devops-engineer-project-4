from app import app


def test_home():
    res = app.test_client().get("/")

    assert res.status_code == 200
    assert "Sklearn Prediction Home" in res.data


def test_predict():
    res = app.test_client().post(
        "/predict",
        data={
            "CHAS": {"0": 0},
            "RM": {"0": 6.575},
            "TAX": {"0": 296.0},
            "PTRATIO": {"0": 15.3},
            "B": {"0": 396.9},
            "LSTAT": {"0": 4.98},
        },
    )

    assert res.status_code == 200
