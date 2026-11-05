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

limited with tags.generic_Id.order.history.OrderHistoryTag_Package;
package tags.generic_Id.order.history.OrderHistoryTag_Package_References is
   type OrderHistoryTag_Access is access all tags.generic_Id.order.history.OrderHistoryTag_Package.OrderHistoryTag'Class;
   type OrderHistoryTag_Access_Array is array (Natural range <>) of OrderHistoryTag_Access;
   type OrderHistoryTag_Access_Array_Access is access all OrderHistoryTag_Access_Array;
   type OrderHistoryTag_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryTag_Access_Array_Access;
   type OrderHistoryTag_Access_Array_Access_Array_Access is access all OrderHistoryTag_Access_Array_Access_Array;
end tags.generic_Id.order.history.OrderHistoryTag_Package_References;

with tags.generic_Id.order.history.OrderHistoryTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.order.history.OrderHistoryTag_Package is

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


   subtype OrderHistoryTag_Access is tags.generic_Id.order.history.OrderHistoryTag_Package_References.OrderHistoryTag_Access;
   function "=" (Left, Right : OrderHistoryTag_Access) return Boolean renames tags.generic_Id.order.history.OrderHistoryTag_Package_References."=";
   subtype OrderHistoryTag_Access_Array is tags.generic_Id.order.history.OrderHistoryTag_Package_References.OrderHistoryTag_Access_Array;
   function "=" (Left, Right : OrderHistoryTag_Access_Array) return Boolean renames tags.generic_Id.order.history.OrderHistoryTag_Package_References."=";
   subtype OrderHistoryTag_Access_Array_Access is tags.generic_Id.order.history.OrderHistoryTag_Package_References.OrderHistoryTag_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryTag_Access_Array_Access) return Boolean renames tags.generic_Id.order.history.OrderHistoryTag_Package_References."=";
   subtype OrderHistoryTag_Access_Array_Access_Array is tags.generic_Id.order.history.OrderHistoryTag_Package_References.OrderHistoryTag_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.order.history.OrderHistoryTag_Package_References."=";
   subtype OrderHistoryTag_Access_Array_Access_Array_Access is tags.generic_Id.order.history.OrderHistoryTag_Package_References.OrderHistoryTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.order.history.OrderHistoryTag_Package_References."=";

   type OrderHistoryTag is new StoreValidationTransformTag with record
      OrderHistoryTag_Field_logUtil : LogUtil_Access;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryTag'Class);
   function Create return OrderHistoryTag_Access;
   procedure setStatus (This : in out OrderHistoryTag; value : Unbounded_String);
   function setOrderStatus (This : in out OrderHistoryTag) return Unbounded_String;
   function doStartTag (This : in out OrderHistoryTag) return Integer;

end tags.generic_Id.order.history.OrderHistoryTag_Package;


