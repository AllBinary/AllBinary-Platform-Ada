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
with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.workflow.WorkFlowView_Package; use views.admin.workflow.WorkFlowView_Package;

package views.admin.workflow.EditValidationView_Package is

   package WorkFlowEntityFactory_Package renames Standard.org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package WorkFlowData_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type EditValidationView is tagged;
   type EditValidationView_Access is access all EditValidationView'Class;
   type EditValidationView_Access_Array is array (Natural range <>) of EditValidationView_Access;
   type EditValidationView_Access_Array_Access is access all EditValidationView_Access_Array;

   type EditValidationView is new WorkFlowView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      workFlowName : Unbounded_String;
   end record;

   procedure Initialize (This : in out EditValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return EditValidationView_Access;
   function isValid (This : in out EditValidationView) return Boolean;
   procedure isValid (This : in out EditValidationView);
   function validationInfo (This : in out EditValidationView) return Unbounded_String;
   procedure validationInfo (This : in out EditValidationView);
   function toValidationInfoDoc (This : in out EditValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out EditValidationView);
   function toValidationInfoNode (This : in out EditValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out EditValidationView; document : Document_Access);

end views.admin.workflow.EditValidationView_Package;


