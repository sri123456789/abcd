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
 * Airway information.
 */
@ApiModel(description = "Airway information.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-12T23:08:37.169Z[GMT]")
public class Airway   {
  @JsonProperty("ntmAwy")
  @Valid
  private List<NtmAwy> ntmAwy = null;

  public Airway ntmAwy(List<NtmAwy> ntmAwy) {
    this.ntmAwy = ntmAwy;
    return this;
  }

  public Airway addNtmAwyItem(NtmAwy ntmAwyItem) {
    if (this.ntmAwy == null) {
      this.ntmAwy = new ArrayList<NtmAwy>();
    }
    this.ntmAwy.add(ntmAwyItem);
    return this;
  }

  /**
   * Get ntmAwy
   * @return ntmAwy
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmAwy> getNtmAwy() {
    return ntmAwy;
  }

  public void setNtmAwy(List<NtmAwy> ntmAwy) {
    this.ntmAwy = ntmAwy;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Airway airway = (Airway) o;
    return Objects.equals(this.ntmAwy, airway.ntmAwy);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmAwy);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Airway {\n");
    
    sb.append("    ntmAwy: ").append(toIndentedString(ntmAwy)).append("\n");
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
