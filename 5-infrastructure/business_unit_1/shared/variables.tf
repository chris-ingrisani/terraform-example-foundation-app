/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "app_cicd_build_sa" {
  description = "Service account email of the account to impersonate to run Terraform"
  type        = string
}

variable "app_cicd_repos" {
  description = "A list of Cloud Source Repos to be created to hold app infra Terraform configs"
  type        = list(string)
  default     = ["root-config-repo", "accounts", "transactions", "frontend"]
}

variable "app_cicd_project_id" {
  type        = string
  description = "Project ID for CICD Pipeline Project"
}

variable "primary_location" {
  type        = string
  description = "Region used for key-ring"
  default     = "us-east1"
}

variable "attestor_names" {
  description = "A list of Cloud Source Repos to be created to hold app infra Terraform configs"
  type        = list(string)
  default     = ["build", "quality", "security"]
}

variable "cloudbuild_yaml" {
  type        = string
  description = "Name of cloudbuild file"
  default     = "cloudbuild.yaml"
}
