--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.osgi.framework.Constants_Package;
package org.osgi.framework.Constants_Package_References is
   type Constants_Access is access all org.osgi.framework.Constants_Package.Constants'Class;
   type Constants_Access_Array is array (Natural range <>) of Constants_Access;
   type Constants_Access_Array_Access is access all Constants_Access_Array;
   type Constants_Access_Array_Access_Array is array (Natural range <>) of Constants_Access_Array_Access;
   type Constants_Access_Array_Access_Array_Access is access all Constants_Access_Array_Access_Array;
   type Constants_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Constants_Access_Array_Access;
   end record;
   function Java_Box (Value : Constants_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Constants_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Constants_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Constants_Access_Array_Access is (if Value /= null and then Value.all in Constants_Access_Array_Object'Class then Constants_Access_Array_Object'Class (Value.all).Value else null);
   type Constants_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Constants_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Constants_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Constants_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Constants_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Constants_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Constants_Access_Array_Access_Array_Object'Class then Constants_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.osgi.framework.Constants_Package_References;

with org.osgi.framework.Constants_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.osgi.framework.Constants_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type Constants is interface;
   subtype Constants_Access is org.osgi.framework.Constants_Package_References.Constants_Access;
   function "=" (Left, Right : Constants_Access) return Boolean renames org.osgi.framework.Constants_Package_References."=";
   subtype Constants_Access_Array is org.osgi.framework.Constants_Package_References.Constants_Access_Array;
   function "=" (Left, Right : Constants_Access_Array) return Boolean renames org.osgi.framework.Constants_Package_References."=";
   subtype Constants_Access_Array_Access is org.osgi.framework.Constants_Package_References.Constants_Access_Array_Access;
   function "=" (Left, Right : Constants_Access_Array_Access) return Boolean renames org.osgi.framework.Constants_Package_References."=";
   function Java_Box (Value : Constants_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.Constants_Package_References.Java_Box;
   function Java_Unbox_Constants_Access_Array (Value : access Java_Object'Class) return Constants_Access_Array_Access renames org.osgi.framework.Constants_Package_References.Java_Unbox_Constants_Access_Array;
   subtype Constants_Access_Array_Access_Array is org.osgi.framework.Constants_Package_References.Constants_Access_Array_Access_Array;
   function "=" (Left, Right : Constants_Access_Array_Access_Array) return Boolean renames org.osgi.framework.Constants_Package_References."=";
   subtype Constants_Access_Array_Access_Array_Access is org.osgi.framework.Constants_Package_References.Constants_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Constants_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.Constants_Package_References."=";
   function Java_Box (Value : Constants_Access_Array_Access_Array_Access) return Java_Object_Access renames org.osgi.framework.Constants_Package_References.Java_Box;
   function Java_Unbox_Constants_Access_Array_Access_Array (Value : access Java_Object'Class) return Constants_Access_Array_Access_Array_Access renames org.osgi.framework.Constants_Package_References.Java_Unbox_Constants_Access_Array_Access_Array;
   function Java_Object_Access_From_Constants (Value : Constants_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   BUNDLE_SYMBOLICNAME : Unbounded_String := StringUtil_Package.getInstance.EMPTY_STRING;

end org.osgi.framework.Constants_Package;


