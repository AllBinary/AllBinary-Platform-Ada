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
limited with admin.tags.UserTag_Package;
package admin.tags.UserTag_Package_References is
   type UserTag_Access is access all admin.tags.UserTag_Package.UserTag'Class;
   type UserTag_Access_Array is array (Natural range <>) of UserTag_Access;
   type UserTag_Access_Array_Access is access all UserTag_Access_Array;
   type UserTag_Access_Array_Access_Array is array (Natural range <>) of UserTag_Access_Array_Access;
   type UserTag_Access_Array_Access_Array_Access is access all UserTag_Access_Array_Access_Array;
   type UserTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserTag_Access_Array_Access;
   end record;
   function Java_Box (Value : UserTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserTag_Access_Array_Access is (if Value /= null and then Value.all in UserTag_Access_Array_Object'Class then UserTag_Access_Array_Object'Class (Value.all).Value else null);
   type UserTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserTag_Access_Array_Access_Array_Object'Class then UserTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.UserTag_Package_References;

with admin.tags.UserTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.UserTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserTag_Access is admin.tags.UserTag_Package_References.UserTag_Access;
   function "=" (Left, Right : UserTag_Access) return Boolean renames admin.tags.UserTag_Package_References."=";
   subtype UserTag_Access_Array is admin.tags.UserTag_Package_References.UserTag_Access_Array;
   function "=" (Left, Right : UserTag_Access_Array) return Boolean renames admin.tags.UserTag_Package_References."=";
   subtype UserTag_Access_Array_Access is admin.tags.UserTag_Package_References.UserTag_Access_Array_Access;
   function "=" (Left, Right : UserTag_Access_Array_Access) return Boolean renames admin.tags.UserTag_Package_References."=";
   function Java_Box (Value : UserTag_Access_Array_Access) return Java_Object_Access renames admin.tags.UserTag_Package_References.Java_Box;
   function Java_Unbox_UserTag_Access_Array (Value : access Java_Object'Class) return UserTag_Access_Array_Access renames admin.tags.UserTag_Package_References.Java_Unbox_UserTag_Access_Array;
   subtype UserTag_Access_Array_Access_Array is admin.tags.UserTag_Package_References.UserTag_Access_Array_Access_Array;
   function "=" (Left, Right : UserTag_Access_Array_Access_Array) return Boolean renames admin.tags.UserTag_Package_References."=";
   subtype UserTag_Access_Array_Access_Array_Access is admin.tags.UserTag_Package_References.UserTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.UserTag_Package_References."=";
   function Java_Box (Value : UserTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.UserTag_Package_References.Java_Box;
   function Java_Unbox_UserTag_Access_Array_Access_Array (Value : access Java_Object'Class) return UserTag_Access_Array_Access_Array_Access renames admin.tags.UserTag_Package_References.Java_Unbox_UserTag_Access_Array_Access_Array;

   type UserTag is new TableTag with record
      role : Unbounded_String;
      enable : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserTag'Class);
   function Create return UserTag_Access;
   procedure setRole (This : in out UserTag; value : Unbounded_String);
   procedure setEnable (This : in out UserTag; value : Unbounded_String);
   function doStartTag (This : in out UserTag) return Integer;

end admin.tags.UserTag_Package;


