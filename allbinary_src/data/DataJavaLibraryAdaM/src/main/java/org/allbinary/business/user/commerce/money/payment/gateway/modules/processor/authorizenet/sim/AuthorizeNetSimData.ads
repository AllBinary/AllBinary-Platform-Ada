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
limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References is
   type AuthorizeNetSimData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package.AuthorizeNetSimData'Class;
   type AuthorizeNetSimData_Access_Array is array (Natural range <>) of AuthorizeNetSimData_Access;
   type AuthorizeNetSimData_Access_Array_Access is access all AuthorizeNetSimData_Access_Array;
   type AuthorizeNetSimData_Access_Array_Access_Array is array (Natural range <>) of AuthorizeNetSimData_Access_Array_Access;
   type AuthorizeNetSimData_Access_Array_Access_Array_Access is access all AuthorizeNetSimData_Access_Array_Access_Array;
   type AuthorizeNetSimData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetSimData_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetSimData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetSimData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetSimData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetSimData_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetSimData_Access_Array_Object'Class then AuthorizeNetSimData_Access_Array_Object'Class (Value.all).Value else null);
   type AuthorizeNetSimData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetSimData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetSimData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetSimData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetSimData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetSimData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetSimData_Access_Array_Access_Array_Object'Class then AuthorizeNetSimData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AuthorizeNetSimData_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.AuthorizeNetSimData_Access;
   function "=" (Left, Right : AuthorizeNetSimData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References."=";
   subtype AuthorizeNetSimData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.AuthorizeNetSimData_Access_Array;
   function "=" (Left, Right : AuthorizeNetSimData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References."=";
   subtype AuthorizeNetSimData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.AuthorizeNetSimData_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetSimData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References."=";
   function Java_Box (Value : AuthorizeNetSimData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetSimData_Access_Array (Value : access Java_Object'Class) return AuthorizeNetSimData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.Java_Unbox_AuthorizeNetSimData_Access_Array;
   subtype AuthorizeNetSimData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.AuthorizeNetSimData_Access_Array_Access_Array;
   function "=" (Left, Right : AuthorizeNetSimData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References."=";
   subtype AuthorizeNetSimData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.AuthorizeNetSimData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetSimData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References."=";
   function Java_Box (Value : AuthorizeNetSimData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetSimData_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthorizeNetSimData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package_References.Java_Unbox_AuthorizeNetSimData_Access_Array_Access_Array;

   type AuthorizeNetSimData is new Java_Object with null record;
   X_FP_HASH : Unbounded_String;
   X_FP_SEQUENCE : Unbounded_String;
   X_FP_TIMESTAMP : Unbounded_String;
   X_SHOW_FORM : Unbounded_String;
   X_HEADER_HTML_PAYMENT_FORM : Unbounded_String;
   X_FOOTER_HTML_PAYMENT_FORM : Unbounded_String;
   X_HEADER_HTML_RECEIPT : Unbounded_String;
   X_FOOTER_HTML_RECEIPT : Unbounded_String;
   X_RECEIPT_LINK_TEXT : Unbounded_String;
   X_RECEIPT_LINK_URL : Unbounded_String;
   X_LOGO_URL : Unbounded_String;
   X_BACKGROUND_URL : Unbounded_String;
   X_COLOR_BACKGROUND : Unbounded_String;
   X_COLOR_LINK : Unbounded_String;
   X_COLOR_TEXT : Unbounded_String;
   X_RELAY_URL : Unbounded_String;

   procedure Initialize (This : in out AuthorizeNetSimData'Class);
   function Create return AuthorizeNetSimData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.sim.AuthorizeNetSimData_Package;


