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
 * The airport to which the NOTAM relates.
 */
@ApiModel(description = "The airport to which the NOTAM relates.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NtmApt   {
  @JsonProperty("aptId")
  private String aptId = null;

  @JsonProperty("aptIdIata")
  private String aptIdIata = null;

  public NtmApt aptId(String aptId) {
    this.aptId = aptId;
    return this;
  }

  /**
   * The ICAO (or regional) airport identifier for the NOTAM.
   * @return aptId
  **/
  @ApiModelProperty(example = "SBIZ", value = "The ICAO (or regional) airport identifier for the NOTAM.")

  public String getAptId() {
    return aptId;
  }

  public void setAptId(String aptId) {
    this.aptId = aptId;
  }

  public NtmApt aptIdIata(String aptIdIata) {
    this.aptIdIata = aptIdIata;
    return this;
  }

  /**
   * The IATA airport identifier for the NOTAM.
   * @return aptIdIata
  **/
  @ApiModelProperty(example = "IMP", value = "The IATA airport identifier for the NOTAM.")

  public String getAptIdIata() {
    return aptIdIata;
  }

  public void setAptIdIata(String aptIdIata) {
    this.aptIdIata = aptIdIata;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmApt ntmApt = (NtmApt) o;
    return Objects.equals(this.aptId, ntmApt.aptId) &&
        Objects.equals(this.aptIdIata, ntmApt.aptIdIata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(aptId, aptIdIata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmApt {\n");
    
    sb.append("    aptId: ").append(toIndentedString(aptId)).append("\n");
    sb.append("    aptIdIata: ").append(toIndentedString(aptIdIata)).append("\n");
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
