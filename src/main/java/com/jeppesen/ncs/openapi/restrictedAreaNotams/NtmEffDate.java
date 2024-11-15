package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.time.OffsetDateTime;
import java.util.Objects;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * The effective date/time of the NOTAM according to UTC date and time in ISO 8601 format, for example, &#x27;2019-03-16T06:00:00Z&#x27;.
 */
@ApiModel(description = "The effective date/time of the NOTAM according to UTC date and time in ISO 8601 format, for example, '2019-03-16T06:00:00Z'.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-07-15T19:33:40.780Z[GMT]")
public class NtmEffDate   {
  @JsonProperty("value")
  private OffsetDateTime value = null;

  @JsonProperty("effIndicator")
  private String effIndicator = null;

  public NtmEffDate value(OffsetDateTime value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public OffsetDateTime getValue() {
    return value;
  }

  public void setValue(OffsetDateTime value) {
    this.value = value;
  }

  public NtmEffDate effIndicator(String effIndicator) {
    this.effIndicator = effIndicator;
    return this;
  }

  /**
   * An indicator that defines the effective date/time for the NOTAM (e.g. WIE – With Immediate Effect).
   * @return effIndicator
  **/
  @ApiModelProperty(example = "WIE", value = "An indicator that defines the effective date/time for the NOTAM (e.g. WIE – With Immediate Effect).")

  public String getEffIndicator() {
    return effIndicator;
  }

  public void setEffIndicator(String effIndicator) {
    this.effIndicator = effIndicator;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmEffDate ntmEffDate = (NtmEffDate) o;
    return Objects.equals(this.value, ntmEffDate.value) &&
        Objects.equals(this.effIndicator, ntmEffDate.effIndicator);
  }

  @Override
  public int hashCode() {
    return Objects.hash(value, effIndicator);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmEffDate {\n");
    
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    effIndicator: ").append(toIndentedString(effIndicator)).append("\n");
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
