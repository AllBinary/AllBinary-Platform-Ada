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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PaymentTag is tagged;
   type PaymentTag_Access is access all PaymentTag'Class;
   type PaymentTag_Access_Array is array (Natural range <>) of PaymentTag_Access;
   type PaymentTag_Access_Array_Access is access all PaymentTag_Access_Array;
   type PaymentTag_Access_Array_Access_Array is array (Natural range <>) of PaymentTag_Access_Array_Access;
   type PaymentTag_Access_Array_Access_Array_Access is access all PaymentTag_Access_Array_Access_Array;

   type PaymentTag is new TableTag with record
      logUtil : LogUtil_Access;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out PaymentTag'Class);
   function Create return PaymentTag_Access;
   procedure setStoreName (This : in out PaymentTag; value : Unbounded_String);
   function select_Id (This : in out PaymentTag) return Unbounded_String;
   function doStartTag (This : in out PaymentTag) return Integer;

end admin.tags.PaymentTag_Package;


