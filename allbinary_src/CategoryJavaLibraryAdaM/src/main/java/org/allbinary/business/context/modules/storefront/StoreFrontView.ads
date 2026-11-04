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

limited with org.allbinary.business.context.modules.storefront.StoreFrontView_Package;
package org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References is
   type StoreFrontView_Access is access all org.allbinary.business.context.modules.storefront.StoreFrontView_Package.StoreFrontView'Class;
   type StoreFrontView_Access_Array is array (Natural range <>) of StoreFrontView_Access;
   type StoreFrontView_Access_Array_Access is access all StoreFrontView_Access_Array;
   type StoreFrontView_Access_Array_Access_Array is array (Natural range <>) of StoreFrontView_Access_Array_Access;
   type StoreFrontView_Access_Array_Access_Array_Access is access all StoreFrontView_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References;

with org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;

package org.allbinary.business.context.modules.storefront.StoreFrontView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontView_Access is org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References.StoreFrontView_Access;
   function "=" (Left, Right : StoreFrontView_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References."=";
   subtype StoreFrontView_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References.StoreFrontView_Access_Array;
   function "=" (Left, Right : StoreFrontView_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References."=";
   subtype StoreFrontView_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References.StoreFrontView_Access_Array_Access;
   function "=" (Left, Right : StoreFrontView_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References."=";
   subtype StoreFrontView_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References.StoreFrontView_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References."=";
   subtype StoreFrontView_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References.StoreFrontView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontView_Package_References."=";

   type StoreFrontView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out StoreFrontView'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontView_Access;
   function toXmlNode (This : in out StoreFrontView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out StoreFrontView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.modules.storefront.StoreFrontView_Package;


