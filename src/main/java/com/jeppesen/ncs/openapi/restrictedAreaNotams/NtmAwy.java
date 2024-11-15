package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * The airway to which the NOTAM relates.
 */
@ApiModel(description = "The airway to which the NOTAM relates.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NtmAwy   {
  @JsonProperty("awyId")
  private String awyId = null;

  @JsonProperty("awyArea")
  private String awyArea = null;

  @JsonProperty("awyBeginPt")
  private String awyBeginPt = null;

  @JsonProperty("awyEndPt")
  private String awyEndPt = null;

  @JsonProperty("awyLowerLmt")
  private BigDecimal awyLowerLmt = null;

  @JsonProperty("awyUpperLmt")
  private BigDecimal awyUpperLmt = null;

  public NtmAwy awyId(String awyId) {
    this.awyId = awyId;
    return this;
  }

  /**
   * The airway identifier for the NOTAM.
   * @return awyId
  **/
  @ApiModelProperty(example = "A368", value = "The airway identifier for the NOTAM.")

  public String getAwyId() {
    return awyId;
  }

  public void setAwyId(String awyId) {
    this.awyId = awyId;
  }

  public NtmAwy awyArea(String awyArea) {
    this.awyArea = awyArea;
    return this;
  }

  /**
   * The country code within which the airway exists.
   * @return awyArea
  **/
  @ApiModelProperty(example = "EEU", value = "The country code within which the airway exists.")

  public String getAwyArea() {
    return awyArea;
  }

  public void setAwyArea(String awyArea) {
    this.awyArea = awyArea;
  }

  public NtmAwy awyBeginPt(String awyBeginPt) {
    this.awyBeginPt = awyBeginPt;
    return this;
  }

  /**
   * The beginning point identifier of the airway.  This value may be either a navaid or waypoint identifier.
   * @return awyBeginPt
  **/
  @ApiModelProperty(example = "FKG", value = "The beginning point identifier of the airway.  This value may be either a navaid or waypoint identifier.")

  public String getAwyBeginPt() {
    return awyBeginPt;
  }

  public void setAwyBeginPt(String awyBeginPt) {
    this.awyBeginPt = awyBeginPt;
  }

  public NtmAwy awyEndPt(String awyEndPt) {
    this.awyEndPt = awyEndPt;
    return this;
  }

  /**
   * The ending point identifier of the airway.  This value may be either a navaid or waypoint identifier.
   * @return awyEndPt
  **/
  @ApiModelProperty(example = "SALMO", value = "The ending point identifier of the airway.  This value may be either a navaid or waypoint identifier.")

  public String getAwyEndPt() {
    return awyEndPt;
  }

  public void setAwyEndPt(String awyEndPt) {
    this.awyEndPt = awyEndPt;
  }

  public NtmAwy awyLowerLmt(BigDecimal awyLowerLmt) {
    this.awyLowerLmt = awyLowerLmt;
    return this;
  }

  /**
   * The airway lower altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).
   * @return awyLowerLmt
  **/
  @ApiModelProperty(example = "157", value = "The airway lower altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).")

  @Valid
  public BigDecimal getAwyLowerLmt() {
    return awyLowerLmt;
  }

  public void setAwyLowerLmt(BigDecimal awyLowerLmt) {
    this.awyLowerLmt = awyLowerLmt;
  }

  public NtmAwy awyUpperLmt(BigDecimal awyUpperLmt) {
    this.awyUpperLmt = awyUpperLmt;
    return this;
  }

  /**
   * The airway upper altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).
   * @return awyUpperLmt
  **/
  @ApiModelProperty(example = "311", value = "The airway upper altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).")

  @Valid
  public BigDecimal getAwyUpperLmt() {
    return awyUpperLmt;
  }

  public void setAwyUpperLmt(BigDecimal awyUpperLmt) {
    this.awyUpperLmt = awyUpperLmt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmAwy ntmAwy = (NtmAwy) o;
    return Objects.equals(this.awyId, ntmAwy.awyId) &&
        Objects.equals(this.awyArea, ntmAwy.awyArea) &&
        Objects.equals(this.awyBeginPt, ntmAwy.awyBeginPt) &&
        Objects.equals(this.awyEndPt, ntmAwy.awyEndPt) &&
        Objects.equals(this.awyLowerLmt, ntmAwy.awyLowerLmt) &&
        Objects.equals(this.awyUpperLmt, ntmAwy.awyUpperLmt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(awyId, awyArea, awyBeginPt, awyEndPt, awyLowerLmt, awyUpperLmt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmAwy {\n");
    
    sb.append("    awyId: ").append(toIndentedString(awyId)).append("\n");
    sb.append("    awyArea: ").append(toIndentedString(awyArea)).append("\n");
    sb.append("    awyBeginPt: ").append(toIndentedString(awyBeginPt)).append("\n");
    sb.append("    awyEndPt: ").append(toIndentedString(awyEndPt)).append("\n");
    sb.append("    awyLowerLmt: ").append(toIndentedString(awyLowerLmt)).append("\n");
    sb.append("    awyUpperLmt: ").append(toIndentedString(awyUpperLmt)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
