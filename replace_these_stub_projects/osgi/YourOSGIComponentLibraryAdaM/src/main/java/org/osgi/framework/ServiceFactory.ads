--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.osgi.framework.ServiceFactory_Package;
package org.osgi.framework.ServiceFactory_Package_References is
   type ServiceFactory_Access is access all org.osgi.framework.ServiceFactory_Package.ServiceFactory'Class;
   type ServiceFactory_Access_Array is array (Natural range <>) of ServiceFactory_Access;
   type ServiceFactory_Access_Array_Access is access all ServiceFactory_Access_Array;
   type ServiceFactory_Access_Array_Access_Array is array (Natural range <>) of ServiceFactory_Access_Array_Access;
   type ServiceFactory_Access_Array_Access_Array_Access is access all ServiceFactory_Access_Array_Access_Array;
   type ServiceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceFactory_Access_Array_Access is (if Value /= null and then Value.all in ServiceFactory_Access_Array_Object'Class then ServiceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ServiceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ServiceFactory_Access_Array_Access_Array_Object'Class then ServiceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.ServiceFactory_Package_References;

with org.osgi.framework.ServiceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.ServiceFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ServiceFactory is interface;
   subtype ServiceFactory_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access;
   function "=" (Left, Right : ServiceFactory_Access) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   subtype ServiceFactory_Access_Array is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array;
   function "=" (Left, Right : ServiceFactory_Access_Array) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   subtype ServiceFactory_Access_Array_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access;
   function "=" (Left, Right : ServiceFactory_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   function Java_Box (Value : ServiceFactory_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceFactory_Package_References.Java_Box;
   function Java_Unbox_ServiceFactory_Access_Array (Value : access Java_Object'Class) return ServiceFactory_Access_Array_Access renames org.osgi.framework.ServiceFactory_Package_References.Java_Unbox_ServiceFactory_Access_Array;
   subtype ServiceFactory_Access_Array_Access_Array is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceFactory_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   subtype ServiceFactory_Access_Array_Access_Array_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   function Java_Box (Value : ServiceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.ServiceFactory_Package_References.Java_Box;
   function Java_Unbox_ServiceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ServiceFactory_Access_Array_Access_Array_Access renames org.osgi.framework.ServiceFactory_Package_References.Java_Unbox_ServiceFactory_Access_Array_Access_Array;
   function Java_Object_Access_From_ServiceFactory (Value : ServiceFactory_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.osgi.framework.ServiceFactory_Package;


