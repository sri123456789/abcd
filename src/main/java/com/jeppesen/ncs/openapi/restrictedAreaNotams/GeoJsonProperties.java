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
 * GeoJsonProperties
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class GeoJsonProperties   {
  @JsonProperty("lower_alt_msl_ft")
  private BigDecimal lowerAltMslFt = null;

  @JsonProperty("upper_alt_msl_ft")
  private BigDecimal upperAltMslFt = null;

  public GeoJsonProperties lowerAltMslFt(BigDecimal lowerAltMslFt) {
    this.lowerAltMslFt = lowerAltMslFt;
    return this;
  }

  /**
   * A consistent unit of measure (MSL in feet) applied to the GeoJSON that is based on the Jeppesen-derived altitude conversion business logic for lower limits and always used for the altitude/elevation computation of an NCS spatial query.
   * @return lowerAltMslFt
  **/
  @ApiModelProperty(example = "0", value = "A consistent unit of measure (MSL in feet) applied to the GeoJSON that is based on the Jeppesen-derived altitude conversion business logic for lower limits and always used for the altitude/elevation computation of an NCS spatial query.")

  @Valid
  public BigDecimal getLowerAltMslFt() {
    return lowerAltMslFt;
  }

  public void setLowerAltMslFt(BigDecimal lowerAltMslFt) {
    this.lowerAltMslFt = lowerAltMslFt;
  }

  public GeoJsonProperties upperAltMslFt(BigDecimal upperAltMslFt) {
    this.upperAltMslFt = upperAltMslFt;
    return this;
  }

  /**
   * A consistent unit of measure (MSL in feet) applied to the GeoJSON that is based on the Jeppesen-derived altitude conversion business logic for upper limits and always used for the altitude/elevation computation of an NCS spatial query.
   * @return upperAltMslFt
  **/
  @ApiModelProperty(example = "99999", value = "A consistent unit of measure (MSL in feet) applied to the GeoJSON that is based on the Jeppesen-derived altitude conversion business logic for upper limits and always used for the altitude/elevation computation of an NCS spatial query.")

  @Valid
  public BigDecimal getUpperAltMslFt() {
    return upperAltMslFt;
  }

  public void setUpperAltMslFt(BigDecimal upperAltMslFt) {
    this.upperAltMslFt = upperAltMslFt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GeoJsonProperties geoJsonProperties = (GeoJsonProperties) o;
    return Objects.equals(this.lowerAltMslFt, geoJsonProperties.lowerAltMslFt) &&
        Objects.equals(this.upperAltMslFt, geoJsonProperties.upperAltMslFt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(lowerAltMslFt, upperAltMslFt);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GeoJsonProperties {\n");
    
    sb.append("    lowerAltMslFt: ").append(toIndentedString(lowerAltMslFt)).append("\n");
    sb.append("    upperAltMslFt: ").append(toIndentedString(upperAltMslFt)).append("\n");
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
