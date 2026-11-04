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

limited with admin.taghelpers.PaymentHelper_Package;
package admin.taghelpers.PaymentHelper_Package_References is
   type PaymentHelper_Access is access all admin.taghelpers.PaymentHelper_Package.PaymentHelper'Class;
   type PaymentHelper_Access_Array is array (Natural range <>) of PaymentHelper_Access;
   type PaymentHelper_Access_Array_Access is access all PaymentHelper_Access_Array;
   type PaymentHelper_Access_Array_Access_Array is array (Natural range <>) of PaymentHelper_Access_Array_Access;
   type PaymentHelper_Access_Array_Access_Array_Access is access all PaymentHelper_Access_Array_Access_Array;
end admin.taghelpers.PaymentHelper_Package_References;

with admin.taghelpers.PaymentHelper_Package_References;
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
with admin.taghelpers.Table_Package; use admin.taghelpers.Table_Package;

package admin.taghelpers.PaymentHelper_Package is

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


   subtype PaymentHelper_Access is admin.taghelpers.PaymentHelper_Package_References.PaymentHelper_Access;
   function "=" (Left, Right : PaymentHelper_Access) return Boolean renames admin.taghelpers.PaymentHelper_Package_References."=";
   subtype PaymentHelper_Access_Array is admin.taghelpers.PaymentHelper_Package_References.PaymentHelper_Access_Array;
   function "=" (Left, Right : PaymentHelper_Access_Array) return Boolean renames admin.taghelpers.PaymentHelper_Package_References."=";
   subtype PaymentHelper_Access_Array_Access is admin.taghelpers.PaymentHelper_Package_References.PaymentHelper_Access_Array_Access;
   function "=" (Left, Right : PaymentHelper_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentHelper_Package_References."=";
   subtype PaymentHelper_Access_Array_Access_Array is admin.taghelpers.PaymentHelper_Package_References.PaymentHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.PaymentHelper_Package_References."=";
   subtype PaymentHelper_Access_Array_Access_Array_Access is admin.taghelpers.PaymentHelper_Package_References.PaymentHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentHelper_Package_References."=";

   type PaymentHelper is new Table with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
      value : Unbounded_String;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out PaymentHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentHelper_Access;
   procedure getFormData (This : in out PaymentHelper);
   function insert (This : in out PaymentHelper) return Unbounded_String;
   function select_Id (This : in out PaymentHelper) return Unbounded_String;
   function delete (This : in out PaymentHelper) return Unbounded_String;
   function drop (This : in out PaymentHelper) return Unbounded_String;
   function create (This : in out PaymentHelper) return Unbounded_String;
   function restore (This : in out PaymentHelper) return Unbounded_String;
   function backup (This : in out PaymentHelper) return Unbounded_String;
   function update (This : in out PaymentHelper) return Unbounded_String;

end admin.taghelpers.PaymentHelper_Package;


