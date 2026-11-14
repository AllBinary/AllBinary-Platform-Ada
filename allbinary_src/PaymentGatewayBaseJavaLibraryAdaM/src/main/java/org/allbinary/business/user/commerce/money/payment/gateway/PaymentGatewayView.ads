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
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References is
   type PaymentGatewayView_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package.PaymentGatewayView'Class;
   type PaymentGatewayView_Access_Array is array (Natural range <>) of PaymentGatewayView_Access;
   type PaymentGatewayView_Access_Array_Access is access all PaymentGatewayView_Access_Array;
   type PaymentGatewayView_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayView_Access_Array_Access;
   type PaymentGatewayView_Access_Array_Access_Array_Access is access all PaymentGatewayView_Access_Array_Access_Array;
   type PaymentGatewayView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayView_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayView_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayView_Access_Array_Object'Class then PaymentGatewayView_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayView_Access_Array_Access_Array_Object'Class then PaymentGatewayView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype PaymentGatewayInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access;
   use type PaymentGatewayInterface_Access;
   subtype PaymentGatewayInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array;
   use type PaymentGatewayInterface_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access;
   subtype PaymentGatewayInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array;
   use type PaymentGatewayInterface_Access_Array_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayView_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.PaymentGatewayView_Access;
   function "=" (Left, Right : PaymentGatewayView_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References."=";
   subtype PaymentGatewayView_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.PaymentGatewayView_Access_Array;
   function "=" (Left, Right : PaymentGatewayView_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References."=";
   subtype PaymentGatewayView_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.PaymentGatewayView_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayView_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References."=";
   function Java_Box (Value : PaymentGatewayView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayView_Access_Array (Value : access Java_Object'Class) return PaymentGatewayView_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.Java_Unbox_PaymentGatewayView_Access_Array;
   subtype PaymentGatewayView_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.PaymentGatewayView_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References."=";
   subtype PaymentGatewayView_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.PaymentGatewayView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References."=";
   function Java_Box (Value : PaymentGatewayView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayView_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayView_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package_References.Java_Unbox_PaymentGatewayView_Access_Array_Access_Array;

   type PaymentGatewayView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayView'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class);
   function Create (paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayView_Access;
   function getPaymentGatewayInterface (This : in out PaymentGatewayView) return PaymentGatewayInterface_Access;
   function toHashMap (This : in out PaymentGatewayView) return HashMap_Access;
   function toXmlNode (This : in out PaymentGatewayView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out PaymentGatewayView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayView_Package;


