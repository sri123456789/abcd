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
 * An ICAO defined code that defines the subject and condition of the NOTAM.
 */
@ApiModel(description = "An ICAO defined code that defines the subject and condition of the NOTAM.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-12T23:53:28.712Z[GMT]")
public class Qcode   {
  @JsonProperty("ntmQcd")
  @Valid
  private List<NtmQcd> ntmQcd = null;

  public Qcode ntmQcd(List<NtmQcd> ntmQcd) {
    this.ntmQcd = ntmQcd;
    return this;
  }

  public Qcode addNtmQcdItem(NtmQcd ntmQcdItem) {
    if (this.ntmQcd == null) {
      this.ntmQcd = new ArrayList<NtmQcd>();
    }
    this.ntmQcd.add(ntmQcdItem);
    return this;
  }

  /**
   * Get ntmQcd
   * @return ntmQcd
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmQcd> getNtmQcd() {
    return ntmQcd;
  }

  public void setNtmQcd(List<NtmQcd> ntmQcd) {
    this.ntmQcd = ntmQcd;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Qcode qcode = (Qcode) o;
    return Objects.equals(this.ntmQcd, qcode.ntmQcd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmQcd);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Qcode {\n");
    
    sb.append("    ntmQcd: ").append(toIndentedString(ntmQcd)).append("\n");
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
