--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with dynamic.NativeLibraryHelper_Package;
package dynamic.NativeLibraryHelper_Package_References is
   type NativeLibraryHelper_Access is access all dynamic.NativeLibraryHelper_Package.NativeLibraryHelper'Class;
   type NativeLibraryHelper_Access_Array is array (Natural range <>) of NativeLibraryHelper_Access;
   type NativeLibraryHelper_Access_Array_Access is access all NativeLibraryHelper_Access_Array;
   type NativeLibraryHelper_Access_Array_Access_Array is array (Natural range <>) of NativeLibraryHelper_Access_Array_Access;
   type NativeLibraryHelper_Access_Array_Access_Array_Access is access all NativeLibraryHelper_Access_Array_Access_Array;
   type NativeLibraryHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NativeLibraryHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : NativeLibraryHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NativeLibraryHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NativeLibraryHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NativeLibraryHelper_Access_Array_Access is (if Value /= null and then Value.all in NativeLibraryHelper_Access_Array_Object'Class then NativeLibraryHelper_Access_Array_Object'Class (Value.all).Value else null);
   type NativeLibraryHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NativeLibraryHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NativeLibraryHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NativeLibraryHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NativeLibraryHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NativeLibraryHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NativeLibraryHelper_Access_Array_Access_Array_Object'Class then NativeLibraryHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end dynamic.NativeLibraryHelper_Package_References;

with dynamic.NativeLibraryHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package dynamic.NativeLibraryHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NativeLibraryHelper_Access is dynamic.NativeLibraryHelper_Package_References.NativeLibraryHelper_Access;
   function "=" (Left, Right : NativeLibraryHelper_Access) return Boolean renames dynamic.NativeLibraryHelper_Package_References."=";
   subtype NativeLibraryHelper_Access_Array is dynamic.NativeLibraryHelper_Package_References.NativeLibraryHelper_Access_Array;
   function "=" (Left, Right : NativeLibraryHelper_Access_Array) return Boolean renames dynamic.NativeLibraryHelper_Package_References."=";
   subtype NativeLibraryHelper_Access_Array_Access is dynamic.NativeLibraryHelper_Package_References.NativeLibraryHelper_Access_Array_Access;
   function "=" (Left, Right : NativeLibraryHelper_Access_Array_Access) return Boolean renames dynamic.NativeLibraryHelper_Package_References."=";
   function Java_Box (Value : NativeLibraryHelper_Access_Array_Access) return Java_Object_Access renames dynamic.NativeLibraryHelper_Package_References.Java_Box;
   function Java_Unbox_NativeLibraryHelper_Access_Array (Value : access Java_Object'Class) return NativeLibraryHelper_Access_Array_Access renames dynamic.NativeLibraryHelper_Package_References.Java_Unbox_NativeLibraryHelper_Access_Array;
   subtype NativeLibraryHelper_Access_Array_Access_Array is dynamic.NativeLibraryHelper_Package_References.NativeLibraryHelper_Access_Array_Access_Array;
   function "=" (Left, Right : NativeLibraryHelper_Access_Array_Access_Array) return Boolean renames dynamic.NativeLibraryHelper_Package_References."=";
   subtype NativeLibraryHelper_Access_Array_Access_Array_Access is dynamic.NativeLibraryHelper_Package_References.NativeLibraryHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NativeLibraryHelper_Access_Array_Access_Array_Access) return Boolean renames dynamic.NativeLibraryHelper_Package_References."=";
   function Java_Box (Value : NativeLibraryHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames dynamic.NativeLibraryHelper_Package_References.Java_Box;
   function Java_Unbox_NativeLibraryHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return NativeLibraryHelper_Access_Array_Access_Array_Access renames dynamic.NativeLibraryHelper_Package_References.Java_Unbox_NativeLibraryHelper_Access_Array_Access_Array;

   type NativeLibraryHelper is new Java_Object with record
      library : Unbounded_String;
   end record;

   procedure Initialize (This : in out NativeLibraryHelper'Class; library : Unbounded_String);
   function Create (library : Unbounded_String) return NativeLibraryHelper_Access;
   procedure load (This : in out NativeLibraryHelper);

end dynamic.NativeLibraryHelper_Package;


