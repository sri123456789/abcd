
package com.jeppesen.ncs.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jeppesen.ncs.openapi.restrictedAreaNotams.NotamJson;

public class ApiUtils {
	private static final Logger LOG = LoggerFactory.getLogger(ApiUtils.class);

	/**
	 * @param jasoStr
	 * @return
	 */
	public static boolean validateNotamJsonArrayStructureArray(String notamJsonArray) {
		try {
			LOG.info("notamJsonArray=" + notamJsonArray);

			ObjectMapper mapper = new ObjectMapper();
			mapper.findAndRegisterModules();

			NotamJson[] notamJsonList = mapper.readValue(notamJsonArray, NotamJson[].class);

			LOG.info("notamJsonList=" + notamJsonList);
			if (notamJsonList != null) {
				LOG.info("notamJsonList.length=" + notamJsonList.length);
			}
		} catch (Exception e) {
			LOG.error(e.getMessage(), e);
			return false;
		}
		return true;
	}
}
