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
 * Airspace information.
 */
@ApiModel(description = "Airspace information.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class Airspace   {
  @JsonProperty("ntmAsp")
  @Valid
  private List<NtmAsp> ntmAsp = null;

  public Airspace ntmAsp(List<NtmAsp> ntmAsp) {
    this.ntmAsp = ntmAsp;
    return this;
  }

  public Airspace addNtmAspItem(NtmAsp ntmAspItem) {
    if (this.ntmAsp == null) {
      this.ntmAsp = new ArrayList<NtmAsp>();
    }
    this.ntmAsp.add(ntmAspItem);
    return this;
  }

  /**
   * Get ntmAsp
   * @return ntmAsp
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmAsp> getNtmAsp() {
    return ntmAsp;
  }

  public void setNtmAsp(List<NtmAsp> ntmAsp) {
    this.ntmAsp = ntmAsp;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Airspace airspace = (Airspace) o;
    return Objects.equals(this.ntmAsp, airspace.ntmAsp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmAsp);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Airspace {\n");
    
    sb.append("    ntmAsp: ").append(toIndentedString(ntmAsp)).append("\n");
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
