-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with admin.taghelpers.BasicTable_Package;
package admin.taghelpers.BasicTable_Package_References is
   type BasicTable_Access is access all admin.taghelpers.BasicTable_Package.BasicTable'Class;
   type BasicTable_Access_Array is array (Natural range <>) of BasicTable_Access;
   type BasicTable_Access_Array_Access is access all BasicTable_Access_Array;
   type BasicTable_Access_Array_Access_Array is array (Natural range <>) of BasicTable_Access_Array_Access;
   type BasicTable_Access_Array_Access_Array_Access is access all BasicTable_Access_Array_Access_Array;
   type BasicTable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTable_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTable_Access_Array_Access is (if Value /= null and then Value.all in BasicTable_Access_Array_Object'Class then BasicTable_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTable_Access_Array_Access_Array_Object'Class then BasicTable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.BasicTable_Package_References;

with admin.taghelpers.BasicTable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with admin.taghelpers.BasicTableInterface_Package; use admin.taghelpers.BasicTableInterface_Package;

package admin.taghelpers.BasicTable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicTable_Access is admin.taghelpers.BasicTable_Package_References.BasicTable_Access;
   function "=" (Left, Right : BasicTable_Access) return Boolean renames admin.taghelpers.BasicTable_Package_References."=";
   subtype BasicTable_Access_Array is admin.taghelpers.BasicTable_Package_References.BasicTable_Access_Array;
   function "=" (Left, Right : BasicTable_Access_Array) return Boolean renames admin.taghelpers.BasicTable_Package_References."=";
   subtype BasicTable_Access_Array_Access is admin.taghelpers.BasicTable_Package_References.BasicTable_Access_Array_Access;
   function "=" (Left, Right : BasicTable_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTable_Package_References."=";
   function Java_Box (Value : BasicTable_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BasicTable_Package_References.Java_Box;
   function Java_Unbox_BasicTable_Access_Array (Value : access Java_Object'Class) return BasicTable_Access_Array_Access renames admin.taghelpers.BasicTable_Package_References.Java_Unbox_BasicTable_Access_Array;
   subtype BasicTable_Access_Array_Access_Array is admin.taghelpers.BasicTable_Package_References.BasicTable_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTable_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicTable_Package_References."=";
   subtype BasicTable_Access_Array_Access_Array_Access is admin.taghelpers.BasicTable_Package_References.BasicTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTable_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTable_Package_References."=";
   function Java_Box (Value : BasicTable_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BasicTable_Package_References.Java_Box;
   function Java_Unbox_BasicTable_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTable_Access_Array_Access_Array_Access renames admin.taghelpers.BasicTable_Package_References.Java_Unbox_BasicTable_Access_Array_Access_Array;

   type BasicTable is new Java_Object and BasicTableInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out BasicTable'Class);
   function Create return BasicTable_Access;
   function drop (This : in out BasicTable) return Unbounded_String;
   function create (This : in out BasicTable) return Unbounded_String;
   function restore (This : in out BasicTable) return Unbounded_String;
   function backup (This : in out BasicTable) return Unbounded_String;

end admin.taghelpers.BasicTable_Package;


