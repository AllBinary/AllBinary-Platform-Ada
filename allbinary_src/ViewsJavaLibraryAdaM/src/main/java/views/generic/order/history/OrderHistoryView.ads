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

limited with views.generic_Id.order.history.OrderHistoryView_Package;
package views.generic_Id.order.history.OrderHistoryView_Package_References is
   type OrderHistoryView_Access is access all views.generic_Id.order.history.OrderHistoryView_Package.OrderHistoryView'Class;
   type OrderHistoryView_Access_Array is array (Natural range <>) of OrderHistoryView_Access;
   type OrderHistoryView_Access_Array_Access is access all OrderHistoryView_Access_Array;
   type OrderHistoryView_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryView_Access_Array_Access;
   type OrderHistoryView_Access_Array_Access_Array_Access is access all OrderHistoryView_Access_Array_Access_Array;
end views.generic_Id.order.history.OrderHistoryView_Package_References;

with views.generic_Id.order.history.OrderHistoryView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
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

package views.generic_Id.order.history.OrderHistoryView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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


   subtype OrderHistoryView_Access is views.generic_Id.order.history.OrderHistoryView_Package_References.OrderHistoryView_Access;
   function "=" (Left, Right : OrderHistoryView_Access) return Boolean renames views.generic_Id.order.history.OrderHistoryView_Package_References."=";
   subtype OrderHistoryView_Access_Array is views.generic_Id.order.history.OrderHistoryView_Package_References.OrderHistoryView_Access_Array;
   function "=" (Left, Right : OrderHistoryView_Access_Array) return Boolean renames views.generic_Id.order.history.OrderHistoryView_Package_References."=";
   subtype OrderHistoryView_Access_Array_Access is views.generic_Id.order.history.OrderHistoryView_Package_References.OrderHistoryView_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryView_Access_Array_Access) return Boolean renames views.generic_Id.order.history.OrderHistoryView_Package_References."=";
   subtype OrderHistoryView_Access_Array_Access_Array is views.generic_Id.order.history.OrderHistoryView_Package_References.OrderHistoryView_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryView_Access_Array_Access_Array) return Boolean renames views.generic_Id.order.history.OrderHistoryView_Package_References."=";
   subtype OrderHistoryView_Access_Array_Access_Array_Access is views.generic_Id.order.history.OrderHistoryView_Package_References.OrderHistoryView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.order.history.OrderHistoryView_Package_References."=";

   type OrderHistoryView is new HttpStoreComponentView and DomNodeInterface with record
      OrderHistoryView_Field_logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      shipped : Unbounded_String;
      partiallyShipped : Unbounded_String;
      processing : Unbounded_String;
      preprocessing : Unbounded_String;
      cancelled : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return OrderHistoryView_Access;
   function toXmlNode (This : in out OrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out OrderHistoryView; document_Param : access Document_Package.Document'Class);
   procedure addDomNodeInterfaces (This : in out OrderHistoryView);
   function view (This : in out OrderHistoryView) return Unbounded_String;

end views.generic_Id.order.history.OrderHistoryView_Package;


