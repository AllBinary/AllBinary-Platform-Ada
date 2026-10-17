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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.DateRangeOrderHistoryTag_Package is

   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreValidationTransformTag_Package renames tags.StoreValidationTransformTag_Package;

   type DateRangeOrderHistoryTag is tagged;
   type DateRangeOrderHistoryTag_Access is access all DateRangeOrderHistoryTag'Class;
   type DateRangeOrderHistoryTag_Access_Array is array (Natural range <>) of DateRangeOrderHistoryTag_Access;
   type DateRangeOrderHistoryTag_Access_Array_Access is access all DateRangeOrderHistoryTag_Access_Array;

   type DateRangeOrderHistoryTag is new StoreValidationTransformTag with record
      logUtil : LogUtil_Access;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out DateRangeOrderHistoryTag'Class);
   function Create return DateRangeOrderHistoryTag_Access;
   procedure setStatus (This : in out DateRangeOrderHistoryTag; value : Unbounded_String);
   function doStartTag (This : in out DateRangeOrderHistoryTag) return Integer;
   procedure doStartTag (This : in out DateRangeOrderHistoryTag);

end tags.admin.DateRangeOrderHistoryTag_Package;


