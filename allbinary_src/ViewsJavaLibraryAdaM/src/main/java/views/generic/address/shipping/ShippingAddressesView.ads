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

limited with views.generic_Id.address.shipping.ShippingAddressesView_Package;
package views.generic_Id.address.shipping.ShippingAddressesView_Package_References is
   type ShippingAddressesView_Access is access all views.generic_Id.address.shipping.ShippingAddressesView_Package.ShippingAddressesView'Class;
   type ShippingAddressesView_Access_Array is array (Natural range <>) of ShippingAddressesView_Access;
   type ShippingAddressesView_Access_Array_Access is access all ShippingAddressesView_Access_Array;
   type ShippingAddressesView_Access_Array_Access_Array is array (Natural range <>) of ShippingAddressesView_Access_Array_Access;
   type ShippingAddressesView_Access_Array_Access_Array_Access is access all ShippingAddressesView_Access_Array_Access_Array;
end views.generic_Id.address.shipping.ShippingAddressesView_Package_References;

with views.generic_Id.address.shipping.ShippingAddressesView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
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

package views.generic_Id.address.shipping.ShippingAddressesView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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


   subtype ShippingAddressesView_Access is views.generic_Id.address.shipping.ShippingAddressesView_Package_References.ShippingAddressesView_Access;
   function "=" (Left, Right : ShippingAddressesView_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressesView_Package_References."=";
   subtype ShippingAddressesView_Access_Array is views.generic_Id.address.shipping.ShippingAddressesView_Package_References.ShippingAddressesView_Access_Array;
   function "=" (Left, Right : ShippingAddressesView_Access_Array) return Boolean renames views.generic_Id.address.shipping.ShippingAddressesView_Package_References."=";
   subtype ShippingAddressesView_Access_Array_Access is views.generic_Id.address.shipping.ShippingAddressesView_Package_References.ShippingAddressesView_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesView_Access_Array_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressesView_Package_References."=";
   subtype ShippingAddressesView_Access_Array_Access_Array is views.generic_Id.address.shipping.ShippingAddressesView_Package_References.ShippingAddressesView_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingAddressesView_Access_Array_Access_Array) return Boolean renames views.generic_Id.address.shipping.ShippingAddressesView_Package_References."=";
   subtype ShippingAddressesView_Access_Array_Access_Array_Access is views.generic_Id.address.shipping.ShippingAddressesView_Package_References.ShippingAddressesView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressesView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressesView_Package_References."=";

   type ShippingAddressesView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      streetAddressList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ShippingAddressesView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ShippingAddressesView_Access;
   function getRequest (This : in out ShippingAddressesView) return HttpServletRequest_Access;
   function toXmlNode (This : in out ShippingAddressesView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ShippingAddressesView; document_Param : access Document_Package.Document'Class);
   procedure addDomNodeInterfaces (This : in out ShippingAddressesView);
   function view (This : in out ShippingAddressesView) return Unbounded_String;

end views.generic_Id.address.shipping.ShippingAddressesView_Package;


