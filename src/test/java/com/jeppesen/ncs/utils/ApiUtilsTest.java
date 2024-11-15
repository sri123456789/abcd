package com.jeppesen.ncs.utils;

import static org.junit.Assert.fail;
import static org.junit.Assert.assertTrue;

import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;

import org.apache.commons.io.IOUtils;
import org.junit.Test;

public class ApiUtilsTest {

	@Test
	public void testValidateNotamJsonStructure() {
		try {
			String jsonResponse = readFromFileByFileNameFromClasspath(this.getClass(),
					"made-up-ncs-full-response.json");
			
			ApiUtils.validateNotamJsonArrayStructureArray(jsonResponse);

			assertTrue(ApiUtils.validateNotamJsonArrayStructureArray(jsonResponse));
		} catch (IOException e) {
			fail();
		}
	}

	@SuppressWarnings("rawtypes")
	public static String readFromFileByFileNameFromClasspath(Class clazz, String fileName) throws IOException {
		return readFromFileByFileNameFromClasspath(clazz, fileName, "UTF-8");
	}

	@SuppressWarnings("rawtypes")
	public static String readFromFileByFileNameFromClasspath(Class clazz, String fileName, String encoding)
			throws IOException {

		InputStream inputStream = clazz.getClassLoader().getResourceAsStream(fileName);

		StringWriter writer = new StringWriter();
		IOUtils.copy(inputStream, writer, encoding);
		String theString = writer.toString();

		return theString;

	}

}
