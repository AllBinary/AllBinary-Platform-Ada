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
limited with taghelpers.OrderHistoryHelper_Package;
package taghelpers.OrderHistoryHelper_Package_References is
   type OrderHistoryHelper_Access is access all taghelpers.OrderHistoryHelper_Package.OrderHistoryHelper'Class;
   type OrderHistoryHelper_Access_Array is array (Natural range <>) of OrderHistoryHelper_Access;
   type OrderHistoryHelper_Access_Array_Access is access all OrderHistoryHelper_Access_Array;
   type OrderHistoryHelper_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryHelper_Access_Array_Access;
   type OrderHistoryHelper_Access_Array_Access_Array_Access is access all OrderHistoryHelper_Access_Array_Access_Array;
   type OrderHistoryHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryHelper_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryHelper_Access_Array_Object'Class then OrderHistoryHelper_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryHelper_Access_Array_Access_Array_Object'Class then OrderHistoryHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.OrderHistoryHelper_Package_References;

with taghelpers.OrderHistoryHelper_Package_References;
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
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
limited with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package taghelpers.OrderHistoryHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TagHelper_Package renames Standard.admin.taghelpers.TagHelper_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OrderHistoryHelper_Access is taghelpers.OrderHistoryHelper_Package_References.OrderHistoryHelper_Access;
   function "=" (Left, Right : OrderHistoryHelper_Access) return Boolean renames taghelpers.OrderHistoryHelper_Package_References."=";
   subtype OrderHistoryHelper_Access_Array is taghelpers.OrderHistoryHelper_Package_References.OrderHistoryHelper_Access_Array;
   function "=" (Left, Right : OrderHistoryHelper_Access_Array) return Boolean renames taghelpers.OrderHistoryHelper_Package_References."=";
   subtype OrderHistoryHelper_Access_Array_Access is taghelpers.OrderHistoryHelper_Package_References.OrderHistoryHelper_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryHelper_Access_Array_Access) return Boolean renames taghelpers.OrderHistoryHelper_Package_References."=";
   function Java_Box (Value : OrderHistoryHelper_Access_Array_Access) return Java_Object_Access renames taghelpers.OrderHistoryHelper_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryHelper_Access_Array (Value : access Java_Object'Class) return OrderHistoryHelper_Access_Array_Access renames taghelpers.OrderHistoryHelper_Package_References.Java_Unbox_OrderHistoryHelper_Access_Array;
   subtype OrderHistoryHelper_Access_Array_Access_Array is taghelpers.OrderHistoryHelper_Package_References.OrderHistoryHelper_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryHelper_Access_Array_Access_Array) return Boolean renames taghelpers.OrderHistoryHelper_Package_References."=";
   subtype OrderHistoryHelper_Access_Array_Access_Array_Access is taghelpers.OrderHistoryHelper_Package_References.OrderHistoryHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.OrderHistoryHelper_Package_References."=";
   function Java_Box (Value : OrderHistoryHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.OrderHistoryHelper_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryHelper_Access_Array_Access_Array_Access renames taghelpers.OrderHistoryHelper_Package_References.Java_Unbox_OrderHistoryHelper_Access_Array_Access_Array;

   type OrderHistoryHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      propertiesHashMap : HashMap_Access;
      pageContext : PageContext_Access;
      request : HttpServletRequest_Access;
      streetAddress : StreetAddress_Access;
      id : Unbounded_String;
      groupId : Unbounded_String;
      status : Unbounded_String;
      newStatus : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderHistoryHelper_Access;
   procedure getFormData (This : in out OrderHistoryHelper);
   function setOrderStatus (This : in out OrderHistoryHelper) return Unbounded_String;

end taghelpers.OrderHistoryHelper_Package;


