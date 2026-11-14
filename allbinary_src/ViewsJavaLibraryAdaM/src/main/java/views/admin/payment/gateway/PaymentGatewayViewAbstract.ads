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
limited with views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;
package views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References is
   type PaymentGatewayViewAbstract_Access is access all views.admin.payment.gateway.PaymentGatewayViewAbstract_Package.PaymentGatewayViewAbstract'Class;
   type PaymentGatewayViewAbstract_Access_Array is array (Natural range <>) of PaymentGatewayViewAbstract_Access;
   type PaymentGatewayViewAbstract_Access_Array_Access is access all PaymentGatewayViewAbstract_Access_Array;
   type PaymentGatewayViewAbstract_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayViewAbstract_Access_Array_Access;
   type PaymentGatewayViewAbstract_Access_Array_Access_Array_Access is access all PaymentGatewayViewAbstract_Access_Array_Access_Array;
   type PaymentGatewayViewAbstract_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayViewAbstract_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayViewAbstract_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayViewAbstract_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayViewAbstract_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayViewAbstract_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayViewAbstract_Access_Array_Object'Class then PaymentGatewayViewAbstract_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayViewAbstract_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayViewAbstract_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayViewAbstract_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayViewAbstract_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayViewAbstract_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayViewAbstract_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayViewAbstract_Access_Array_Access_Array_Object'Class then PaymentGatewayViewAbstract_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References;

with views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package views.admin.payment.gateway.PaymentGatewayViewAbstract_Package is

   package PaymentGatewayPrimaryKey_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package;
   package TransformInfoHttpComposite_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Reference_Types is
   subtype PaymentGatewayPrimaryKey_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access;
   use type PaymentGatewayPrimaryKey_Access;
   subtype PaymentGatewayPrimaryKey_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array;
   use type PaymentGatewayPrimaryKey_Access_Array;
   subtype PaymentGatewayPrimaryKey_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access;
   use type PaymentGatewayPrimaryKey_Access_Array_Access;
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array;
   use type PaymentGatewayPrimaryKey_Access_Array_Access_Array;
   subtype PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayPrimaryKey_Package_References.PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access;
   use type PaymentGatewayPrimaryKey_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayViewAbstract_Access is views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.PaymentGatewayViewAbstract_Access;
   function "=" (Left, Right : PaymentGatewayViewAbstract_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References."=";
   subtype PaymentGatewayViewAbstract_Access_Array is views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.PaymentGatewayViewAbstract_Access_Array;
   function "=" (Left, Right : PaymentGatewayViewAbstract_Access_Array) return Boolean renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References."=";
   subtype PaymentGatewayViewAbstract_Access_Array_Access is views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.PaymentGatewayViewAbstract_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayViewAbstract_Access_Array_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References."=";
   function Java_Box (Value : PaymentGatewayViewAbstract_Access_Array_Access) return Java_Object_Access renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayViewAbstract_Access_Array (Value : access Java_Object'Class) return PaymentGatewayViewAbstract_Access_Array_Access renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.Java_Unbox_PaymentGatewayViewAbstract_Access_Array;
   subtype PaymentGatewayViewAbstract_Access_Array_Access_Array is views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.PaymentGatewayViewAbstract_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayViewAbstract_Access_Array_Access_Array) return Boolean renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References."=";
   subtype PaymentGatewayViewAbstract_Access_Array_Access_Array_Access is views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.PaymentGatewayViewAbstract_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayViewAbstract_Access_Array_Access_Array_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References."=";
   function Java_Box (Value : PaymentGatewayViewAbstract_Access_Array_Access_Array_Access) return Java_Object_Access renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayViewAbstract_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayViewAbstract_Access_Array_Access_Array_Access renames views.admin.payment.gateway.PaymentGatewayViewAbstract_Package_References.Java_Unbox_PaymentGatewayViewAbstract_Access_Array_Access_Array;

   type PaymentGatewayViewAbstract is new TransformInfoHttpComposite with record
      paymentGatewayPrimaryKey : PaymentGatewayPrimaryKey_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayViewAbstract'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentGatewayViewAbstract_Access;
   procedure getFormData (This : in out PaymentGatewayViewAbstract; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function getPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract) return PaymentGatewayPrimaryKey_Access;
   procedure setPaymentGatewayPrimaryKey (This : in out PaymentGatewayViewAbstract; paymentGatewayPrimaryKey_Param : access PaymentGatewayPrimaryKey_Package.PaymentGatewayPrimaryKey'Class);

end views.admin.payment.gateway.PaymentGatewayViewAbstract_Package;


