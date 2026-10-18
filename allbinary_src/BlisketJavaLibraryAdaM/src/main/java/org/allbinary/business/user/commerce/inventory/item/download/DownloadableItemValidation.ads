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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.Validation_Package; use org.allbinary.logic.control.validate.Validation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package; use org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem_Package;

package org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Validation_Package renames Standard.org.allbinary.logic.control.validate.Validation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type DownloadableItemValidation is tagged;
   type DownloadableItemValidation_Access is access all DownloadableItemValidation'Class;
   type DownloadableItemValidation_Access_Array is array (Natural range <>) of DownloadableItemValidation_Access;
   type DownloadableItemValidation_Access_Array_Access is access all DownloadableItemValidation_Access_Array;
   type DownloadableItemValidation_Access_Array_Access_Array is array (Natural range <>) of DownloadableItemValidation_Access_Array_Access;
   type DownloadableItemValidation_Access_Array_Access_Array_Access is access all DownloadableItemValidation_Access_Array_Access_Array;

   type DownloadableItemValidation is new Validation with record
      logUtil : LogUtil_Access;
      downloadableItem : DownloadableItem_Access;
   end record;

   procedure Initialize (This : in out DownloadableItemValidation'Class; downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class);
   function Create (downloadableItem_Param : access DownloadableItem_Package.DownloadableItem'Class) return DownloadableItemValidation_Access;
   function isValid (This : in out DownloadableItemValidation) return Boolean;
   function validationInfo (This : in out DownloadableItemValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out DownloadableItemValidation) return Document_Access;
   function toValidationInfoNode (This : in out DownloadableItemValidation; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out DownloadableItemValidation; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation_Package;


