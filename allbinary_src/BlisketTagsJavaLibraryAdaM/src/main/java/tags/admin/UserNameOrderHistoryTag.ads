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
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.UserNameOrderHistoryTag_Package is

   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package StoreValidationTransformTag_Package renames tags.StoreValidationTransformTag_Package;

   type UserNameOrderHistoryTag is tagged;
   type UserNameOrderHistoryTag_Access is access all UserNameOrderHistoryTag'Class;
   type UserNameOrderHistoryTag_Access_Array is array (Natural range <>) of UserNameOrderHistoryTag_Access;
   type UserNameOrderHistoryTag_Access_Array_Access is access all UserNameOrderHistoryTag_Access_Array;

   type UserNameOrderHistoryTag is new StoreValidationTransformTag with record
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserNameOrderHistoryTag'Class);
   function Create return UserNameOrderHistoryTag_Access;
   procedure setStatus (This : in out UserNameOrderHistoryTag; value : Unbounded_String);
   function doStartTag (This : in out UserNameOrderHistoryTag) return Integer;
   procedure doStartTag (This : in out UserNameOrderHistoryTag);

end tags.admin.UserNameOrderHistoryTag_Package;


