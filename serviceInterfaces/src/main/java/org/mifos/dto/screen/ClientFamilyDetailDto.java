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

package org.mifos.dto.screen;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("PMD")
@edu.umd.cs.findbugs.annotations.SuppressWarnings(value={"SE_NO_SERIALVERSIONID"}, justification="should disable at filter level and also for pmd - not important for us")
public class ClientFamilyDetailDto implements Serializable  {

    private Short relationship;
    private Short gender;
    private Short livingStatus;
    private Date dateOfBirth;
    private String displayName;
    private String dateOfBirthForBrowser;

    public ClientFamilyDetailDto(Short relationship, Short gender, Short livingStatus, Date dateOfBirth) {
        super();
        this.relationship = relationship;
        this.gender = gender;
        this.livingStatus = livingStatus;
        this.dateOfBirth = dateOfBirth;
    }

    public Short getRelationship() {
        return this.relationship;
    }

    public void setRelationship(Short relationship) {
        this.relationship = relationship;
    }

    public Short getGender() {
        return this.gender;
    }

    public void setGender(Short gender) {
        this.gender = gender;
    }

    public Short getLivingStatus() {
        return this.livingStatus;
    }

    public void setLivingStatus(Short livingStatus) {
        this.livingStatus = livingStatus;
    }

    public Date getDateOfBirth() {
        return this.dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDateOfBirthForBrowser() {
        return this.dateOfBirthForBrowser;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public void setDateOfBirthForBrowser(String dateOfBirthForBrowser) {
        this.dateOfBirthForBrowser = dateOfBirthForBrowser;
    }
}