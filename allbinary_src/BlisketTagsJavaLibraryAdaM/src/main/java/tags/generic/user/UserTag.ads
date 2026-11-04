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

limited with tags.generic_Id.user.UserTag_Package;
package tags.generic_Id.user.UserTag_Package_References is
   type UserTag_Access is access all tags.generic_Id.user.UserTag_Package.UserTag'Class;
   type UserTag_Access_Array is array (Natural range <>) of UserTag_Access;
   type UserTag_Access_Array_Access is access all UserTag_Access_Array;
   type UserTag_Access_Array_Access_Array is array (Natural range <>) of UserTag_Access_Array_Access;
   type UserTag_Access_Array_Access_Array_Access is access all UserTag_Access_Array_Access_Array;
end tags.generic_Id.user.UserTag_Package_References;

with tags.generic_Id.user.UserTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.user.UserTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserTag_Access is tags.generic_Id.user.UserTag_Package_References.UserTag_Access;
   function "=" (Left, Right : UserTag_Access) return Boolean renames tags.generic_Id.user.UserTag_Package_References."=";
   subtype UserTag_Access_Array is tags.generic_Id.user.UserTag_Package_References.UserTag_Access_Array;
   function "=" (Left, Right : UserTag_Access_Array) return Boolean renames tags.generic_Id.user.UserTag_Package_References."=";
   subtype UserTag_Access_Array_Access is tags.generic_Id.user.UserTag_Package_References.UserTag_Access_Array_Access;
   function "=" (Left, Right : UserTag_Access_Array_Access) return Boolean renames tags.generic_Id.user.UserTag_Package_References."=";
   subtype UserTag_Access_Array_Access_Array is tags.generic_Id.user.UserTag_Package_References.UserTag_Access_Array_Access_Array;
   function "=" (Left, Right : UserTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.user.UserTag_Package_References."=";
   subtype UserTag_Access_Array_Access_Array_Access is tags.generic_Id.user.UserTag_Package_References.UserTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.user.UserTag_Package_References."=";

   type UserTag is new StoreValidationTransformTag with record
      role : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserTag'Class);
   function Create return UserTag_Access;
   procedure setRole (This : in out UserTag; value : Unbounded_String);
   function doStartTag (This : in out UserTag) return Integer;

end tags.generic_Id.user.UserTag_Package;


