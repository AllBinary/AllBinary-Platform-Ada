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
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.shipping.modules.NoShippingModule_Package; use org.allbinary.business.user.commerce.shipping.modules.NoShippingModule_Package;

package org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package is

   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type NoShippingModuleView is tagged;
   type NoShippingModuleView_Access is access all NoShippingModuleView'Class;
   type NoShippingModuleView_Access_Array is array (Natural range <>) of NoShippingModuleView_Access;
   type NoShippingModuleView_Access_Array_Access is access all NoShippingModuleView_Access_Array;

   type NoShippingModuleView is new NoShippingModule and DomNodeInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoShippingModuleView'Class);
   function Create return NoShippingModuleView_Access;
   function isValid (This : in out NoShippingModuleView) return Boolean;
   function toValidationInfoDoc (This : in out NoShippingModuleView) return Document_Access;
   function toValidationInfoNode (This : in out NoShippingModuleView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out NoShippingModuleView; document : Document_Access);
   function toXmlDoc (This : in out NoShippingModuleView) return Document_Access;
   function toXmlNode (This : in out NoShippingModuleView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out NoShippingModuleView; document : Document_Access);
   function validationInfo (This : in out NoShippingModuleView) return Unbounded_String;
   function view (This : in out NoShippingModuleView) return Unbounded_String;

end org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;


