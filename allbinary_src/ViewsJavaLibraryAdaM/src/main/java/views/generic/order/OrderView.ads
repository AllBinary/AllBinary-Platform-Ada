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
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
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

   type OrderView is tagged;
   type OrderView_Access is access all OrderView'Class;
   type OrderView_Access_Array is array (Natural range <>) of OrderView_Access;
   type OrderView_Access_Array_Access is access all OrderView_Access_Array;
   type OrderView_Access_Array_Access_Array is array (Natural range <>) of OrderView_Access_Array_Access;
   type OrderView_Access_Array_Access_Array_Access is access all OrderView_Access_Array_Access_Array;

   type OrderView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
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


