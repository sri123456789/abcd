package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.time.OffsetDateTime;
import java.util.Objects;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModelProperty;

/**
 * NotamProperties
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NotamProperties   {
  @JsonProperty("ntmNumber")
  private String ntmNumber = null;

  @JsonProperty("ntmNotamType")
  private String ntmNotamType = null;

  @JsonProperty("fir")
  private Fir fir = null;

  @JsonProperty("airport")
  private Airport airport = null;

  @JsonProperty("ntmEffDate")
  private NtmEffDate ntmEffDate = null;

  @JsonProperty("ntmExpDate")
  private NtmExpDate ntmExpDate = null;

  @JsonProperty("qcode")
  private Qcode qcode = null;

  @JsonProperty("ntmTxtSchedule")
  private String ntmTxtSchedule = null;

  @JsonProperty("ntmTxtContent")
  private String ntmTxtContent = null;

  @JsonProperty("ntmTxtLowerLimit")
  private String ntmTxtLowerLimit = null;

  @JsonProperty("ntmTxtUpperLimit")
  private String ntmTxtUpperLimit = null;

  @JsonProperty("airspace")
  private Airspace airspace = null;

  @JsonProperty("airway")
  private Airway airway = null;

  @JsonProperty("wayPoint")
  private WayPoint wayPoint = null;

  @JsonProperty("ntmJeppStatusDate")
  private OffsetDateTime ntmJeppStatusDate = null;

  @JsonProperty("jeppNumber")
  private String jeppNumber = null;

  public NotamProperties ntmNumber(String ntmNumber) {
    this.ntmNumber = ntmNumber;
    return this;
  }

  /**
   * The NOTAM number provided by Source.
   * @return ntmNumber
  **/
  @ApiModelProperty(example = "GO576/19", required = true, value = "The NOTAM number provided by Source.")
  @NotNull

  public String getNtmNumber() {
    return ntmNumber;
  }

  public void setNtmNumber(String ntmNumber) {
    this.ntmNumber = ntmNumber;
  }

  public NotamProperties ntmNotamType(String ntmNotamType) {
    this.ntmNotamType = ntmNotamType;
    return this;
  }

  /**
   * A code that indicates the type of the NOTAM (e.g. C1 = Class 1 International, UD = US Distant/Domestic, UF = US FDC, ML = Military, SN = SNOWTAM, etc.).
   * @return ntmNotamType
  **/
  @ApiModelProperty(example = "D1", value = "A code that indicates the type of the NOTAM (e.g. C1 = Class 1 International, UD = US Distant/Domestic, UF = US FDC, ML = Military, SN = SNOWTAM, etc.).")

  public String getNtmNotamType() {
    return ntmNotamType;
  }

  public void setNtmNotamType(String ntmNotamType) {
    this.ntmNotamType = ntmNotamType;
  }

  public NotamProperties fir(Fir fir) {
    this.fir = fir;
    return this;
  }

  /**
   * Get fir
   * @return fir
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public Fir getFir() {
    return fir;
  }

  public void setFir(Fir fir) {
    this.fir = fir;
  }

  public NotamProperties airport(Airport airport) {
    this.airport = airport;
    return this;
  }

  /**
   * Get airport
   * @return airport
  **/
  @ApiModelProperty(value = "")

  @Valid
  public Airport getAirport() {
    return airport;
  }

  public void setAirport(Airport airport) {
    this.airport = airport;
  }

  public NotamProperties ntmEffDate(NtmEffDate ntmEffDate) {
    this.ntmEffDate = ntmEffDate;
    return this;
  }

  /**
   * Get ntmEffDate
   * @return ntmEffDate
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public NtmEffDate getNtmEffDate() {
    return ntmEffDate;
  }

  public void setNtmEffDate(NtmEffDate ntmEffDate) {
    this.ntmEffDate = ntmEffDate;
  }

  public NotamProperties ntmExpDate(NtmExpDate ntmExpDate) {
    this.ntmExpDate = ntmExpDate;
    return this;
  }

  /**
   * Get ntmExpDate
   * @return ntmExpDate
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public NtmExpDate getNtmExpDate() {
    return ntmExpDate;
  }

  public void setNtmExpDate(NtmExpDate ntmExpDate) {
    this.ntmExpDate = ntmExpDate;
  }

  public NotamProperties qcode(Qcode qcode) {
    this.qcode = qcode;
    return this;
  }

  /**
   * Get qcode
   * @return qcode
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public Qcode getQcode() {
    return qcode;
  }

  public void setQcode(Qcode qcode) {
    this.qcode = qcode;
  }

  public NotamProperties ntmTxtSchedule(String ntmTxtSchedule) {
    this.ntmTxtSchedule = ntmTxtSchedule;
    return this;
  }

  /**
   * A textual representation of the specific/applicable schedule for the NOTAM within the effective period.
   * @return ntmTxtSchedule
  **/
  @ApiModelProperty(example = "BTN 0630-1030 DAILY", value = "A textual representation of the specific/applicable schedule for the NOTAM within the effective period.")

  public String getNtmTxtSchedule() {
    return ntmTxtSchedule;
  }

  public void setNtmTxtSchedule(String ntmTxtSchedule) {
    this.ntmTxtSchedule = ntmTxtSchedule;
  }

  public NotamProperties ntmTxtContent(String ntmTxtContent) {
    this.ntmTxtContent = ntmTxtContent;
    return this;
  }

  /**
   * The specific textual content of the NOTAM describing the subject matter and disposition of the event.
   * @return ntmTxtContent
  **/
  @ApiModelProperty(example = "OBST (TORRE) LGTD COORD 053245,68S/0472829,45W ELEV 164M MONTADO", required = true, value = "The specific textual content of the NOTAM describing the subject matter and disposition of the event.")
  @NotNull

  public String getNtmTxtContent() {
    return ntmTxtContent;
  }

  public void setNtmTxtContent(String ntmTxtContent) {
    this.ntmTxtContent = ntmTxtContent;
  }

  public NotamProperties ntmTxtLowerLimit(String ntmTxtLowerLimit) {
    this.ntmTxtLowerLimit = ntmTxtLowerLimit;
    return this;
  }

  /**
   * A textual representation of the lower elevation limit for the NOTAM.
   * @return ntmTxtLowerLimit
  **/
  @ApiModelProperty(example = "SFC", value = "A textual representation of the lower elevation limit for the NOTAM.")

  public String getNtmTxtLowerLimit() {
    return ntmTxtLowerLimit;
  }

  public void setNtmTxtLowerLimit(String ntmTxtLowerLimit) {
    this.ntmTxtLowerLimit = ntmTxtLowerLimit;
  }

  public NotamProperties ntmTxtUpperLimit(String ntmTxtUpperLimit) {
    this.ntmTxtUpperLimit = ntmTxtUpperLimit;
    return this;
  }

  /**
   * A textual representation of the upper elevation limit for the NOTAM.
   * @return ntmTxtUpperLimit
  **/
  @ApiModelProperty(example = "UNL", value = "A textual representation of the upper elevation limit for the NOTAM.")

  public String getNtmTxtUpperLimit() {
    return ntmTxtUpperLimit;
  }

  public void setNtmTxtUpperLimit(String ntmTxtUpperLimit) {
    this.ntmTxtUpperLimit = ntmTxtUpperLimit;
  }

  public NotamProperties airspace(Airspace airspace) {
    this.airspace = airspace;
    return this;
  }

  /**
   * Get airspace
   * @return airspace
  **/
  @ApiModelProperty(value = "")

  @Valid
  public Airspace getAirspace() {
    return airspace;
  }

  public void setAirspace(Airspace airspace) {
    this.airspace = airspace;
  }

  public NotamProperties airway(Airway airway) {
    this.airway = airway;
    return this;
  }

  /**
   * Get airway
   * @return airway
  **/
  @ApiModelProperty(value = "")

  @Valid
  public Airway getAirway() {
    return airway;
  }

  public void setAirway(Airway airway) {
    this.airway = airway;
  }

  public NotamProperties wayPoint(WayPoint wayPoint) {
    this.wayPoint = wayPoint;
    return this;
  }

  /**
   * Get wayPoint
   * @return wayPoint
  **/
  @ApiModelProperty(value = "")

  @Valid
  public WayPoint getWayPoint() {
    return wayPoint;
  }

  public void setWayPoint(WayPoint wayPoint) {
    this.wayPoint = wayPoint;
  }

  public NotamProperties ntmJeppStatusDate(OffsetDateTime ntmJeppStatusDate) {
    this.ntmJeppStatusDate = ntmJeppStatusDate;
    return this;
  }

  /**
   * The NOTAM status date and time according to UTC date and time in ISO 8601 format, for example, '2019-03-03T17:19:54Z'.
   * @return ntmJeppStatusDate
  **/
  @ApiModelProperty(required = true, value = "The NOTAM status date and time according to UTC date and time in ISO 8601 format, for example, '2019-03-03T17:19:54Z'.")
  @NotNull

  @Valid
  public OffsetDateTime getNtmJeppStatusDate() {
    return ntmJeppStatusDate;
  }

  public void setNtmJeppStatusDate(OffsetDateTime ntmJeppStatusDate) {
    this.ntmJeppStatusDate = ntmJeppStatusDate;
  }

  public NotamProperties jeppNumber(String jeppNumber) {
    this.jeppNumber = jeppNumber;
    return this;
  }

  /**
   * A number provided by the Jeppesen eNOTAM department that uniquely identifies each NOTAM (11 alphanumeric characters).
   * @return jeppNumber
  **/
  @ApiModelProperty(example = "201905371A5", required = true, value = "A number provided by the Jeppesen eNOTAM department that uniquely identifies each NOTAM (11 alphanumeric characters).")
  @NotNull

  public String getJeppNumber() {
    return jeppNumber;
  }

  public void setJeppNumber(String jeppNumber) {
    this.jeppNumber = jeppNumber;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NotamProperties notamProperties = (NotamProperties) o;
    return Objects.equals(this.ntmNumber, notamProperties.ntmNumber) &&
        Objects.equals(this.ntmNotamType, notamProperties.ntmNotamType) &&
        Objects.equals(this.fir, notamProperties.fir) &&
        Objects.equals(this.airport, notamProperties.airport) &&
        Objects.equals(this.ntmEffDate, notamProperties.ntmEffDate) &&
        Objects.equals(this.ntmExpDate, notamProperties.ntmExpDate) &&
        Objects.equals(this.qcode, notamProperties.qcode) &&
        Objects.equals(this.ntmTxtSchedule, notamProperties.ntmTxtSchedule) &&
        Objects.equals(this.ntmTxtContent, notamProperties.ntmTxtContent) &&
        Objects.equals(this.ntmTxtLowerLimit, notamProperties.ntmTxtLowerLimit) &&
        Objects.equals(this.ntmTxtUpperLimit, notamProperties.ntmTxtUpperLimit) &&
        Objects.equals(this.airspace, notamProperties.airspace) &&
        Objects.equals(this.airway, notamProperties.airway) &&
        Objects.equals(this.wayPoint, notamProperties.wayPoint) &&
        Objects.equals(this.ntmJeppStatusDate, notamProperties.ntmJeppStatusDate) &&
        Objects.equals(this.jeppNumber, notamProperties.jeppNumber);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ntmNumber, ntmNotamType, fir, airport, ntmEffDate, ntmExpDate, qcode, ntmTxtSchedule, ntmTxtContent, ntmTxtLowerLimit, ntmTxtUpperLimit, airspace, airway, wayPoint, ntmJeppStatusDate, jeppNumber);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NotamProperties {\n");
    
    sb.append("    ntmNumber: ").append(toIndentedString(ntmNumber)).append("\n");
    sb.append("    ntmNotamType: ").append(toIndentedString(ntmNotamType)).append("\n");
    sb.append("    fir: ").append(toIndentedString(fir)).append("\n");
    sb.append("    airport: ").append(toIndentedString(airport)).append("\n");
    sb.append("    ntmEffDate: ").append(toIndentedString(ntmEffDate)).append("\n");
    sb.append("    ntmExpDate: ").append(toIndentedString(ntmExpDate)).append("\n");
    sb.append("    qcode: ").append(toIndentedString(qcode)).append("\n");
    sb.append("    ntmTxtSchedule: ").append(toIndentedString(ntmTxtSchedule)).append("\n");
    sb.append("    ntmTxtContent: ").append(toIndentedString(ntmTxtContent)).append("\n");
    sb.append("    ntmTxtLowerLimit: ").append(toIndentedString(ntmTxtLowerLimit)).append("\n");
    sb.append("    ntmTxtUpperLimit: ").append(toIndentedString(ntmTxtUpperLimit)).append("\n");
    sb.append("    airspace: ").append(toIndentedString(airspace)).append("\n");
    sb.append("    airway: ").append(toIndentedString(airway)).append("\n");
    sb.append("    wayPoint: ").append(toIndentedString(wayPoint)).append("\n");
    sb.append("    ntmJeppStatusDate: ").append(toIndentedString(ntmJeppStatusDate)).append("\n");
    sb.append("    jeppNumber: ").append(toIndentedString(jeppNumber)).append("\n");
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
