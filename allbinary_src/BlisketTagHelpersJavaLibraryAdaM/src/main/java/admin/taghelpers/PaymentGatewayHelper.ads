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
limited with admin.taghelpers.PaymentGatewayHelper_Package;
package admin.taghelpers.PaymentGatewayHelper_Package_References is
   type PaymentGatewayHelper_Access is access all admin.taghelpers.PaymentGatewayHelper_Package.PaymentGatewayHelper'Class;
   type PaymentGatewayHelper_Access_Array is array (Natural range <>) of PaymentGatewayHelper_Access;
   type PaymentGatewayHelper_Access_Array_Access is access all PaymentGatewayHelper_Access_Array;
   type PaymentGatewayHelper_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayHelper_Access_Array_Access;
   type PaymentGatewayHelper_Access_Array_Access_Array_Access is access all PaymentGatewayHelper_Access_Array_Access_Array;
   type PaymentGatewayHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayHelper_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayHelper_Access_Array_Object'Class then PaymentGatewayHelper_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayHelper_Access_Array_Access_Array_Object'Class then PaymentGatewayHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.PaymentGatewayHelper_Package_References;

with admin.taghelpers.PaymentGatewayHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.installer.Portion_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.PaymentGatewayHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype Portion_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access;
   use type Portion_Access;
   subtype Portion_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array;
   use type Portion_Access_Array;
   subtype Portion_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access;
   use type Portion_Access_Array_Access;
   subtype Portion_Access_Array_Access_Array is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array;
   use type Portion_Access_Array_Access_Array;
   subtype Portion_Access_Array_Access_Array_Access is org.allbinary.business.installer.Portion_Package_References.Portion_Access_Array_Access_Array_Access;
   use type Portion_Access_Array_Access_Array_Access;
   subtype WeblisketSession_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access;
   use type WeblisketSession_Access;
   subtype WeblisketSession_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array;
   use type WeblisketSession_Access_Array;
   subtype WeblisketSession_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access;
   subtype WeblisketSession_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array;
   use type WeblisketSession_Access_Array_Access_Array;
   subtype WeblisketSession_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References.WeblisketSession_Access_Array_Access_Array_Access;
   use type WeblisketSession_Access_Array_Access_Array_Access;
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


   subtype PaymentGatewayHelper_Access is admin.taghelpers.PaymentGatewayHelper_Package_References.PaymentGatewayHelper_Access;
   function "=" (Left, Right : PaymentGatewayHelper_Access) return Boolean renames admin.taghelpers.PaymentGatewayHelper_Package_References."=";
   subtype PaymentGatewayHelper_Access_Array is admin.taghelpers.PaymentGatewayHelper_Package_References.PaymentGatewayHelper_Access_Array;
   function "=" (Left, Right : PaymentGatewayHelper_Access_Array) return Boolean renames admin.taghelpers.PaymentGatewayHelper_Package_References."=";
   subtype PaymentGatewayHelper_Access_Array_Access is admin.taghelpers.PaymentGatewayHelper_Package_References.PaymentGatewayHelper_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayHelper_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentGatewayHelper_Package_References."=";
   function Java_Box (Value : PaymentGatewayHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.PaymentGatewayHelper_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayHelper_Access_Array (Value : access Java_Object'Class) return PaymentGatewayHelper_Access_Array_Access renames admin.taghelpers.PaymentGatewayHelper_Package_References.Java_Unbox_PaymentGatewayHelper_Access_Array;
   subtype PaymentGatewayHelper_Access_Array_Access_Array is admin.taghelpers.PaymentGatewayHelper_Package_References.PaymentGatewayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.PaymentGatewayHelper_Package_References."=";
   subtype PaymentGatewayHelper_Access_Array_Access_Array_Access is admin.taghelpers.PaymentGatewayHelper_Package_References.PaymentGatewayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentGatewayHelper_Package_References."=";
   function Java_Box (Value : PaymentGatewayHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.PaymentGatewayHelper_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayHelper_Access_Array_Access_Array_Access renames admin.taghelpers.PaymentGatewayHelper_Package_References.Java_Unbox_PaymentGatewayHelper_Access_Array_Access_Array;

   type PaymentGatewayHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      httpServletRequest : HttpServletRequest_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentGatewayHelper_Access;
   function insert (This : in out PaymentGatewayHelper) return Unbounded_String;
   function update (This : in out PaymentGatewayHelper) return Unbounded_String;
   function delete (This : in out PaymentGatewayHelper) return Unbounded_String;
   function drop (This : in out PaymentGatewayHelper) return Unbounded_String;
   function create (This : in out PaymentGatewayHelper) return Unbounded_String;
   function restore (This : in out PaymentGatewayHelper) return Unbounded_String;
   function backup (This : in out PaymentGatewayHelper) return Unbounded_String;

end admin.taghelpers.PaymentGatewayHelper_Package;


