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
 * Flight Information Region
 */
@ApiModel(description = "Flight Information Region")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class Fir   {
  @JsonProperty("ntmFir")
  @Valid
  private List<NtmFir> ntmFir = null;

  public Fir ntmFir(List<NtmFir> ntmFir) {
    this.ntmFir = ntmFir;
    return this;
  }

  public Fir addNtmFirItem(NtmFir ntmFirItem) {
    if (this.ntmFir == null) {
      this.ntmFir = new ArrayList<NtmFir>();
    }
    this.ntmFir.add(ntmFirItem);
    return this;
  }

  /**
   * Get ntmFir
   * @return ntmFir
  **/
  @ApiModelProperty(value = "")
  @Valid
  public List<NtmFir> getNtmFir() {
    return ntmFir;
  }

  public void setNtmFir(List<NtmFir> ntmFir) {
    this.ntmFir = ntmFir;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Fir fir = (Fir) o;
    return Objects.equals(this.ntmFir, fir.ntmFir);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmFir);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Fir {\n");
    
    sb.append("    ntmFir: ").append(toIndentedString(ntmFir)).append("\n");
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
