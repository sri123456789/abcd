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
 * Airport information.
 */
@ApiModel(description = "Airport information.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class Airport   {
  @JsonProperty("ntmApt")
  @Valid
  private List<NtmApt> ntmApt = null;

  public Airport ntmApt(List<NtmApt> ntmApt) {
    this.ntmApt = ntmApt;
    return this;
  }

  public Airport addNtmAptItem(NtmApt ntmAptItem) {
    if (this.ntmApt == null) {
      this.ntmApt = new ArrayList<NtmApt>();
    }
    this.ntmApt.add(ntmAptItem);
    return this;
  }

  /**
   * Get ntmApt
   * @return ntmApt
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmApt> getNtmApt() {
    return ntmApt;
  }

  public void setNtmApt(List<NtmApt> ntmApt) {
    this.ntmApt = ntmApt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Airport airport = (Airport) o;
    return Objects.equals(this.ntmApt, airport.ntmApt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmApt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Airport {\n");
    
    sb.append("    ntmApt: ").append(toIndentedString(ntmApt)).append("\n");
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
