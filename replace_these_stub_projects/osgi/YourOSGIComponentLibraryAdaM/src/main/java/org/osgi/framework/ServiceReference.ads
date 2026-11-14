--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.osgi.framework.ServiceReference_Package;
package org.osgi.framework.ServiceReference_Package_References is
   type ServiceReference_Access is access all org.osgi.framework.ServiceReference_Package.ServiceReference'Class;
   type ServiceReference_Access_Array is array (Natural range <>) of ServiceReference_Access;
   type ServiceReference_Access_Array_Access is access all ServiceReference_Access_Array;
   type ServiceReference_Access_Array_Access_Array is array (Natural range <>) of ServiceReference_Access_Array_Access;
   type ServiceReference_Access_Array_Access_Array_Access is access all ServiceReference_Access_Array_Access_Array;
   type ServiceReference_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceReference_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceReference_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceReference_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceReference_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceReference_Access_Array_Access is (if Value /= null and then Value.all in ServiceReference_Access_Array_Object'Class then ServiceReference_Access_Array_Object'Class (Value.all).Value else null);
   type ServiceReference_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceReference_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceReference_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceReference_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceReference_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceReference_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ServiceReference_Access_Array_Access_Array_Object'Class then ServiceReference_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.ServiceReference_Package_References;

with org.osgi.framework.ServiceReference_Package_References;
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

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ServiceReference is interface and Comparable;
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   function "=" (Left, Right : ServiceReference_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   function "=" (Left, Right : ServiceReference_Access_Array) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   function "=" (Left, Right : ServiceReference_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   function Java_Box (Value : ServiceReference_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceReference_Package_References.Java_Box;
   function Java_Unbox_ServiceReference_Access_Array (Value : access Java_Object'Class) return ServiceReference_Access_Array_Access renames org.osgi.framework.ServiceReference_Package_References.Java_Unbox_ServiceReference_Access_Array;
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceReference_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceReference_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceReference_Package_References."=";
   function Java_Box (Value : ServiceReference_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceReference_Package_References.Java_Box;
   function Java_Unbox_ServiceReference_Access_Array_Access_Array (Value : access Java_Object'Class) return ServiceReference_Access_Array_Access_Array_Access renames org.osgi.framework.ServiceReference_Package_References.Java_Unbox_ServiceReference_Access_Array_Access_Array;
   function Java_Object_Access_From_ServiceReference (Value : ServiceReference_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getProperty (This : in out ServiceReference; key : Unbounded_String) return Java_Object_Access is abstract;
   procedure getProperty (This : in out ServiceReference; key : Unbounded_String) is abstract;
   function getPropertyKeys (This : in out ServiceReference) return Unbounded_String_Array_Access is abstract;

end org.osgi.framework.ServiceReference_Package;


