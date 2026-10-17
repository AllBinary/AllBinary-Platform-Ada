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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.inventory.basket.Basket_Package; use org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.generic_Id.order.OrderView_Package is

   package Basket_Package renames org.allbinary.business.user.commerce.inventory.basket.Basket_Package;
   package BasketReview_Package renames org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package Order_Package renames org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistory_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type OrderView is tagged;
   type OrderView_Access is access all OrderView'Class;
   type OrderView_Access_Array is array (Natural range <>) of OrderView_Access;
   type OrderView_Access_Array_Access is access all OrderView_Access_Array;

   type OrderView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      order : Order_Access;
      orderHistory : OrderHistory_Access;
      basketReview : BasketReview_Access;
   end record;

   procedure Initialize (This : in out OrderView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return OrderView_Access;
   procedure getFormData (This : in out OrderView);
   function toXmlNode (This : in out OrderView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out OrderView; document : Document_Access);
   procedure addDomNodeInterfaces (This : in out OrderView);
   function view (This : in out OrderView) return Unbounded_String;
   procedure view (This : in out OrderView);

end views.generic_Id.order.OrderView_Package;


