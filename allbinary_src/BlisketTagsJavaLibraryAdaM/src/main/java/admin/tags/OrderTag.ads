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

limited with admin.tags.OrderTag_Package;
package admin.tags.OrderTag_Package_References is
   type OrderTag_Access is access all admin.tags.OrderTag_Package.OrderTag'Class;
   type OrderTag_Access_Array is array (Natural range <>) of OrderTag_Access;
   type OrderTag_Access_Array_Access is access all OrderTag_Access_Array;
   type OrderTag_Access_Array_Access_Array is array (Natural range <>) of OrderTag_Access_Array_Access;
   type OrderTag_Access_Array_Access_Array_Access is access all OrderTag_Access_Array_Access_Array;
end admin.tags.OrderTag_Package_References;

with admin.tags.OrderTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.OrderTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;
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


   subtype OrderTag_Access is admin.tags.OrderTag_Package_References.OrderTag_Access;
   function "=" (Left, Right : OrderTag_Access) return Boolean renames admin.tags.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array is admin.tags.OrderTag_Package_References.OrderTag_Access_Array;
   function "=" (Left, Right : OrderTag_Access_Array) return Boolean renames admin.tags.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array_Access is admin.tags.OrderTag_Package_References.OrderTag_Access_Array_Access;
   function "=" (Left, Right : OrderTag_Access_Array_Access) return Boolean renames admin.tags.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array_Access_Array is admin.tags.OrderTag_Package_References.OrderTag_Access_Array_Access_Array;
   function "=" (Left, Right : OrderTag_Access_Array_Access_Array) return Boolean renames admin.tags.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array_Access_Array_Access is admin.tags.OrderTag_Package_References.OrderTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.OrderTag_Package_References."=";

   type OrderTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out OrderTag'Class);
   function Create return OrderTag_Access;
   procedure setCommand (This : in out OrderTag; command : Unbounded_String);
   procedure setStoreName (This : in out OrderTag; value : Unbounded_String);
   function process (This : in out OrderTag) return Unbounded_String;
   function setPaymentGateway (This : in out OrderTag) return Boolean;
   function doStartTag (This : in out OrderTag) return Integer;

end admin.tags.OrderTag_Package;


