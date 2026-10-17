--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Dictionary_Package; use java.util.Dictionary_Package;
with org.osgi.framework.Bundle_Package; use org.osgi.framework.Bundle_Package;
with org.osgi.framework.ServiceRegistration_Package; use org.osgi.framework.ServiceRegistration_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;

package org.osgi.framework.BundleContext_Package is


   type BundleContext is interface;
   type BundleContext_Access is access all BundleContext'Class;
   type BundleContext_Access_Array is array (Natural range <>) of BundleContext_Access;
   type BundleContext_Access_Array_Access is access all BundleContext_Access_Array;
   function getBundles (This : in out BundleContext) return Bundle_Access_Array_Access is abstract;
   function installBundle (This : in out BundleContext; location : Unbounded_String) return Bundle_Access is abstract;
   function registerService (This : in out BundleContext; clazz : Unbounded_String; service_Param : access Java_Object'Class; properties_Param : access Dictionary'Class) return ServiceRegistration_Access is abstract;
   function getService (This : in out BundleContext; reference_Param : access ServiceReference'Class) return Java_Object_Access is abstract;
   function getServiceReferences (This : in out BundleContext; clazz : Unbounded_String; filter : Unbounded_String) return ServiceReference_Access_Array_Access is abstract;
   function getServiceReference (This : in out BundleContext; clazz : Unbounded_String) return ServiceReference_Access is abstract;

end org.osgi.framework.BundleContext_Package;


