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
 * The airspace within which the NOTAM exists.
 */
@ApiModel(description = "The airspace within which the NOTAM exists.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NtmAsp   {
  @JsonProperty("aspId")
  private String aspId = null;

  @JsonProperty("aspType")
  private String aspType = null;

  @JsonProperty("aspMultiCd")
  private String aspMultiCd = null;

  @JsonProperty("aspIcaoCd")
  private String aspIcaoCd = null;

  @JsonProperty("aspLowerLmt")
  private BigDecimal aspLowerLmt = null;

  @JsonProperty("aspUpperLmt")
  private BigDecimal aspUpperLmt = null;

  public NtmAsp aspId(String aspId) {
    this.aspId = aspId;
    return this;
  }

  /**
   * The airspace identifier for the NOTAM.
   * @return aspId
  **/
  @ApiModelProperty(example = "HOG B", value = "The airspace identifier for the NOTAM.")

  public String getAspId() {
    return aspId;
  }

  public void setAspId(String aspId) {
    this.aspId = aspId;
  }

  public NtmAsp aspType(String aspType) {
    this.aspType = aspType;
    return this;
  }

  /**
   * The airspace type identifier for the NOTAM.
   * @return aspType
  **/
  @ApiModelProperty(example = "MOA", value = "The airspace type identifier for the NOTAM.")

  public String getAspType() {
    return aspType;
  }

  public void setAspType(String aspType) {
    this.aspType = aspType;
  }

  public NtmAsp aspMultiCd(String aspMultiCd) {
    this.aspMultiCd = aspMultiCd;
    return this;
  }

  /**
   * The airspace multi-code identifier for the NOTAM.
   * @return aspMultiCd
  **/
  @ApiModelProperty(example = "B", value = "The airspace multi-code identifier for the NOTAM.")

  public String getAspMultiCd() {
    return aspMultiCd;
  }

  public void setAspMultiCd(String aspMultiCd) {
    this.aspMultiCd = aspMultiCd;
  }

  public NtmAsp aspIcaoCd(String aspIcaoCd) {
    this.aspIcaoCd = aspIcaoCd;
    return this;
  }

  /**
   * The airspace ICAO identifier for the NOTAM.
   * @return aspIcaoCd
  **/
  @ApiModelProperty(example = "K4", value = "The airspace ICAO identifier for the NOTAM.")

  public String getAspIcaoCd() {
    return aspIcaoCd;
  }

  public void setAspIcaoCd(String aspIcaoCd) {
    this.aspIcaoCd = aspIcaoCd;
  }

  public NtmAsp aspLowerLmt(BigDecimal aspLowerLmt) {
    this.aspLowerLmt = aspLowerLmt;
    return this;
  }

  /**
   * The airspace lower altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).
   * @return aspLowerLmt
  **/
  @ApiModelProperty(example = "50", value = "The airspace lower altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).")

  @Valid
  public BigDecimal getAspLowerLmt() {
    return aspLowerLmt;
  }

  public void setAspLowerLmt(BigDecimal aspLowerLmt) {
    this.aspLowerLmt = aspLowerLmt;
  }

  public NtmAsp aspUpperLmt(BigDecimal aspUpperLmt) {
    this.aspUpperLmt = aspUpperLmt;
    return this;
  }

  /**
   * The airspace upper altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).
   * @return aspUpperLmt
  **/
  @ApiModelProperty(example = "999", value = "The airspace upper altitude/elevation limit for the NOTAM.  This value is depicted as a Flight Level representation of Mean Sea Level (MSL).")

  @Valid
  public BigDecimal getAspUpperLmt() {
    return aspUpperLmt;
  }

  public void setAspUpperLmt(BigDecimal aspUpperLmt) {
    this.aspUpperLmt = aspUpperLmt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmAsp ntmAsp = (NtmAsp) o;
    return Objects.equals(this.aspId, ntmAsp.aspId) &&
        Objects.equals(this.aspType, ntmAsp.aspType) &&
        Objects.equals(this.aspMultiCd, ntmAsp.aspMultiCd) &&
        Objects.equals(this.aspIcaoCd, ntmAsp.aspIcaoCd) &&
        Objects.equals(this.aspLowerLmt, ntmAsp.aspLowerLmt) &&
        Objects.equals(this.aspUpperLmt, ntmAsp.aspUpperLmt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(aspId, aspType, aspMultiCd, aspIcaoCd, aspLowerLmt, aspUpperLmt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmAsp {\n");
    
    sb.append("    aspId: ").append(toIndentedString(aspId)).append("\n");
    sb.append("    aspType: ").append(toIndentedString(aspType)).append("\n");
    sb.append("    aspMultiCd: ").append(toIndentedString(aspMultiCd)).append("\n");
    sb.append("    aspIcaoCd: ").append(toIndentedString(aspIcaoCd)).append("\n");
    sb.append("    aspLowerLmt: ").append(toIndentedString(aspLowerLmt)).append("\n");
    sb.append("    aspUpperLmt: ").append(toIndentedString(aspUpperLmt)).append("\n");
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
