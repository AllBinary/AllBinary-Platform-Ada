--  Generated Code Do Not Modify

limited with org.osgi.framework.Bundle_Package;
package org.osgi.framework.Bundle_Package_References is
   type Bundle_Access is access all org.osgi.framework.Bundle_Package.Bundle'Class;
   type Bundle_Access_Array is array (Natural range <>) of Bundle_Access;
   type Bundle_Access_Array_Access is access all Bundle_Access_Array;
   type Bundle_Access_Array_Access_Array is array (Natural range <>) of Bundle_Access_Array_Access;
   type Bundle_Access_Array_Access_Array_Access is access all Bundle_Access_Array_Access_Array;
end org.osgi.framework.Bundle_Package_References;

with org.osgi.framework.Bundle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.Bundle_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type Bundle is interface;
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   function "=" (Left, Right : Bundle_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   function "=" (Left, Right : Bundle_Access_Array) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   function "=" (Left, Right : Bundle_Access_Array_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   function "=" (Left, Right : Bundle_Access_Array_Access_Array) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Bundle_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.Bundle_Package_References."=";
   function Java_Object_Access_From_Bundle (Value : Bundle_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getSymbolicName (This : in out Bundle) return Unbounded_String is abstract;
   procedure start (This : in out Bundle) is abstract;
   procedure start (This : in out Bundle; options : Integer) is abstract;

end org.osgi.framework.Bundle_Package;


