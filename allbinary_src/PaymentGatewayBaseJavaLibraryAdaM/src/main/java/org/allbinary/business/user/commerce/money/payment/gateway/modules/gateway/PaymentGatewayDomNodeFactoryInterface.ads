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

limited with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References is
   type PaymentGatewayDomNodeFactoryInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class;
   type PaymentGatewayDomNodeFactoryInterface_Access_Array is array (Natural range <>) of PaymentGatewayDomNodeFactoryInterface_Access;
   type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access is access all PaymentGatewayDomNodeFactoryInterface_Access_Array;
   type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayDomNodeFactoryInterface_Access_Array_Access;
   type PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access is access all PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References;
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
limited with org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package is

   package PaymentGatewayInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
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
   subtype DomNodeInterface_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access;
   use type DomNodeInterface_Access;
   subtype DomNodeInterface_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array;
   use type DomNodeInterface_Access_Array;
   subtype DomNodeInterface_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access;
   subtype DomNodeInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array;
   use type DomNodeInterface_Access_Array_Access_Array;
   subtype DomNodeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PaymentGatewayDomNodeFactoryInterface is interface;
   subtype PaymentGatewayDomNodeFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access;
   function "=" (Left, Right : PaymentGatewayDomNodeFactoryInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References."=";
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array;
   function "=" (Left, Right : PaymentGatewayDomNodeFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References."=";
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayDomNodeFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References."=";
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References."=";
   subtype PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References.PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayDomNodeFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package_References."=";
   function Java_Object_Access_From_PaymentGatewayDomNodeFactoryInterface (Value : PaymentGatewayDomNodeFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PaymentGatewayDomNodeFactoryInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) return DomNodeInterface_Access is abstract;
   procedure getInstance (This : in out PaymentGatewayDomNodeFactoryInterface; paymentGatewayInterface_Param : access PaymentGatewayInterface_Package.PaymentGatewayInterface'Class) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;


