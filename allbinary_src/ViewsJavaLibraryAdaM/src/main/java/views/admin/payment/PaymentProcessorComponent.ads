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

limited with views.admin.payment.PaymentProcessorComponent_Package;
package views.admin.payment.PaymentProcessorComponent_Package_References is
   type PaymentProcessorComponent_Access is access all views.admin.payment.PaymentProcessorComponent_Package.PaymentProcessorComponent'Class;
   type PaymentProcessorComponent_Access_Array is array (Natural range <>) of PaymentProcessorComponent_Access;
   type PaymentProcessorComponent_Access_Array_Access is access all PaymentProcessorComponent_Access_Array;
   type PaymentProcessorComponent_Access_Array_Access_Array is array (Natural range <>) of PaymentProcessorComponent_Access_Array_Access;
   type PaymentProcessorComponent_Access_Array_Access_Array_Access is access all PaymentProcessorComponent_Access_Array_Access_Array;
end views.admin.payment.PaymentProcessorComponent_Package_References;

with views.admin.payment.PaymentProcessorComponent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.payment.PaymentProcessorComponent_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
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


   subtype PaymentProcessorComponent_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access;
   function "=" (Left, Right : PaymentProcessorComponent_Access) return Boolean renames views.admin.payment.PaymentProcessorComponent_Package_References."=";
   subtype PaymentProcessorComponent_Access_Array is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array;
   function "=" (Left, Right : PaymentProcessorComponent_Access_Array) return Boolean renames views.admin.payment.PaymentProcessorComponent_Package_References."=";
   subtype PaymentProcessorComponent_Access_Array_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorComponent_Access_Array_Access) return Boolean renames views.admin.payment.PaymentProcessorComponent_Package_References."=";
   subtype PaymentProcessorComponent_Access_Array_Access_Array is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentProcessorComponent_Access_Array_Access_Array) return Boolean renames views.admin.payment.PaymentProcessorComponent_Package_References."=";
   subtype PaymentProcessorComponent_Access_Array_Access_Array_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessorComponent_Access_Array_Access_Array_Access) return Boolean renames views.admin.payment.PaymentProcessorComponent_Package_References."=";

   type PaymentProcessorComponent is new HttpStoreComponentView with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PaymentProcessorComponent'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentProcessorComponent_Access;
   procedure addDomNodeInterfaces (This : in out PaymentProcessorComponent);
   function view (This : in out PaymentProcessorComponent) return Unbounded_String;

end views.admin.payment.PaymentProcessorComponent_Package;


