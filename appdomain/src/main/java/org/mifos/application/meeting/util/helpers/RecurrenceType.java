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

package org.mifos.application.meeting.util.helpers;

public enum RecurrenceType {
    WEEKLY(Short.valueOf("1")), MONTHLY(Short.valueOf("2")), DAILY(Short.valueOf("3"));

    private Short value;

    private RecurrenceType(Short value) {
        this.value = value;
    }

    public Short getValue() {
        return value;
    }

    public static RecurrenceType fromInt(Short target) {
        for (RecurrenceType frequency : RecurrenceType.values()) {
            if (frequency.getValue().equals(target)) {
                return frequency;
            }
        }
        throw new RuntimeException("no recurrence type " + target);
    }

}
