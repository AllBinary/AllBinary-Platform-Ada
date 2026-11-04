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

limited with tags.admin.DateRangeOrderHistoryTag_Package;
package tags.admin.DateRangeOrderHistoryTag_Package_References is
   type DateRangeOrderHistoryTag_Access is access all tags.admin.DateRangeOrderHistoryTag_Package.DateRangeOrderHistoryTag'Class;
   type DateRangeOrderHistoryTag_Access_Array is array (Natural range <>) of DateRangeOrderHistoryTag_Access;
   type DateRangeOrderHistoryTag_Access_Array_Access is access all DateRangeOrderHistoryTag_Access_Array;
   type DateRangeOrderHistoryTag_Access_Array_Access_Array is array (Natural range <>) of DateRangeOrderHistoryTag_Access_Array_Access;
   type DateRangeOrderHistoryTag_Access_Array_Access_Array_Access is access all DateRangeOrderHistoryTag_Access_Array_Access_Array;
end tags.admin.DateRangeOrderHistoryTag_Package_References;

with tags.admin.DateRangeOrderHistoryTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.DateRangeOrderHistoryTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DateRangeOrderHistoryTag_Access is tags.admin.DateRangeOrderHistoryTag_Package_References.DateRangeOrderHistoryTag_Access;
   function "=" (Left, Right : DateRangeOrderHistoryTag_Access) return Boolean renames tags.admin.DateRangeOrderHistoryTag_Package_References."=";
   subtype DateRangeOrderHistoryTag_Access_Array is tags.admin.DateRangeOrderHistoryTag_Package_References.DateRangeOrderHistoryTag_Access_Array;
   function "=" (Left, Right : DateRangeOrderHistoryTag_Access_Array) return Boolean renames tags.admin.DateRangeOrderHistoryTag_Package_References."=";
   subtype DateRangeOrderHistoryTag_Access_Array_Access is tags.admin.DateRangeOrderHistoryTag_Package_References.DateRangeOrderHistoryTag_Access_Array_Access;
   function "=" (Left, Right : DateRangeOrderHistoryTag_Access_Array_Access) return Boolean renames tags.admin.DateRangeOrderHistoryTag_Package_References."=";
   subtype DateRangeOrderHistoryTag_Access_Array_Access_Array is tags.admin.DateRangeOrderHistoryTag_Package_References.DateRangeOrderHistoryTag_Access_Array_Access_Array;
   function "=" (Left, Right : DateRangeOrderHistoryTag_Access_Array_Access_Array) return Boolean renames tags.admin.DateRangeOrderHistoryTag_Package_References."=";
   subtype DateRangeOrderHistoryTag_Access_Array_Access_Array_Access is tags.admin.DateRangeOrderHistoryTag_Package_References.DateRangeOrderHistoryTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DateRangeOrderHistoryTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.DateRangeOrderHistoryTag_Package_References."=";

   type DateRangeOrderHistoryTag is new StoreValidationTransformTag with record
      logUtil : LogUtil_Access;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out DateRangeOrderHistoryTag'Class);
   function Create return DateRangeOrderHistoryTag_Access;
   procedure setStatus (This : in out DateRangeOrderHistoryTag; value : Unbounded_String);
   function doStartTag (This : in out DateRangeOrderHistoryTag) return Integer;

end tags.admin.DateRangeOrderHistoryTag_Package;


