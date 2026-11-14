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
limited with views.generic_Id.address.shipping.ShippingAddressView_Package;
package views.generic_Id.address.shipping.ShippingAddressView_Package_References is
   type ShippingAddressView_Access is access all views.generic_Id.address.shipping.ShippingAddressView_Package.ShippingAddressView'Class;
   type ShippingAddressView_Access_Array is array (Natural range <>) of ShippingAddressView_Access;
   type ShippingAddressView_Access_Array_Access is access all ShippingAddressView_Access_Array;
   type ShippingAddressView_Access_Array_Access_Array is array (Natural range <>) of ShippingAddressView_Access_Array_Access;
   type ShippingAddressView_Access_Array_Access_Array_Access is access all ShippingAddressView_Access_Array_Access_Array;
   type ShippingAddressView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressView_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressView_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressView_Access_Array_Object'Class then ShippingAddressView_Access_Array_Object'Class (Value.all).Value else null);
   type ShippingAddressView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingAddressView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingAddressView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingAddressView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingAddressView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingAddressView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShippingAddressView_Access_Array_Access_Array_Object'Class then ShippingAddressView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end views.generic_Id.address.shipping.ShippingAddressView_Package_References;

with views.generic_Id.address.shipping.ShippingAddressView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
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

package views.generic_Id.address.shipping.ShippingAddressView_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package Reference_Types is
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
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


   subtype ShippingAddressView_Access is views.generic_Id.address.shipping.ShippingAddressView_Package_References.ShippingAddressView_Access;
   function "=" (Left, Right : ShippingAddressView_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressView_Package_References."=";
   subtype ShippingAddressView_Access_Array is views.generic_Id.address.shipping.ShippingAddressView_Package_References.ShippingAddressView_Access_Array;
   function "=" (Left, Right : ShippingAddressView_Access_Array) return Boolean renames views.generic_Id.address.shipping.ShippingAddressView_Package_References."=";
   subtype ShippingAddressView_Access_Array_Access is views.generic_Id.address.shipping.ShippingAddressView_Package_References.ShippingAddressView_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressView_Access_Array_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressView_Package_References."=";
   function Java_Box (Value : ShippingAddressView_Access_Array_Access) return Java_Object_Access renames views.generic_Id.address.shipping.ShippingAddressView_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressView_Access_Array (Value : access Java_Object'Class) return ShippingAddressView_Access_Array_Access renames views.generic_Id.address.shipping.ShippingAddressView_Package_References.Java_Unbox_ShippingAddressView_Access_Array;
   subtype ShippingAddressView_Access_Array_Access_Array is views.generic_Id.address.shipping.ShippingAddressView_Package_References.ShippingAddressView_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingAddressView_Access_Array_Access_Array) return Boolean renames views.generic_Id.address.shipping.ShippingAddressView_Package_References."=";
   subtype ShippingAddressView_Access_Array_Access_Array_Access is views.generic_Id.address.shipping.ShippingAddressView_Package_References.ShippingAddressView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingAddressView_Access_Array_Access_Array_Access) return Boolean renames views.generic_Id.address.shipping.ShippingAddressView_Package_References."=";
   function Java_Box (Value : ShippingAddressView_Access_Array_Access_Array_Access) return Java_Object_Access renames views.generic_Id.address.shipping.ShippingAddressView_Package_References.Java_Box;
   function Java_Unbox_ShippingAddressView_Access_Array_Access_Array (Value : access Java_Object'Class) return ShippingAddressView_Access_Array_Access_Array_Access renames views.generic_Id.address.shipping.ShippingAddressView_Package_References.Java_Unbox_ShippingAddressView_Access_Array_Access_Array;

   type ShippingAddressView is new HttpStoreComponentView and DomNodeInterface with record
      ShippingAddressView_Field_logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      streetAddress : StreetAddress_Access;
   end record;

   procedure Initialize (This : in out ShippingAddressView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return ShippingAddressView_Access;
   function getRequest (This : in out ShippingAddressView) return HttpServletRequest_Access;
   function toXmlNode (This : in out ShippingAddressView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ShippingAddressView; document_Param : access Document_Package.Document'Class);
   procedure addDomNodeInterfaces (This : in out ShippingAddressView);
   function view (This : in out ShippingAddressView) return Unbounded_String;

end views.generic_Id.address.shipping.ShippingAddressView_Package;


