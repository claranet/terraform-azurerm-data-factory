## 8.1.1 (2025-09-30)

### Code Refactoring

* **deps:** 🔗 update claranet/azurecaf to ~> 1.3.0 🔧 8da5c10

### Miscellaneous Chores

* **⚙️:** ✏️ update template identifier for MR review 900657c
* 🗑️ remove old commitlint configuration files 310a941
* **deps:** 🔗 bump AzureRM provider version to v4.31+ 5065b1c
* **deps:** update dependency claranet/diagnostic-settings/azurerm to ~> 8.1.0 b394293
* **deps:** update dependency opentofu to v1.10.0 7c9748b
* **deps:** update dependency opentofu to v1.10.1 899074b
* **deps:** update dependency opentofu to v1.10.3 e0a1d26
* **deps:** update dependency opentofu to v1.10.6 1b4ee69
* **deps:** update dependency tflint to v0.58.0 972f719
* **deps:** update dependency tflint to v0.58.1 6265e09
* **deps:** update dependency tflint to v0.59.1 44292c2
* **deps:** update dependency trivy to v0.63.0 daf737e
* **deps:** update dependency trivy to v0.66.0 636a380
* **deps:** update dependency trivy to v0.67.0 d2b9534
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v6 3689b21
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.1 4e6f3b7
* **deps:** update terraform claranet/diagnostic-settings/azurerm to ~> 8.2.0 5fa2543
* **deps:** update tools 6258d5b
* **deps:** update tools ff70b7f
* **deps:** update tools 7d41756

## 8.1.0 (2025-05-15)

### Features

* added support for user_assign identity to ADF 0731a6a
* **data-factory:** ✨ add identity configuration options 9d26167

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.9.1 cc6ae62
* **deps:** update dependency pre-commit to v4.2.0 9498dec
* **deps:** update dependency terraform-docs to v0.20.0 c3a1798
* **deps:** update dependency tflint to v0.57.0 9aa8c6c
* **deps:** update dependency trivy to v0.61.1 c1a2d06
* **deps:** update dependency trivy to v0.62.0 dd21c8b
* **deps:** update dependency trivy to v0.62.1 241f838
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.22.0 de406f9
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.2.0 d7b6cc8
* **deps:** update tools d7a0d0c

## 8.0.0 (2025-03-07)

### ⚠ BREAKING CHANGES

* **AZ-1088:** AzureRM Provider v4+ and OpenTofu 1.8+

### Features

* **AZ-1088:** module v8 structure and updates 9fc227e

### Documentation

* fix naming 5da5254

### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.8.4 efca214
* **deps:** update dependency opentofu to v1.8.6 ee48c3b
* **deps:** update dependency opentofu to v1.8.8 3d0f0f7
* **deps:** update dependency opentofu to v1.9.0 22516ee
* **deps:** update dependency pre-commit to v4.0.1 4e8e2ef
* **deps:** update dependency pre-commit to v4.1.0 42e93f1
* **deps:** update dependency tflint to v0.54.0 1b787be
* **deps:** update dependency tflint to v0.55.0 ebb52d3
* **deps:** update dependency trivy to v0.56.2 242d03a
* **deps:** update dependency trivy to v0.57.1 895af16
* **deps:** update dependency trivy to v0.58.1 9e69846
* **deps:** update dependency trivy to v0.58.2 de83e39
* **deps:** update dependency trivy to v0.59.1 4203642
* **deps:** update dependency trivy to v0.60.0 910a9ab
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.19.0 8245603
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.20.0 29d9ddf
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.21.0 bcbae17
* **deps:** update pre-commit hook tofuutils/pre-commit-opentofu to v2.1.0 d2056bb
* **deps:** update tools 0f428ba
* **deps:** update tools 039d4cc
* **deps:** update tools db9c212
* update Github templates 51c7148
* update tflint config for v0.55.0 75bb0be

## 7.0.0 (2024-10-08)

### ⚠ BREAKING CHANGES

* **AZ-840:** AzureRM provider v3+ required

### Features

* **AZ-840:** prepare `v7.0` 47fb0ba

### Miscellaneous Chores

