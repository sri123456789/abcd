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
 * The FIR within which the NOTAM exists.
 */
@ApiModel(description = "The FIR within which the NOTAM exists.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NtmFir   {
  @JsonProperty("firId")
  private String firId = null;

  public NtmFir firId(String firId) {
    this.firId = firId;
    return this;
  }

  /**
   * The ICAO FIR identifier for the NOTAM.
   * @return firId
  **/
  @ApiModelProperty(example = "SBAZ", value = "The ICAO FIR identifier for the NOTAM.")

  public String getFirId() {
    return firId;
  }

  public void setFirId(String firId) {
    this.firId = firId;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NtmFir ntmFir = (NtmFir) o;
    return Objects.equals(this.firId, ntmFir.firId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(firId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NtmFir {\n");
    
    sb.append("    firId: ").append(toIndentedString(firId)).append("\n");
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
