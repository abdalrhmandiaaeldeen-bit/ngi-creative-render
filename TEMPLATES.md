# Templates

`POST /render` with `{ "template": "<name>", "photoBase64": "<base64, no data: prefix>", ...fields }` returns a 1080x1350 PNG.
`GET /templates` lists the names. Every `templates/<name>.html` is a template; `templates/_base.css` and the bundled
fonts (`fonts/`, Playfair Display + Montserrat, SIL OFL) are injected into all of them.

The new templates (offer … luxury) show the **whole photo** (`object-fit: contain` over a blurred copy), so the NGI logo
printed on the clean photo is never cut and the templates add no logo of their own. Empty fields simply disappear.

| Template | Use it when | Fields |
|---|---|---|
| `offer` | the project has a discount / offer | `kicker`, `offerBig` ("20%"), `offerUnit` ("OFF"), `offerText`, `specsText`, `priceText` |
| `payment` | there is a down payment + installment years | `kicker`, `headline`, `dpPercent` ("10%"), `yearsText` ("4"), `priceShort` ("EGP 2.96M"), `specsText` |
| `investment` | studio / 1 bedroom | `kicker`, `highlight`, `typeLabel`, `areaText`, `city`, `priceText` |
| `family` | 2+ bedrooms | `kicker`, `headline`, `bedsText`, `areaText`, `city`, `priceText` |
| `commercial` | office / shop / clinic | `kicker`, `headline`, `highlight`, `specsText`, `priceText` |
| `features` | the project has amenities | `kicker`, `headline`, `feat1`…`feat6`, `priceText` |
| `location` | the project has distances (`nearby`) | `kicker`, `locationText`, `dist1Min`/`dist1Place` … `dist3Min`/`dist3Place`, `typeLabel`, `priceText` |
| `luxury` | a high-quality exterior photo | `highlight`, `typeLabel`, `city`, `priceText` |
| `pricecard` | default (photo pre-fitted by n8n) | `priceLabel`, `priceText`, `paymentRow`, `specsText`, `logoVisibility` ("hidden") |
| `highlight`, `lifestyle` | older templates | see the files |

All templates also take `website` and `phone` (defaults: www.ngiproperty.com, +20 122 444 9009).
