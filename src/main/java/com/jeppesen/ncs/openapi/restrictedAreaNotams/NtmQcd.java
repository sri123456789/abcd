package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.util.Objects;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * The Q-Code for the NOTAM.
 */
@ApiModel(description = "The Q-Code for the NOTAM.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-12T23:53:28.712Z[GMT]")
public class NtmQcd {
	@JsonProperty("qcdId")
	private String qcdId = null;

	@JsonProperty("qcdDecode")
	private String qcdDecode = null;

	public NtmQcd qcdId(String qcdId) {
		this.qcdId = qcdId;
		return this;
	}

	/**
	 * A five digit ICAO defined Q-Code that indicates the subject matter
	 * (characters 2 & 3) and condition (characters 4 & 5) of the NOTAM.
	 * 
	 * @return qcdId
	 **/
	@ApiModelProperty(example = "OBCE", value = "A five digit ICAO defined Q-Code that indicates the subject matter (characters 2 & 3) and condition (characters 4 & 5) of the NOTAM.")

	public String getQcdId() {
		return qcdId;
	}

	public void setQcdId(String qcdId) {
		this.qcdId = qcdId;
	}

	public NtmQcd qcdDecode(String qcdDecode) {
		this.qcdDecode = qcdDecode;
		return this;
	}

	/**
	 * A textual description of the Q-Code identifier (in English).
	 * 
	 * @return qcdDecode
	 **/
	@ApiModelProperty(example = "OBSTACLE ERECTED", value = "A textual description of the Q-Code identifier (in English).")

	public String getQcdDecode() {
		return qcdDecode;
	}

	public void setQcdDecode(String qcdDecode) {
		this.qcdDecode = qcdDecode;
	}

	@Override
	public boolean equals(java.lang.Object o) {
		if (this == o) {
			return true;
		}
		if (o == null || getClass() != o.getClass()) {
			return false;
		}
		NtmQcd ntmQcd = (NtmQcd) o;
		return Objects.equals(this.qcdId, ntmQcd.qcdId) && Objects.equals(this.qcdDecode, ntmQcd.qcdDecode);
	}

	@Override
	public int hashCode() {
		return Objects.hash(qcdId, qcdDecode);
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("class NtmQcd {\n");

		sb.append("    qcdId: ").append(toIndentedString(qcdId)).append("\n");
		sb.append("    qcdDecode: ").append(toIndentedString(qcdDecode)).append("\n");
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
