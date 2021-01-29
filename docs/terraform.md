## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| iam\_role\_name | The name for the created role. Conceptually, this should correspond to a group. | `string` | n/a | yes |
| mfa\_condition | MFA condition method. Use either Bool or BoolIfExists | `string` | `"Bool"` | no |
| require\_mfa | Whether the created policy will include MFA. | `bool` | `false` | no |
| role\_assumption\_max\_duration | Max duration that the assumed role is assumed for Must be between 3600 and 43200 (including) | `number` | `3600` | no |
| source\_accounts | accounts that will be allowed to decrypt the shared AMIs. key should be the account name | <pre>map(object({<br>    id = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_name | The name of the created role. |

