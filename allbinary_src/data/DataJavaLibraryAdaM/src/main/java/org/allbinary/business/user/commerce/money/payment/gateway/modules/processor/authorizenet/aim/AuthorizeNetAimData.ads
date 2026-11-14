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
limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References is
   type AuthorizeNetAimData_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package.AuthorizeNetAimData'Class;
   type AuthorizeNetAimData_Access_Array is array (Natural range <>) of AuthorizeNetAimData_Access;
   type AuthorizeNetAimData_Access_Array_Access is access all AuthorizeNetAimData_Access_Array;
   type AuthorizeNetAimData_Access_Array_Access_Array is array (Natural range <>) of AuthorizeNetAimData_Access_Array_Access;
   type AuthorizeNetAimData_Access_Array_Access_Array_Access is access all AuthorizeNetAimData_Access_Array_Access_Array;
   type AuthorizeNetAimData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetAimData_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetAimData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetAimData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetAimData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetAimData_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetAimData_Access_Array_Object'Class then AuthorizeNetAimData_Access_Array_Object'Class (Value.all).Value else null);
   type AuthorizeNetAimData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthorizeNetAimData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthorizeNetAimData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthorizeNetAimData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthorizeNetAimData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthorizeNetAimData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthorizeNetAimData_Access_Array_Access_Array_Object'Class then AuthorizeNetAimData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AuthorizeNetAimData_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.AuthorizeNetAimData_Access;
   function "=" (Left, Right : AuthorizeNetAimData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References."=";
   subtype AuthorizeNetAimData_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.AuthorizeNetAimData_Access_Array;
   function "=" (Left, Right : AuthorizeNetAimData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References."=";
   subtype AuthorizeNetAimData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.AuthorizeNetAimData_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetAimData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References."=";
   function Java_Box (Value : AuthorizeNetAimData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetAimData_Access_Array (Value : access Java_Object'Class) return AuthorizeNetAimData_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.Java_Unbox_AuthorizeNetAimData_Access_Array;
   subtype AuthorizeNetAimData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.AuthorizeNetAimData_Access_Array_Access_Array;
   function "=" (Left, Right : AuthorizeNetAimData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References."=";
   subtype AuthorizeNetAimData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.AuthorizeNetAimData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthorizeNetAimData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References."=";
   function Java_Box (Value : AuthorizeNetAimData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.Java_Box;
   function Java_Unbox_AuthorizeNetAimData_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthorizeNetAimData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package_References.Java_Unbox_AuthorizeNetAimData_Access_Array_Access_Array;

   type AuthorizeNetAimData is new Java_Object with null record;
   X_DELIM_DATA : Unbounded_String;
   X_DELIM_CHAR : Unbounded_String;
   X_ENCAP_CHAR : Unbounded_String;
   X_AUTHENTICATION_INDICATOR : Unbounded_String;
   X_CARDHOLDER_AUTHENTICATION_VALUE : Unbounded_String;
   X_DRIVERS_LICENSE_NUM : Unbounded_String;
   X_DRIVERS_LICENSE_STATE : Unbounded_String;
   X_DRIVERS_LICENSE_DOB : Unbounded_String;

   procedure Initialize (This : in out AuthorizeNetAimData'Class);
   function Create return AuthorizeNetAimData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package;


