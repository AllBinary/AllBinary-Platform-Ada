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
with views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package; use views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package;

package views.business.context.modules.storefront.customizer.includes.globals.EditGlobalsValidationView_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type EditGlobalsValidationView is tagged;
   type EditGlobalsValidationView_Access is access all EditGlobalsValidationView'Class;
   type EditGlobalsValidationView_Access_Array is array (Natural range <>) of EditGlobalsValidationView_Access;
   type EditGlobalsValidationView_Access_Array_Access is access all EditGlobalsValidationView_Access_Array;

   type EditGlobalsValidationView is new GlobalsView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out EditGlobalsValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return EditGlobalsValidationView_Access;
   function isValid (This : in out EditGlobalsValidationView) return Boolean;
   procedure isValid (This : in out EditGlobalsValidationView);
   function validationInfo (This : in out EditGlobalsValidationView) return Unbounded_String;
   procedure validationInfo (This : in out EditGlobalsValidationView);
   function toValidationInfoDoc (This : in out EditGlobalsValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out EditGlobalsValidationView);
   function toValidationInfoNode (This : in out EditGlobalsValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out EditGlobalsValidationView; document : Document_Access);

end views.business.context.modules.storefront.customizer.includes.globals.EditGlobalsValidationView_Package;


