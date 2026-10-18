--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Comparable_Package; use java.lang.Comparable_Package;

package org.osgi.framework.ServiceReference_Package is


   type ServiceReference is interface and Comparable;
   type ServiceReference_Access is access all ServiceReference'Class;
   type ServiceReference_Access_Array is array (Natural range <>) of ServiceReference_Access;
   type ServiceReference_Access_Array_Access is access all ServiceReference_Access_Array;
   type ServiceReference_Access_Array_Access_Array is array (Natural range <>) of ServiceReference_Access_Array_Access;
   type ServiceReference_Access_Array_Access_Array_Access is access all ServiceReference_Access_Array_Access_Array;
   function getProperty (This : in out ServiceReference; key : Unbounded_String) return Java_Object_Access is abstract;
   function getPropertyKeys (This : in out ServiceReference) return Unbounded_String_Array_Access is abstract;

end org.osgi.framework.ServiceReference_Package;


