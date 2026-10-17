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
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.generic_Id.inventory.InventoryView_Package; use views.generic_Id.inventory.InventoryView_Package;

package views.generic_Id.inventory.AutoValidationInventoryView_Package is

   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type AutoValidationInventoryView is tagged;
   type AutoValidationInventoryView_Access is access all AutoValidationInventoryView'Class;
   type AutoValidationInventoryView_Access_Array is array (Natural range <>) of AutoValidationInventoryView_Access;
   type AutoValidationInventoryView_Access_Array_Access is access all AutoValidationInventoryView_Access_Array;

   type AutoValidationInventoryView is new InventoryView and ValidationComponentInterface with null record;

   procedure Initialize (This : in out AutoValidationInventoryView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return AutoValidationInventoryView_Access;
   function isValid (This : in out AutoValidationInventoryView) return Boolean;
   function toValidationInfoDoc (This : in out AutoValidationInventoryView) return Document_Access;
   function toValidationInfoNode (This : in out AutoValidationInventoryView; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out AutoValidationInventoryView; document_Param : access Document'Class);
   function validationInfo (This : in out AutoValidationInventoryView) return Unbounded_String;

end views.generic_Id.inventory.AutoValidationInventoryView_Package;


