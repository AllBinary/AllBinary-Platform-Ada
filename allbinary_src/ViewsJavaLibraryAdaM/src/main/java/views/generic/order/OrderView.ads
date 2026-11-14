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
limited with views.generic_Id.order.OrderView_Package;
package views.generic_Id.order.OrderView_Package_References is
   type OrderView_Access is access all views.generic_Id.order.OrderView_Package.OrderView'Class;
   type OrderView_Access_Array is array (Natural range <>) of OrderView_Access;
   type OrderView_Access_Array_Access is access all OrderView_Access_Array;
   type OrderView_Access_Array_Access_Array is array (Natural range <>) of OrderView_Access_Array_Access;
   type OrderView_Access_Array_Access_Array_Access is access all OrderView_Access_Array_Access_Array;
   type OrderView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderView_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderView_Access_Array_Access is (if Value /= null and then Value.all in OrderView_Access_Array_Object'Class then OrderView_Access_Array_Object'Class (Value.all).Value else null);
   type OrderView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderView_Access_Array_Access_Array_Object'Class then OrderView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.generic_Id.order.OrderView_Package_References;

with views.generic_Id.order.OrderView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.generic_Id.order.OrderView_Package is

   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package Order_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
   subtype BasketReview_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access;
   use type BasketReview_Access;
   subtype BasketReview_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array;
   use type BasketReview_Access_Array;
   subtype BasketReview_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access;
   use type BasketReview_Access_Array_Access;
   subtype BasketReview_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array;
   use type BasketReview_Access_Array_Access_Array;
   subtype BasketReview_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array_Access;
   use type BasketReview_Access_Array_Access_Array_Access;
   subtype Order_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access;
   use type Order_Access;
   subtype Order_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array;
   use type Order_Access_Array;
   subtype Order_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access;
   use type Order_Access_Array_Access;
   subtype Order_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array;
   use type Order_Access_Array_Access_Array;
   subtype Order_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array_Access;
   use type Order_Access_Array_Access_Array_Access;
   subtype OrderHistory_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access;
   use type OrderHistory_Access;
   subtype OrderHistory_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array;
   use type OrderHistory_Access_Array;
   subtype OrderHistory_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access;
   use type OrderHistory_Access_Array_Access;
   subtype OrderHistory_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array;
   use type OrderHistory_Access_Array_Access_Array;
   subtype OrderHistory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array_Access;
   use type OrderHistory_Access_Array_Access_Array_Access;
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


   subtype OrderView_Access is views.generic_Id.order.OrderView_Package_References.OrderView_Access;
   function "=" (Left, Right : OrderView_Access) return Boolean renames views.generic_Id.order.OrderView_Package_References."=";
   subtype OrderView_Access_Array is views.generic_Id.order.OrderView_Package_References.OrderView_Access_Array;
   function "=" (Left, Right : OrderView_Access_Array) return Boolean renames views.generic_Id.order.OrderView_Package_References."=";
   subtype OrderView_Access_Array_Access is views.generic_Id.order.OrderView_Package_References.OrderView_Access_Array_Access;
   function "=" (Left, Right : OrderView_Access_Array_Access) return Boolean renames views.generic_Id.order.OrderView_Package_References."=";
   function Java_Box (Value : OrderView_Access_Array_Access) return Java_Object_Access renames views.generic_Id.order.OrderView_Package_References.Java_Box;
   function Java_Unbox_OrderView_Access_Array (Value : access Java_Object'Class) return OrderView_Access_Array_Access renames views.generic_Id.order.OrderView_Package_References.Java_Unbox_OrderView_Access_Array;
   subtype OrderView_Access_Array_Access_Array is views.generic_Id.order.OrderView_Package_References.OrderView_Access_Array_Access_Array;
   function "=" (Left, Right : OrderView_Access_Array_Access_Array) return Boolean renames views.generic_Id.order.OrderView_Package_References."=";
   subtype OrderView_Access_Array_Access_Array_Access is views.generic_Id.order.OrderView_Package_References.OrderView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.order.OrderView_Package_References."=";
   function Java_Box (Value : OrderView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.generic_Id.order.OrderView_Package_References.Java_Box;
   function Java_Unbox_OrderView_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderView_Access_Array_Access_Array_Access renames views.generic_Id.order.OrderView_Package_References.Java_Unbox_OrderView_Access_Array_Access_Array;

   type OrderView is new HttpStoreComponentView and DomNodeInterface with record
      OrderView_Field_logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      order : Order_Access;
      orderHistory : OrderHistory_Access;
      basketReview : BasketReview_Access;
   end record;

   procedure Initialize (This : in out OrderView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return OrderView_Access;
   procedure getFormData (This : in out OrderView);
   function toXmlNode (This : in out OrderView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out OrderView; document_Param : access Document_Package.Document'Class);
   procedure addDomNodeInterfaces (This : in out OrderView);
   function view (This : in out OrderView) return Unbounded_String;

end views.generic_Id.order.OrderView_Package;