* **deps:** update dependency claranet/diagnostic-settings/azurerm to v7 29257cf
* **deps:** update dependency opentofu to v1.8.3 e576849
* **deps:** update dependency pre-commit to v4 bc5a463
* **deps:** update dependency trivy to v0.56.1 8433fd5
* **deps:** update pre-commit hook pre-commit/pre-commit-hooks to v5 a6c3781
* prepare for new examples structure 46537cb

## 6.4.0 (2024-10-03)

### Features

* use Claranet "azurecaf" provider 4eeff44

### Documentation

* update README badge to use OpenTofu registry 00236ae
* update README with `terraform-docs` v0.19.0 b7ab387

### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] 426d3ff
* **AZ-1391:** update semantic-release config [skip ci] 2d07fc4

### Miscellaneous Chores

* **deps:** add renovate.json f998e8f
* **deps:** enable automerge on renovate db82f4b
* **deps:** update dependency opentofu to v1.7.0 719cf2a
* **deps:** update dependency opentofu to v1.7.1 9085904
* **deps:** update dependency opentofu to v1.7.2 edb89a9
* **deps:** update dependency opentofu to v1.7.3 8260b5c
* **deps:** update dependency opentofu to v1.8.0 91ee63e
* **deps:** update dependency opentofu to v1.8.1 36f34d9
* **deps:** update dependency opentofu to v1.8.2 a2ac62e
* **deps:** update dependency pre-commit to v3.7.1 9d414e8
* **deps:** update dependency pre-commit to v3.8.0 85ef2fc
* **deps:** update dependency terraform-docs to v0.18.0 ab4bfe6
* **deps:** update dependency tflint to v0.51.0 e4ef5d5
* **deps:** update dependency tflint to v0.51.1 ab76da8
* **deps:** update dependency tflint to v0.51.2 f92c77f
* **deps:** update dependency tflint to v0.52.0 9e2b2c6
* **deps:** update dependency tflint to v0.53.0 7eb4f06
* **deps:** update dependency trivy to v0.50.2 a5c60c2
* **deps:** update dependency trivy to v0.50.4 64fddee
* **deps:** update dependency trivy to v0.51.0 a61ef34
* **deps:** update dependency trivy to v0.51.1 98b3636
* **deps:** update dependency trivy to v0.51.2 dd48eae
* **deps:** update dependency trivy to v0.51.4 6839b10
* **deps:** update dependency trivy to v0.52.0 a06669f
* **deps:** update dependency trivy to v0.52.1 5e250aa
* **deps:** update dependency trivy to v0.52.2 ead8510
* **deps:** update dependency trivy to v0.53.0 72a40a3
* **deps:** update dependency trivy to v0.55.0 24fb75b
* **deps:** update dependency trivy to v0.55.1 2248aad
* **deps:** update dependency trivy to v0.55.2 27f2786
* **deps:** update dependency trivy to v0.56.0 8832960
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.17.0 fd3ad8f
* **deps:** update pre-commit hook alessandrojcm/commitlint-pre-commit-hook to v9.18.0 6fde4ad
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 c16f52b
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.2 927d10f
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.3 4c279e5
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.93.0 47a49d3
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.0 004bf8e
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.1 e24fae9
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.2 ad8434c
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.94.3 8362c98
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.95.0 ee32367
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.96.0 3f837eb
* **deps:** update renovate.json 6430d98
* **deps:** update tools e8baec3
* **deps:** update tools 84a0098
* **pre-commit:** update commitlint hook e38be29
* **release:** remove legacy `VERSION` file d8c9a8f

# v6.3.0 - 2024-01-05

Changed
  * AZ-993: Bump diagnostic-settings module

# v6.2.0 - 2023-12-29

Changed
  * AZ-993: Bump diagnostic-settings module
  * AZ-1039: Update example

# v6.1.0 - 2022-11-10

Changed
  * AZ-901: Change default value for `public_network_enabled` variable to `false`

# v6.0.0 - 2022-06-03

Breaking
  * AZ-717: Update to azurerm provider v3

# v5.0.0 - 2022-02-04

Added
  * AZ-615: Add an option to enable or disable default tags

Changed
  * AZ-612: Change Azure provider minimum version to v2.76. `cleanup_enabled` option was implemented by this provider version in `azurerm_data_factory_integration_runtime_azure` resource
  * AZ-589: Bump `diagnostics` to v5

Added
  * AZ-612: Add integration runtime resource to module
  * AZ-563: Initialize Azure Data Factory module
