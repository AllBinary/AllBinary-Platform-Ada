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
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.customizers.CustomizersView_Package; use views.admin.customizers.CustomizersView_Package;

package views.admin.customizers.CustomizersValidationView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CustomizersValidationView is tagged;
   type CustomizersValidationView_Access is access all CustomizersValidationView'Class;
   type CustomizersValidationView_Access_Array is array (Natural range <>) of CustomizersValidationView_Access;
   type CustomizersValidationView_Access_Array_Access is access all CustomizersValidationView_Access_Array;

   type CustomizersValidationView is new CustomizersView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CustomizersValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return CustomizersValidationView_Access;
   function isValid (This : in out CustomizersValidationView) return Boolean;
   procedure isValid (This : in out CustomizersValidationView);
   function validationInfo (This : in out CustomizersValidationView) return Unbounded_String;
   procedure validationInfo (This : in out CustomizersValidationView);
   function toValidationInfoDoc (This : in out CustomizersValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out CustomizersValidationView);
   function toValidationInfoNode (This : in out CustomizersValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out CustomizersValidationView; document : Document_Access);

end views.admin.customizers.CustomizersValidationView_Package;


