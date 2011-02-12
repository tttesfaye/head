/*
 * Copyright Grameen Foundation USA
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * See also http://www.apache.org/licenses/LICENSE-2.0.html for an
 * explanation of the license and how it is applied.
 */

package org.mifos.test.acceptance.framework.group;

public enum GroupStatus {

    PARTIAL ("Partial Application", 7),
    PENDING_APPROVAL ("Application Pending Approval", 8),
    ACTIVE ("Active", 9),
    ON_HOLD ("On Hold", 10),
    CANCELLED ("Cancelled", 11),
    CLOSED ("Closed", 12);

    private final String statusText;
    private final Integer id;

    private GroupStatus(String statusText, Integer id) {
        this.statusText = statusText;
        this.id = id;
    }

    public String getStatusText() {
        return this.statusText;
    }

    public Integer getId() {
        return this.id;
    }

}
