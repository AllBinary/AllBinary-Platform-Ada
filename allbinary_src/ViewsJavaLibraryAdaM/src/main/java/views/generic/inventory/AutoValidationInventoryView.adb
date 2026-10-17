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


package body views.generic_Id.inventory.AutoValidationInventoryView_Package is

   procedure Initialize_Fields (This : in out AutoValidationInventoryView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutoValidationInventoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        InventoryView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AutoValidationInventoryView_Access is
      This : constant AutoValidationInventoryView_Access := new AutoValidationInventoryView;
   begin
      AutoValidationInventoryView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function isValid (This : in out AutoValidationInventoryView) return Boolean is
   begin
        return True;
   end isValid;

   function toValidationInfoDoc (This : in out AutoValidationInventoryView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AutoValidationInventoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out AutoValidationInventoryView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure toValidationInfoNode (This : in out AutoValidationInventoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AutoValidationInventoryView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.inventory.AutoValidationInventoryView_Package;


