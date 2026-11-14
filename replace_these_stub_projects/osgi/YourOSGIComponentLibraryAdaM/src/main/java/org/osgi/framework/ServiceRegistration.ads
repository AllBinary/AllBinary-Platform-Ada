--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.osgi.framework.ServiceRegistration_Package;
package org.osgi.framework.ServiceRegistration_Package_References is
   type ServiceRegistration_Access is access all org.osgi.framework.ServiceRegistration_Package.ServiceRegistration'Class;
   type ServiceRegistration_Access_Array is array (Natural range <>) of ServiceRegistration_Access;
   type ServiceRegistration_Access_Array_Access is access all ServiceRegistration_Access_Array;
   type ServiceRegistration_Access_Array_Access_Array is array (Natural range <>) of ServiceRegistration_Access_Array_Access;
   type ServiceRegistration_Access_Array_Access_Array_Access is access all ServiceRegistration_Access_Array_Access_Array;
   type ServiceRegistration_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceRegistration_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceRegistration_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceRegistration_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceRegistration_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceRegistration_Access_Array_Access is (if Value /= null and then Value.all in ServiceRegistration_Access_Array_Object'Class then ServiceRegistration_Access_Array_Object'Class (Value.all).Value else null);
   type ServiceRegistration_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceRegistration_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceRegistration_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceRegistration_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceRegistration_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceRegistration_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ServiceRegistration_Access_Array_Access_Array_Object'Class then ServiceRegistration_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.ServiceRegistration_Package_References;

with org.osgi.framework.ServiceRegistration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;

package org.osgi.framework.ServiceRegistration_Package is

   package Reference_Types is
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   use type ServiceReference_Access;
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   use type ServiceReference_Access_Array;
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   use type ServiceReference_Access_Array_Access;
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   use type ServiceReference_Access_Array_Access_Array;
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   use type ServiceReference_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ServiceRegistration is interface;
   subtype ServiceRegistration_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access;
   function "=" (Left, Right : ServiceRegistration_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array;
   function "=" (Left, Right : ServiceRegistration_Access_Array) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   function Java_Box (Value : ServiceRegistration_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceRegistration_Package_References.Java_Box;
   function Java_Unbox_ServiceRegistration_Access_Array (Value : access Java_Object'Class) return ServiceRegistration_Access_Array_Access renames org.osgi.framework.ServiceRegistration_Package_References.Java_Unbox_ServiceRegistration_Access_Array;
   subtype ServiceRegistration_Access_Array_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   subtype ServiceRegistration_Access_Array_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceRegistration_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceRegistration_Package_References."=";
   function Java_Box (Value : ServiceRegistration_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceRegistration_Package_References.Java_Box;
   function Java_Unbox_ServiceRegistration_Access_Array_Access_Array (Value : access Java_Object'Class) return ServiceRegistration_Access_Array_Access_Array_Access renames org.osgi.framework.ServiceRegistration_Package_References.Java_Unbox_ServiceRegistration_Access_Array_Access_Array;
   function Java_Object_Access_From_ServiceRegistration (Value : ServiceRegistration_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getReference (This : in out ServiceRegistration) return ServiceReference_Access is abstract;

end org.osgi.framework.ServiceRegistration_Package;


