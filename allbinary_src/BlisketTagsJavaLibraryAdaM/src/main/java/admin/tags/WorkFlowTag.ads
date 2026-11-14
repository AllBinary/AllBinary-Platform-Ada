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
limited with admin.tags.WorkFlowTag_Package;
package admin.tags.WorkFlowTag_Package_References is
   type WorkFlowTag_Access is access all admin.tags.WorkFlowTag_Package.WorkFlowTag'Class;
   type WorkFlowTag_Access_Array is array (Natural range <>) of WorkFlowTag_Access;
   type WorkFlowTag_Access_Array_Access is access all WorkFlowTag_Access_Array;
   type WorkFlowTag_Access_Array_Access_Array is array (Natural range <>) of WorkFlowTag_Access_Array_Access;
   type WorkFlowTag_Access_Array_Access_Array_Access is access all WorkFlowTag_Access_Array_Access_Array;
   type WorkFlowTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowTag_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowTag_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowTag_Access_Array_Object'Class then WorkFlowTag_Access_Array_Object'Class (Value.all).Value else null);
   type WorkFlowTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkFlowTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkFlowTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkFlowTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkFlowTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkFlowTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkFlowTag_Access_Array_Access_Array_Object'Class then WorkFlowTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.WorkFlowTag_Package_References;

with admin.tags.WorkFlowTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.WorkFlowTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowTag_Access is admin.tags.WorkFlowTag_Package_References.WorkFlowTag_Access;
   function "=" (Left, Right : WorkFlowTag_Access) return Boolean renames admin.tags.WorkFlowTag_Package_References."=";
   subtype WorkFlowTag_Access_Array is admin.tags.WorkFlowTag_Package_References.WorkFlowTag_Access_Array;
   function "=" (Left, Right : WorkFlowTag_Access_Array) return Boolean renames admin.tags.WorkFlowTag_Package_References."=";
   subtype WorkFlowTag_Access_Array_Access is admin.tags.WorkFlowTag_Package_References.WorkFlowTag_Access_Array_Access;
   function "=" (Left, Right : WorkFlowTag_Access_Array_Access) return Boolean renames admin.tags.WorkFlowTag_Package_References."=";
   function Java_Box (Value : WorkFlowTag_Access_Array_Access) return Java_Object_Access renames admin.tags.WorkFlowTag_Package_References.Java_Box;
   function Java_Unbox_WorkFlowTag_Access_Array (Value : access Java_Object'Class) return WorkFlowTag_Access_Array_Access renames admin.tags.WorkFlowTag_Package_References.Java_Unbox_WorkFlowTag_Access_Array;
   subtype WorkFlowTag_Access_Array_Access_Array is admin.tags.WorkFlowTag_Package_References.WorkFlowTag_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowTag_Access_Array_Access_Array) return Boolean renames admin.tags.WorkFlowTag_Package_References."=";
   subtype WorkFlowTag_Access_Array_Access_Array_Access is admin.tags.WorkFlowTag_Package_References.WorkFlowTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.WorkFlowTag_Package_References."=";
   function Java_Box (Value : WorkFlowTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.WorkFlowTag_Package_References.Java_Box;
   function Java_Unbox_WorkFlowTag_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkFlowTag_Access_Array_Access_Array_Access renames admin.tags.WorkFlowTag_Package_References.Java_Unbox_WorkFlowTag_Access_Array_Access_Array;

   type WorkFlowTag is new TableTag with null record;

   procedure Initialize (This : in out WorkFlowTag'Class);
   function Create return WorkFlowTag_Access;

end admin.tags.WorkFlowTag_Package;


