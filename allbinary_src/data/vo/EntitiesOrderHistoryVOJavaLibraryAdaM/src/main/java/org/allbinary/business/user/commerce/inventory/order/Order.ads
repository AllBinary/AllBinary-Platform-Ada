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

limited with org.allbinary.business.user.commerce.inventory.order.Order_Package;
package org.allbinary.business.user.commerce.inventory.order.Order_Package_References is
   type Order_Access is access all org.allbinary.business.user.commerce.inventory.order.Order_Package.Order'Class;
   type Order_Access_Array is array (Natural range <>) of Order_Access;
   type Order_Access_Array_Access is access all Order_Access_Array;
   type Order_Access_Array_Access_Array is array (Natural range <>) of Order_Access_Array_Access;
   type Order_Access_Array_Access_Array_Access is access all Order_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.order.Order_Package_References;

with org.allbinary.business.user.commerce.inventory.order.Order_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;

package org.allbinary.business.user.commerce.inventory.order.Order_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype BasketInterface_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access;
   use type BasketInterface_Access;
   subtype BasketInterface_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array;
   use type BasketInterface_Access_Array;
   subtype BasketInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access;
   use type BasketInterface_Access_Array_Access;
   subtype BasketInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array;
   use type BasketInterface_Access_Array_Access_Array;
   subtype BasketInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array_Access;
   use type BasketInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype Order_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access;
   function "=" (Left, Right : Order_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.Order_Package_References."=";
   subtype Order_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array;
   function "=" (Left, Right : Order_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.Order_Package_References."=";
   subtype Order_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access;
   function "=" (Left, Right : Order_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.Order_Package_References."=";
   subtype Order_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array;
   function "=" (Left, Right : Order_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.Order_Package_References."=";
   subtype Order_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Order_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.Order_Package_References."=";

   type Order is new Java_Object and OrderInterface with record
      basket : BasketInterface_Access;
      paymentMethod : Unbounded_String;
      shippingType : Unbounded_String;
      storeName : Unbounded_String;
      special : Unbounded_String;
      id : Unbounded_String;
      userComment : Unbounded_String;
      userCancelComment : Unbounded_String;
      storeComment : Unbounded_String;
      storeCancelComment : Unbounded_String;
   end record;

   procedure Initialize (This : in out Order'Class; basket_Param : access BasketInterface_Package.BasketInterface'Class);
   function Create (basket_Param : access BasketInterface_Package.BasketInterface'Class) return Order_Access;
   procedure Initialize (This : in out Order'Class; storeName : Unbounded_String; basket_Param : access BasketInterface_Package.BasketInterface'Class; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String);
   function Create (storeName : Unbounded_String; basket_Param : access BasketInterface_Package.BasketInterface'Class; id : Unbounded_String; shippingType : Unbounded_String; special : Unbounded_String; paymentMethod : Unbounded_String) return Order_Access;
   function isIdValid (This : in out Order) return Boolean;
   function isValid (This : in out Order) return Boolean;
   function getIdValidationInfo (This : in out Order) return Unbounded_String;
   procedure setShippingMethod (This : in out Order; shippingType : Unbounded_String);
   procedure setPaymentMethod (This : in out Order; value : Unbounded_String);
   procedure setSpecial (This : in out Order; special : Unbounded_String);
   procedure setId (This : in out Order; value : Unbounded_String);
   procedure setStoreName (This : in out Order; value : Unbounded_String);
   procedure setUserComments (This : in out Order; value : Unbounded_String);
   procedure setUserCancelComments (This : in out Order; value : Unbounded_String);
   procedure setStoreComments (This : in out Order; value : Unbounded_String);
   procedure setStoreCancelComments (This : in out Order; value : Unbounded_String);
   function getBasket (This : in out Order) return BasketInterface_Access;
   function getShippingMethod (This : in out Order) return Unbounded_String;
   function getPaymentMethod (This : in out Order) return Unbounded_String;
   function getSpecial (This : in out Order) return Unbounded_String;
   function getId (This : in out Order) return Unbounded_String;
   function getStoreName (This : in out Order) return Unbounded_String;
   function getUserComments (This : in out Order) return Unbounded_String;
   function getUserCancelComments (This : in out Order) return Unbounded_String;
   function getStoreComments (This : in out Order) return Unbounded_String;
   function getStoreCancelComments (This : in out Order) return Unbounded_String;
   function reviewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String;
   procedure reviewOrder (This : in out Order; paymentMethod : Unbounded_String);
   function viewOrder (This : in out Order; paymentMethod : Unbounded_String) return Unbounded_String;
   procedure viewOrder (This : in out Order; paymentMethod : Unbounded_String);
   function emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Unbounded_String;
   procedure emailOrder (This : in out Order; userName : Unbounded_String; paymentMethod : Unbounded_String; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function toHashMapOrder (This : in out Order) return HashMap_Access;
   function toXmlNode (This : in out Order; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out Order; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.order.Order_Package;


