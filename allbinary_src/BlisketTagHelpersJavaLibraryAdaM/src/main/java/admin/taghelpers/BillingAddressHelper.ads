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
limited with admin.taghelpers.BillingAddressHelper_Package;
package admin.taghelpers.BillingAddressHelper_Package_References is
   type BillingAddressHelper_Access is access all admin.taghelpers.BillingAddressHelper_Package.BillingAddressHelper'Class;
   type BillingAddressHelper_Access_Array is array (Natural range <>) of BillingAddressHelper_Access;
   type BillingAddressHelper_Access_Array_Access is access all BillingAddressHelper_Access_Array;
   type BillingAddressHelper_Access_Array_Access_Array is array (Natural range <>) of BillingAddressHelper_Access_Array_Access;
   type BillingAddressHelper_Access_Array_Access_Array_Access is access all BillingAddressHelper_Access_Array_Access_Array;
   type BillingAddressHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BillingAddressHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : BillingAddressHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BillingAddressHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BillingAddressHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BillingAddressHelper_Access_Array_Access is (if Value /= null and then Value.all in BillingAddressHelper_Access_Array_Object'Class then BillingAddressHelper_Access_Array_Object'Class (Value.all).Value else null);
   type BillingAddressHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BillingAddressHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BillingAddressHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BillingAddressHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BillingAddressHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BillingAddressHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BillingAddressHelper_Access_Array_Access_Array_Object'Class then BillingAddressHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.BillingAddressHelper_Package_References;

with admin.taghelpers.BillingAddressHelper_Package_References;
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
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
with admin.taghelpers.Table_Package; use admin.taghelpers.Table_Package;

package admin.taghelpers.BillingAddressHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
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
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
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
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BillingAddressHelper_Access is admin.taghelpers.BillingAddressHelper_Package_References.BillingAddressHelper_Access;
   function "=" (Left, Right : BillingAddressHelper_Access) return Boolean renames admin.taghelpers.BillingAddressHelper_Package_References."=";
   subtype BillingAddressHelper_Access_Array is admin.taghelpers.BillingAddressHelper_Package_References.BillingAddressHelper_Access_Array;
   function "=" (Left, Right : BillingAddressHelper_Access_Array) return Boolean renames admin.taghelpers.BillingAddressHelper_Package_References."=";
   subtype BillingAddressHelper_Access_Array_Access is admin.taghelpers.BillingAddressHelper_Package_References.BillingAddressHelper_Access_Array_Access;
   function "=" (Left, Right : BillingAddressHelper_Access_Array_Access) return Boolean renames admin.taghelpers.BillingAddressHelper_Package_References."=";
   function Java_Box (Value : BillingAddressHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BillingAddressHelper_Package_References.Java_Box;
   function Java_Unbox_BillingAddressHelper_Access_Array (Value : access Java_Object'Class) return BillingAddressHelper_Access_Array_Access renames admin.taghelpers.BillingAddressHelper_Package_References.Java_Unbox_BillingAddressHelper_Access_Array;
   subtype BillingAddressHelper_Access_Array_Access_Array is admin.taghelpers.BillingAddressHelper_Package_References.BillingAddressHelper_Access_Array_Access_Array;
   function "=" (Left, Right : BillingAddressHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BillingAddressHelper_Package_References."=";
   subtype BillingAddressHelper_Access_Array_Access_Array_Access is admin.taghelpers.BillingAddressHelper_Package_References.BillingAddressHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BillingAddressHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BillingAddressHelper_Package_References."=";
   function Java_Box (Value : BillingAddressHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.BillingAddressHelper_Package_References.Java_Box;
   function Java_Unbox_BillingAddressHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return BillingAddressHelper_Access_Array_Access_Array_Access renames admin.taghelpers.BillingAddressHelper_Package_References.Java_Unbox_BillingAddressHelper_Access_Array_Access_Array;

   type BillingAddressHelper is new Table with record
      logUtil : LogUtil_Access;
      stringUtil : StringUtil_Access;
      weblisketSession : WeblisketSession_Access;
      request : HttpServletRequest_Access;
      userName : Unbounded_String;
      streetAddress : StreetAddress_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out BillingAddressHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BillingAddressHelper_Access;
   procedure getAddressForm (This : in out BillingAddressHelper);
   function drop (This : in out BillingAddressHelper) return Unbounded_String;
   function create (This : in out BillingAddressHelper) return Unbounded_String;
   function restore (This : in out BillingAddressHelper) return Unbounded_String;
   function backup (This : in out BillingAddressHelper) return Unbounded_String;
   function insert (This : in out BillingAddressHelper) return Unbounded_String;
   function update (This : in out BillingAddressHelper) return Unbounded_String;
   function setToShippingAddress (This : in out BillingAddressHelper) return Unbounded_String;
   function delete (This : in out BillingAddressHelper) return Unbounded_String;
   function set (This : in out BillingAddressHelper) return Unbounded_String;

end admin.taghelpers.BillingAddressHelper_Package;


