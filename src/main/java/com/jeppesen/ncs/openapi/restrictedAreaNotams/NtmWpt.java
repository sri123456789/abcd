package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * The waypoint to which the NOTAM relates.
 */
@ApiModel(description = "The waypoint to which the NOTAM relates.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NtmWpt   {
  @JsonProperty("wptId")
  private String wptId = null;

  @JsonProperty("wptIcaoCd")
  private String wptIcaoCd = null;

  public NtmWpt wptId(String wptId) {
    this.wptId = wptId;
    return this;
  }

  /**
   * The waypoint identifier for the NOTAM.
   * @return wptId
  **/
  @ApiModelProperty(example = "CASSE", value = "The waypoint identifier for the NOTAM.")

  public String getWptId() {
    return wptId;
  }

  public void setWptId(String wptId) {
    this.wptId = wptId;
  }

  public NtmWpt wptIcaoCd(String wptIcaoCd) {
    this.wptIcaoCd = wptIcaoCd;
    return this;
  }

  /**
   * The ICAO (region) code that the waypoint is contained within.
   * @return wptIcaoCd
  **/
  @ApiModelProperty(example = "K2", value = "The ICAO (region) code that the waypoint is contained within.")

  public String getWptIcaoCd() {
    return wptIcaoCd;
  }

  public void setWptIcaoCd(String wptIcaoCd) {
    this.wptIcaoCd = wptIcaoCd;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmWpt ntmWpt = (NtmWpt) o;
    return Objects.equals(this.wptId, ntmWpt.wptId) &&
        Objects.equals(this.wptIcaoCd, ntmWpt.wptIcaoCd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(wptId, wptIcaoCd);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmWpt {\n");
    
    sb.append("    wptId: ").append(toIndentedString(wptId)).append("\n");
    sb.append("    wptIcaoCd: ").append(toIndentedString(wptIcaoCd)).append("\n");
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
