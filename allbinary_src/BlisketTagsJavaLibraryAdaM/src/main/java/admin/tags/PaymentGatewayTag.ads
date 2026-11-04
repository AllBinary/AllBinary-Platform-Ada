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

limited with admin.tags.PaymentGatewayTag_Package;
package admin.tags.PaymentGatewayTag_Package_References is
   type PaymentGatewayTag_Access is access all admin.tags.PaymentGatewayTag_Package.PaymentGatewayTag'Class;
   type PaymentGatewayTag_Access_Array is array (Natural range <>) of PaymentGatewayTag_Access;
   type PaymentGatewayTag_Access_Array_Access is access all PaymentGatewayTag_Access_Array;
   type PaymentGatewayTag_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayTag_Access_Array_Access;
   type PaymentGatewayTag_Access_Array_Access_Array_Access is access all PaymentGatewayTag_Access_Array_Access_Array;
end admin.tags.PaymentGatewayTag_Package_References;

with admin.tags.PaymentGatewayTag_Package_References;
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
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentGatewayTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype PaymentGatewayTag_Access is admin.tags.PaymentGatewayTag_Package_References.PaymentGatewayTag_Access;
   function "=" (Left, Right : PaymentGatewayTag_Access) return Boolean renames admin.tags.PaymentGatewayTag_Package_References."=";
   subtype PaymentGatewayTag_Access_Array is admin.tags.PaymentGatewayTag_Package_References.PaymentGatewayTag_Access_Array;
   function "=" (Left, Right : PaymentGatewayTag_Access_Array) return Boolean renames admin.tags.PaymentGatewayTag_Package_References."=";
   subtype PaymentGatewayTag_Access_Array_Access is admin.tags.PaymentGatewayTag_Package_References.PaymentGatewayTag_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayTag_Access_Array_Access) return Boolean renames admin.tags.PaymentGatewayTag_Package_References."=";
   subtype PaymentGatewayTag_Access_Array_Access_Array is admin.tags.PaymentGatewayTag_Package_References.PaymentGatewayTag_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayTag_Access_Array_Access_Array) return Boolean renames admin.tags.PaymentGatewayTag_Package_References."=";
   subtype PaymentGatewayTag_Access_Array_Access_Array_Access is admin.tags.PaymentGatewayTag_Package_References.PaymentGatewayTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.PaymentGatewayTag_Package_References."=";

   type PaymentGatewayTag is new TableTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayTag'Class);
   function Create return PaymentGatewayTag_Access;
   function process (This : in out PaymentGatewayTag) return Unbounded_String;
   function doStartTag (This : in out PaymentGatewayTag) return Integer;

end admin.tags.PaymentGatewayTag_Package;


