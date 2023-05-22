
# Geocoding #

<img align='left' src="geo_icon.png" width="188">

Author: *Xinzhuo Huang*

Version: 0.1.1

<br>
<br>
<br>
<br>
<br>
<br>
<br>


## Install this package

```
remotes::install_github("xinzhuohkust/Geocoding")
```
## Usage
### geocoding
```
Geocoding::get_MCT("国家信访局") |>
  Geocoding::convert_MCT() 
```
### reverse geocoding
```
Geocoding::get_MCT("国家信访局") |>
  Geocoding::get_admin_info(uid = TRUE)
```
### train planning
```
Geocoding::train_plan(
  origin = Geocoding::get_MCT("安徽省六安市裕安区") |> Geocoding::convert_MCT(),
  destination = Geocoding::get_MCT("国家信访局") |> Geocoding::convert_MCT(),
  sleep = 0.5,
  ak = "your ak"
)
```
## Visulation (coming soon)
interactive map and 3D map



