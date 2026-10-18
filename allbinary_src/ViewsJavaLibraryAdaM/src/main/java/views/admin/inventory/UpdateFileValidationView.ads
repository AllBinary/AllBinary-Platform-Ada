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
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.inventory.InventoryItemView_Package; use views.admin.inventory.InventoryItemView_Package;

package views.admin.inventory.UpdateFileValidationView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UpdateFileValidationView is tagged;
   type UpdateFileValidationView_Access is access all UpdateFileValidationView'Class;
   type UpdateFileValidationView_Access_Array is array (Natural range <>) of UpdateFileValidationView_Access;
   type UpdateFileValidationView_Access_Array_Access is access all UpdateFileValidationView_Access_Array;
   type UpdateFileValidationView_Access_Array_Access_Array is array (Natural range <>) of UpdateFileValidationView_Access_Array_Access;
   type UpdateFileValidationView_Access_Array_Access_Array_Access is access all UpdateFileValidationView_Access_Array_Access_Array;

   type UpdateFileValidationView is new InventoryItemView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;
   UPDATEPRODUCT : Unbounded_String;

   procedure Initialize (This : in out UpdateFileValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UpdateFileValidationView_Access;
   function isValid (This : in out UpdateFileValidationView) return Boolean;
   function toValidationInfoDoc (This : in out UpdateFileValidationView) return Document_Access;
   function toValidationInfoNode (This : in out UpdateFileValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out UpdateFileValidationView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out UpdateFileValidationView) return Unbounded_String;
   function isValid (This : in out UpdateFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer) return Boolean;
   procedure isValid (This : in out UpdateFileValidationView; fileName : Unbounded_String; size : Long_Long_Integer);
   procedure validationInfo (This : in out UpdateFileValidationView; stringBuffer_Param : access StringMaker_Package.StringMaker'Class; fileName : Unbounded_String; fileItemFieldName : Unbounded_String; size : Long_Long_Integer);

end views.admin.inventory.UpdateFileValidationView_Package;


