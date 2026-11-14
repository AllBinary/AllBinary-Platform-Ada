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
limited with admin.tags.ParentInventoryTagHelper_Package;
package admin.tags.ParentInventoryTagHelper_Package_References is
   type ParentInventoryTagHelper_Access is access all admin.tags.ParentInventoryTagHelper_Package.ParentInventoryTagHelper'Class;
   type ParentInventoryTagHelper_Access_Array is array (Natural range <>) of ParentInventoryTagHelper_Access;
   type ParentInventoryTagHelper_Access_Array_Access is access all ParentInventoryTagHelper_Access_Array;
   type ParentInventoryTagHelper_Access_Array_Access_Array is array (Natural range <>) of ParentInventoryTagHelper_Access_Array_Access;
   type ParentInventoryTagHelper_Access_Array_Access_Array_Access is access all ParentInventoryTagHelper_Access_Array_Access_Array;
   type ParentInventoryTagHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ParentInventoryTagHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : ParentInventoryTagHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ParentInventoryTagHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ParentInventoryTagHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ParentInventoryTagHelper_Access_Array_Access is (if Value /= null and then Value.all in ParentInventoryTagHelper_Access_Array_Object'Class then ParentInventoryTagHelper_Access_Array_Object'Class (Value.all).Value else null);
   type ParentInventoryTagHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ParentInventoryTagHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ParentInventoryTagHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ParentInventoryTagHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ParentInventoryTagHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ParentInventoryTagHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ParentInventoryTagHelper_Access_Array_Access_Array_Object'Class then ParentInventoryTagHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.ParentInventoryTagHelper_Package_References;

with admin.tags.ParentInventoryTagHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;

package admin.tags.ParentInventoryTagHelper_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ParentInventoryTagHelper_Access is admin.tags.ParentInventoryTagHelper_Package_References.ParentInventoryTagHelper_Access;
   function "=" (Left, Right : ParentInventoryTagHelper_Access) return Boolean renames admin.tags.ParentInventoryTagHelper_Package_References."=";
   subtype ParentInventoryTagHelper_Access_Array is admin.tags.ParentInventoryTagHelper_Package_References.ParentInventoryTagHelper_Access_Array;
   function "=" (Left, Right : ParentInventoryTagHelper_Access_Array) return Boolean renames admin.tags.ParentInventoryTagHelper_Package_References."=";
   subtype ParentInventoryTagHelper_Access_Array_Access is admin.tags.ParentInventoryTagHelper_Package_References.ParentInventoryTagHelper_Access_Array_Access;
   function "=" (Left, Right : ParentInventoryTagHelper_Access_Array_Access) return Boolean renames admin.tags.ParentInventoryTagHelper_Package_References."=";
   function Java_Box (Value : ParentInventoryTagHelper_Access_Array_Access) return Java_Object_Access renames admin.tags.ParentInventoryTagHelper_Package_References.Java_Box;
   function Java_Unbox_ParentInventoryTagHelper_Access_Array (Value : access Java_Object'Class) return ParentInventoryTagHelper_Access_Array_Access renames admin.tags.ParentInventoryTagHelper_Package_References.Java_Unbox_ParentInventoryTagHelper_Access_Array;
   subtype ParentInventoryTagHelper_Access_Array_Access_Array is admin.tags.ParentInventoryTagHelper_Package_References.ParentInventoryTagHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ParentInventoryTagHelper_Access_Array_Access_Array) return Boolean renames admin.tags.ParentInventoryTagHelper_Package_References."=";
   subtype ParentInventoryTagHelper_Access_Array_Access_Array_Access is admin.tags.ParentInventoryTagHelper_Package_References.ParentInventoryTagHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ParentInventoryTagHelper_Access_Array_Access_Array_Access) return Boolean renames admin.tags.ParentInventoryTagHelper_Package_References."=";
   function Java_Box (Value : ParentInventoryTagHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.ParentInventoryTagHelper_Package_References.Java_Box;
   function Java_Unbox_ParentInventoryTagHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return ParentInventoryTagHelper_Access_Array_Access_Array_Access renames admin.tags.ParentInventoryTagHelper_Package_References.Java_Unbox_ParentInventoryTagHelper_Access_Array_Access_Array;

   type ParentInventoryTagHelper is new Java_Object with null record;
   instance : ParentInventoryTagHelper_Access;

   procedure Initialize (This : in out ParentInventoryTagHelper'Class);
   function Create return ParentInventoryTagHelper_Access;
   function getInstance return ParentInventoryTagHelper_Access;
   procedure isValid (This : in out ParentInventoryTagHelper; tagClass_Param : access Java_Object'Class; parentTag_Param : access Tag_Package.Tag'Class);

end admin.tags.ParentInventoryTagHelper_Package;


