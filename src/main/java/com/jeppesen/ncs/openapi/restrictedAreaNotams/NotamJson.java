package com.jeppesen.ncs.openapi.restrictedAreaNotams;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * The entire Json response for a NOTAM Search.
 */
@ApiModel(description = "The entire Json response for a NOTAM Search.")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2019-06-10T16:28:48.910Z[GMT]")
public class NotamJson   {
  @JsonProperty("type")
  private String type = null;

  @JsonProperty("features")
  @Valid
  private List<GeoJsonFeature> features = new ArrayList<GeoJsonFeature>();

  @JsonProperty("notamProperties")
  private NotamProperties notamProperties = null;

  public NotamJson type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  **/
  @ApiModelProperty(example = "FeatureCollection", required = true, value = "")
  @NotNull

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public NotamJson features(List<GeoJsonFeature> features) {
    this.features = features;
    return this;
  }

  public NotamJson addFeaturesItem(GeoJsonFeature featuresItem) {
    this.features.add(featuresItem);
    return this;
  }

  /**
   * Get features
   * @return features
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull
  @Valid
  public List<GeoJsonFeature> getFeatures() {
    return features;
  }

  public void setFeatures(List<GeoJsonFeature> features) {
    this.features = features;
  }

  public NotamJson notamProperties(NotamProperties notamProperties) {
    this.notamProperties = notamProperties;
    return this;
  }

  /**
   * Get notamProperties
   * @return notamProperties
  **/
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
  public NotamProperties getNotamProperties() {
    return notamProperties;
  }

  public void setNotamProperties(NotamProperties notamProperties) {
    this.notamProperties = notamProperties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NotamJson notamJson = (NotamJson) o;
    return Objects.equals(this.type, notamJson.type) &&
        Objects.equals(this.features, notamJson.features) &&
        Objects.equals(this.notamProperties, notamJson.notamProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, features, notamProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NotamJson {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    features: ").append(toIndentedString(features)).append("\n");
    sb.append("    notamProperties: ").append(toIndentedString(notamProperties)).append("\n");
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
