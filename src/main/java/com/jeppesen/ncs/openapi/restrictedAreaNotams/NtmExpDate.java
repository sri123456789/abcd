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
 * The expiration date/time of the NOTAM according to UTC date and time in ISO 8601 format, for example, &#x27;2019-03-18T06:00:00Z&#x27;.
 */
@ApiModel(description = "The expiration date/time of the NOTAM according to UTC date and time in ISO 8601 format, for example, '2019-03-18T06:00:00Z'.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-07-15T19:33:40.780Z[GMT]")
public class NtmExpDate   {
  @JsonProperty("value")
  private OffsetDateTime value = null;

  @JsonProperty("expIndicator")
  private String expIndicator = null;

  public NtmExpDate value(OffsetDateTime value) {
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

  public NtmExpDate expIndicator(String expIndicator) {
    this.expIndicator = expIndicator;
    return this;
  }

  /**
   * An indicator that defines the expiration date/time for the NOTAM (e.g. EST – Estimated, UFN – Until Further Notice, PERM - Permanent).
   * @return expIndicator
  **/
  @ApiModelProperty(example = "ESP", value = "An indicator that defines the expiration date/time for the NOTAM (e.g. EST – Estimated, UFN – Until Further Notice, PERM - Permanent).")

  public String getExpIndicator() {
    return expIndicator;
  }

  public void setExpIndicator(String expIndicator) {
    this.expIndicator = expIndicator;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmExpDate ntmExpDate = (NtmExpDate) o;
    return Objects.equals(this.value, ntmExpDate.value) &&
        Objects.equals(this.expIndicator, ntmExpDate.expIndicator);
  }

  @Override
  public int hashCode() {
    return Objects.hash(value, expIndicator);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmExpDate {\n");
    
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    expIndicator: ").append(toIndentedString(expIndicator)).append("\n");
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
