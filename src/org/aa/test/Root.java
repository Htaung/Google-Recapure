package org.aa.test;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.List;

public class Root {

	public String toString() {
		  StringBuffer sb = new StringBuffer();

		  // append class name
		  sb.append("[");
		  sb.append(getClass().getName());
		  sb.append(":");

		  // get all the properties
		  String[] properties = getPropertyNames();

		  if (properties == null) {
		   sb.append("No properties");
		  } else {
		   // append properties
		   for (int i = 0; i < properties.length; i++) {
		    if (i != 0)
		     sb.append(", ");
		    sb.append(properties[i]);
		    sb.append("=");
		    sb.append(get(properties[i]));
		   }
		  }
		  sb.append("]");
		  return sb.toString();
		 }
	
	public String[] getPropertyNames() {
		  List<String> results = new ArrayList<String>();
		  //BeanUtils.getPropertyDescriptor(this, propertyName);
		  //PropertyDescriptor[] descriptors = BeanUtils.getPropertyDescriptors(this);
		  
		  PropertyDescriptor[] descriptors = PropertyUtils.getPropertyDescriptors(this);
		  if (descriptors == null) {
		   return null;
		  } else {
		   for (int i = 0; i < descriptors.length; i++) {
		    if (descriptors[i].getReadMethod() != null && descriptors[i].getWriteMethod() != null) {
		     results.add(descriptors[i].getName());
		    }
		   }
		  }
		  return results.toArray(new String[0]);
		 }


		 public Object get(String name) {
		  Object result = null;
		  try {
		   result = PropertyUtils.getProperty(this, name);
		  } catch (Exception e) {
		   throw new RuntimeException("Invalid property name '" + name + "'");
		  }
		  return result;
		 }
}
