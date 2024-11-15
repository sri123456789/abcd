package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.validation.Valid;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * WayPoint information.
 */
@ApiModel(description = "WayPoint information.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-12T23:46:06.196Z[GMT]")
public class WayPoint   {
  @JsonProperty("ntmWpt")
  @Valid
  private List<NtmWpt> ntmWpt = null;

  public WayPoint ntmWpt(List<NtmWpt> ntmWpt) {
    this.ntmWpt = ntmWpt;
    return this;
  }

  public WayPoint addNtmWptItem(NtmWpt ntmWptItem) {
    if (this.ntmWpt == null) {
      this.ntmWpt = new ArrayList<NtmWpt>();
    }
    this.ntmWpt.add(ntmWptItem);
    return this;
  }

  /**
   * Get ntmWpt
   * @return ntmWpt
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmWpt> getNtmWpt() {
    return ntmWpt;
  }

  public void setNtmWpt(List<NtmWpt> ntmWpt) {
    this.ntmWpt = ntmWpt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WayPoint wayPoint = (WayPoint) o;
    return Objects.equals(this.ntmWpt, wayPoint.ntmWpt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmWpt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WayPoint {\n");
    
    sb.append("    ntmWpt: ").append(toIndentedString(ntmWpt)).append("\n");
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
