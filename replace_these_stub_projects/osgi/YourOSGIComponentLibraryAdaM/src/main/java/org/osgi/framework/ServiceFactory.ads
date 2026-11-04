--  Generated Code Do Not Modify

limited with org.osgi.framework.ServiceFactory_Package;
package org.osgi.framework.ServiceFactory_Package_References is
   type ServiceFactory_Access is access all org.osgi.framework.ServiceFactory_Package.ServiceFactory'Class;
   type ServiceFactory_Access_Array is array (Natural range <>) of ServiceFactory_Access;
   type ServiceFactory_Access_Array_Access is access all ServiceFactory_Access_Array;
   type ServiceFactory_Access_Array_Access_Array is array (Natural range <>) of ServiceFactory_Access_Array_Access;
   type ServiceFactory_Access_Array_Access_Array_Access is access all ServiceFactory_Access_Array_Access_Array;
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
   subtype ServiceFactory_Access_Array_Access_Array is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceFactory_Access_Array_Access_Array) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   subtype ServiceFactory_Access_Array_Access_Array_Access is org.osgi.framework.ServiceFactory_Package_References.ServiceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceFactory_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.ServiceFactory_Package_References."=";
   function Java_Object_Access_From_ServiceFactory (Value : ServiceFactory_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.osgi.framework.ServiceFactory_Package;


