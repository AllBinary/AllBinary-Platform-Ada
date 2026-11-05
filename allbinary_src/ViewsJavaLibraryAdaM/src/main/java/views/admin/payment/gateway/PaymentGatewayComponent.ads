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

limited with views.admin.payment.gateway.PaymentGatewayComponent_Package;
package views.admin.payment.gateway.PaymentGatewayComponent_Package_References is
   type PaymentGatewayComponent_Access is access all views.admin.payment.gateway.PaymentGatewayComponent_Package.PaymentGatewayComponent'Class;
   type PaymentGatewayComponent_Access_Array is array (Natural range <>) of PaymentGatewayComponent_Access;
   type PaymentGatewayComponent_Access_Array_Access is access all PaymentGatewayComponent_Access_Array;
   type PaymentGatewayComponent_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayComponent_Access_Array_Access;
   type PaymentGatewayComponent_Access_Array_Access_Array_Access is access all PaymentGatewayComponent_Access_Array_Access_Array;
end views.admin.payment.gateway.PaymentGatewayComponent_Package_References;

with views.admin.payment.gateway.PaymentGatewayComponent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.payment.gateway.PaymentGatewayComponent_Package is

   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
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


   subtype PaymentGatewayComponent_Access is views.admin.payment.gateway.PaymentGatewayComponent_Package_References.PaymentGatewayComponent_Access;
   function "=" (Left, Right : PaymentGatewayComponent_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayComponent_Package_References."=";
   subtype PaymentGatewayComponent_Access_Array is views.admin.payment.gateway.PaymentGatewayComponent_Package_References.PaymentGatewayComponent_Access_Array;
   function "=" (Left, Right : PaymentGatewayComponent_Access_Array) return Boolean renames views.admin.payment.gateway.PaymentGatewayComponent_Package_References."=";
   subtype PaymentGatewayComponent_Access_Array_Access is views.admin.payment.gateway.PaymentGatewayComponent_Package_References.PaymentGatewayComponent_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayComponent_Access_Array_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayComponent_Package_References."=";
   subtype PaymentGatewayComponent_Access_Array_Access_Array is views.admin.payment.gateway.PaymentGatewayComponent_Package_References.PaymentGatewayComponent_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayComponent_Access_Array_Access_Array) return Boolean renames views.admin.payment.gateway.PaymentGatewayComponent_Package_References."=";
   subtype PaymentGatewayComponent_Access_Array_Access_Array_Access is views.admin.payment.gateway.PaymentGatewayComponent_Package_References.PaymentGatewayComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayComponent_Access_Array_Access_Array_Access) return Boolean renames views.admin.payment.gateway.PaymentGatewayComponent_Package_References."=";

   type PaymentGatewayComponent is new HttpStoreComponentView with record
      PaymentGatewayComponent_Field_logUtil : LogUtil_Access;
      paymentGatewayInterface : PaymentGatewayInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return PaymentGatewayComponent_Access;
   procedure addDomNodeInterfaces (This : in out PaymentGatewayComponent);
   function view (This : in out PaymentGatewayComponent) return Unbounded_String;

end views.admin.payment.gateway.PaymentGatewayComponent_Package;


