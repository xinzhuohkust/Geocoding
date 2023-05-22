# Geocoding #

Author: *Xinzhuo Huang*

## Install this package

```
remotes::install_github("xinzhuohkust/Geocoding")
```
## Usage
```
Geocoding::get_MCT("国家信访局") |>
  Geocoding::convert_MCT() 
```
```
Geocoding::get_MCT("国家信访局") |>
  Geocoding::get_admin_info(uid = TRUE)
```
```
Geocoding::train_plan(
  origin = Geocoding::get_MCT("安徽省六安市裕安区") |> Geocoding::convert_MCT(),
  destination = Geocoding::get_MCT("国家信访局") |> Geocoding::convert_MCT(),
  sleep = 0.5,
  ak = "your ak"
)
```

<img align='left' src="geo_icon.png" width="188">


