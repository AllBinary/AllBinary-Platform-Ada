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

limited with org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;
package org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References is
   type NoShippingModuleView_Access is access all org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package.NoShippingModuleView'Class;
   type NoShippingModuleView_Access_Array is array (Natural range <>) of NoShippingModuleView_Access;
   type NoShippingModuleView_Access_Array_Access is access all NoShippingModuleView_Access_Array;
   type NoShippingModuleView_Access_Array_Access_Array is array (Natural range <>) of NoShippingModuleView_Access_Array_Access;
   type NoShippingModuleView_Access_Array_Access_Array_Access is access all NoShippingModuleView_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References;

with org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References;
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
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.user.commerce.shipping.modules.NoShippingModule_Package; use org.allbinary.business.user.commerce.shipping.modules.NoShippingModule_Package;

package org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype NoShippingModuleView_Access is org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References.NoShippingModuleView_Access;
   function "=" (Left, Right : NoShippingModuleView_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References."=";
   subtype NoShippingModuleView_Access_Array is org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References.NoShippingModuleView_Access_Array;
   function "=" (Left, Right : NoShippingModuleView_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References."=";
   subtype NoShippingModuleView_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References.NoShippingModuleView_Access_Array_Access;
   function "=" (Left, Right : NoShippingModuleView_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References."=";
   subtype NoShippingModuleView_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References.NoShippingModuleView_Access_Array_Access_Array;
   function "=" (Left, Right : NoShippingModuleView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References."=";
   subtype NoShippingModuleView_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References.NoShippingModuleView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoShippingModuleView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package_References."=";

   type NoShippingModuleView is new NoShippingModule and DomNodeInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoShippingModuleView'Class);
   function Create return NoShippingModuleView_Access;
   function isValid (This : in out NoShippingModuleView) return Boolean;
   function toValidationInfoDoc (This : in out NoShippingModuleView) return Document_Access;
   function toValidationInfoNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out NoShippingModuleView) return Document_Access;
   function toXmlNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out NoShippingModuleView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out NoShippingModuleView) return Unbounded_String;
   function view (This : in out NoShippingModuleView) return Unbounded_String;

end org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;


