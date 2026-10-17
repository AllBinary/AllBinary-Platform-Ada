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


   procedure Initialize (This : in out AutoValidationInventoryView'Class; transformInfoInterface : TransformInfoInterface_Access) is
   begin
        InventoryView_Package.Initialize (This, transformInfoInterface);
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return AutoValidationInventoryView_Access is
      This : constant AutoValidationInventoryView_Access := new AutoValidationInventoryView;
   begin
      AutoValidationInventoryView_Package.Initialize (This.all, transformInfoInterface);
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

   function toValidationInfoNode (This : in out AutoValidationInventoryView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out AutoValidationInventoryView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure toValidationInfoNode (This : in out AutoValidationInventoryView; document : Document_Access) is
      Java_Result : constant Node_Access := AutoValidationInventoryView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.inventory.AutoValidationInventoryView_Package;


