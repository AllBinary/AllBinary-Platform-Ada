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
limited with admin.taghelpers.UpdateOrderHelper_Package;
package admin.taghelpers.UpdateOrderHelper_Package_References is
   type UpdateOrderHelper_Access is access all admin.taghelpers.UpdateOrderHelper_Package.UpdateOrderHelper'Class;
   type UpdateOrderHelper_Access_Array is array (Natural range <>) of UpdateOrderHelper_Access;
   type UpdateOrderHelper_Access_Array_Access is access all UpdateOrderHelper_Access_Array;
   type UpdateOrderHelper_Access_Array_Access_Array is array (Natural range <>) of UpdateOrderHelper_Access_Array_Access;
   type UpdateOrderHelper_Access_Array_Access_Array_Access is access all UpdateOrderHelper_Access_Array_Access_Array;
   type UpdateOrderHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateOrderHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateOrderHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateOrderHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateOrderHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateOrderHelper_Access_Array_Access is (if Value /= null and then Value.all in UpdateOrderHelper_Access_Array_Object'Class then UpdateOrderHelper_Access_Array_Object'Class (Value.all).Value else null);
   type UpdateOrderHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpdateOrderHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpdateOrderHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpdateOrderHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpdateOrderHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpdateOrderHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpdateOrderHelper_Access_Array_Access_Array_Object'Class then UpdateOrderHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.UpdateOrderHelper_Package_References;

with admin.taghelpers.UpdateOrderHelper_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.UpdateOrderHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype UpdateOrderHelper_Access is admin.taghelpers.UpdateOrderHelper_Package_References.UpdateOrderHelper_Access;
   function "=" (Left, Right : UpdateOrderHelper_Access) return Boolean renames admin.taghelpers.UpdateOrderHelper_Package_References."=";
   subtype UpdateOrderHelper_Access_Array is admin.taghelpers.UpdateOrderHelper_Package_References.UpdateOrderHelper_Access_Array;
   function "=" (Left, Right : UpdateOrderHelper_Access_Array) return Boolean renames admin.taghelpers.UpdateOrderHelper_Package_References."=";
   subtype UpdateOrderHelper_Access_Array_Access is admin.taghelpers.UpdateOrderHelper_Package_References.UpdateOrderHelper_Access_Array_Access;
   function "=" (Left, Right : UpdateOrderHelper_Access_Array_Access) return Boolean renames admin.taghelpers.UpdateOrderHelper_Package_References."=";
   function Java_Box (Value : UpdateOrderHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.UpdateOrderHelper_Package_References.Java_Box;
   function Java_Unbox_UpdateOrderHelper_Access_Array (Value : access Java_Object'Class) return UpdateOrderHelper_Access_Array_Access renames admin.taghelpers.UpdateOrderHelper_Package_References.Java_Unbox_UpdateOrderHelper_Access_Array;
   subtype UpdateOrderHelper_Access_Array_Access_Array is admin.taghelpers.UpdateOrderHelper_Package_References.UpdateOrderHelper_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateOrderHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.UpdateOrderHelper_Package_References."=";
   subtype UpdateOrderHelper_Access_Array_Access_Array_Access is admin.taghelpers.UpdateOrderHelper_Package_References.UpdateOrderHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateOrderHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.UpdateOrderHelper_Package_References."=";
   function Java_Box (Value : UpdateOrderHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.UpdateOrderHelper_Package_References.Java_Box;
   function Java_Unbox_UpdateOrderHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return UpdateOrderHelper_Access_Array_Access_Array_Access renames admin.taghelpers.UpdateOrderHelper_Package_References.Java_Unbox_UpdateOrderHelper_Access_Array_Access_Array;

   type UpdateOrderHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      entryId : Unbounded_String;
      orderId : Unbounded_String;
      userName : Unbounded_String;
      storeName : Unbounded_String;
      shipDate : Unbounded_String;
      orderDate : Unbounded_String;
      transDate : Unbounded_String;
      cancelDate : Unbounded_String;
      status : Unbounded_String;
      paymentMethod : Unbounded_String;
      name : Unbounded_String;
      type_Id : Unbounded_String;
      expiration : Unbounded_String;
      number : Unbounded_String;
      encryption : Unbounded_String;
      billingName : Unbounded_String;
      billingStreet : Unbounded_String;
      billingCity : Unbounded_String;
      billingState : Unbounded_String;
      billingCode : Unbounded_String;
      billingCountry : Unbounded_String;
      shippingName : Unbounded_String;
      shippingStreet : Unbounded_String;
      shippingCity : Unbounded_String;
      shippingState : Unbounded_String;
      shippingCode : Unbounded_String;
      shippingCountry : Unbounded_String;
      shippingMethodName : Unbounded_String;
      subTotal : Unbounded_String;
      shippingCost : Unbounded_String;
      tax : Unbounded_String;
      total : Unbounded_String;
      special : Unbounded_String;
      userComment : Unbounded_String;
      userCancelComment : Unbounded_String;
      storeComment : Unbounded_String;
      storeCancelComment : Unbounded_String;
   end record;

   procedure Initialize (This : in out UpdateOrderHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return UpdateOrderHelper_Access;
   procedure getFormData (This : in out UpdateOrderHelper);
   function update (This : in out UpdateOrderHelper) return Unbounded_String;

end admin.taghelpers.UpdateOrderHelper_Package;


