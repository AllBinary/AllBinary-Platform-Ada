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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.business.user.role.UserRoleData_Package; use org.allbinary.business.user.role.UserRoleData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.UserTag_Package is

   package UserRoleData_Package renames Standard.org.allbinary.business.user.role.UserRoleData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type UserTag is tagged;
   type UserTag_Access is access all UserTag'Class;
   type UserTag_Access_Array is array (Natural range <>) of UserTag_Access;
   type UserTag_Access_Array_Access is access all UserTag_Access_Array;

   type UserTag is new StoreValidationTransformTag with record
      role : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserTag'Class);
   function Create return UserTag_Access;
   procedure setRole (This : in out UserTag; value : Unbounded_String);
   function doStartTag (This : in out UserTag) return Integer;

end tags.admin.UserTag_Package;


