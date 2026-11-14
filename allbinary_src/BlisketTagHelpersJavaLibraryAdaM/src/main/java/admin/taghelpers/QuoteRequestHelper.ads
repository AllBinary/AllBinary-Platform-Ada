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
limited with admin.taghelpers.QuoteRequestHelper_Package;
package admin.taghelpers.QuoteRequestHelper_Package_References is
   type QuoteRequestHelper_Access is access all admin.taghelpers.QuoteRequestHelper_Package.QuoteRequestHelper'Class;
   type QuoteRequestHelper_Access_Array is array (Natural range <>) of QuoteRequestHelper_Access;
   type QuoteRequestHelper_Access_Array_Access is access all QuoteRequestHelper_Access_Array;
   type QuoteRequestHelper_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestHelper_Access_Array_Access;
   type QuoteRequestHelper_Access_Array_Access_Array_Access is access all QuoteRequestHelper_Access_Array_Access_Array;
   type QuoteRequestHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestHelper_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestHelper_Access_Array_Object'Class then QuoteRequestHelper_Access_Array_Object'Class (Value.all).Value else null);
   type QuoteRequestHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestHelper_Access_Array_Access_Array_Object'Class then QuoteRequestHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.QuoteRequestHelper_Package_References;

with admin.taghelpers.QuoteRequestHelper_Package_References;
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
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.QuoteRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype QuoteRequest_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access;
   use type QuoteRequest_Access;
   subtype QuoteRequest_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array;
   use type QuoteRequest_Access_Array;
   subtype QuoteRequest_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access;
   use type QuoteRequest_Access_Array_Access;
   subtype QuoteRequest_Access_Array_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array;
   use type QuoteRequest_Access_Array_Access_Array;
   subtype QuoteRequest_Access_Array_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array_Access;
   use type QuoteRequest_Access_Array_Access_Array_Access;
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


   subtype QuoteRequestHelper_Access is admin.taghelpers.QuoteRequestHelper_Package_References.QuoteRequestHelper_Access;
   function "=" (Left, Right : QuoteRequestHelper_Access) return Boolean renames admin.taghelpers.QuoteRequestHelper_Package_References."=";
   subtype QuoteRequestHelper_Access_Array is admin.taghelpers.QuoteRequestHelper_Package_References.QuoteRequestHelper_Access_Array;
   function "=" (Left, Right : QuoteRequestHelper_Access_Array) return Boolean renames admin.taghelpers.QuoteRequestHelper_Package_References."=";
   subtype QuoteRequestHelper_Access_Array_Access is admin.taghelpers.QuoteRequestHelper_Package_References.QuoteRequestHelper_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.QuoteRequestHelper_Package_References."=";
   function Java_Box (Value : QuoteRequestHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.QuoteRequestHelper_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestHelper_Access_Array (Value : access Java_Object'Class) return QuoteRequestHelper_Access_Array_Access renames admin.taghelpers.QuoteRequestHelper_Package_References.Java_Unbox_QuoteRequestHelper_Access_Array;
   subtype QuoteRequestHelper_Access_Array_Access_Array is admin.taghelpers.QuoteRequestHelper_Package_References.QuoteRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.QuoteRequestHelper_Package_References."=";
   subtype QuoteRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.QuoteRequestHelper_Package_References.QuoteRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.QuoteRequestHelper_Package_References."=";
   function Java_Box (Value : QuoteRequestHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.QuoteRequestHelper_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return QuoteRequestHelper_Access_Array_Access_Array_Access renames admin.taghelpers.QuoteRequestHelper_Package_References.Java_Unbox_QuoteRequestHelper_Access_Array_Access_Array;

   type QuoteRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      quoteRequest : QuoteRequest_Access;
   end record;

   procedure Initialize (This : in out QuoteRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return QuoteRequestHelper_Access;
   function isValid (This : in out QuoteRequestHelper) return Boolean;
   function validationInfo (This : in out QuoteRequestHelper) return Unbounded_String;
   function insert (This : in out QuoteRequestHelper) return Unbounded_String;
   function update (This : in out QuoteRequestHelper) return Unbounded_String;
   function delete (This : in out QuoteRequestHelper) return Unbounded_String;

end admin.taghelpers.QuoteRequestHelper_Package;


