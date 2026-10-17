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


package body views.generic_Id.inventory.AutoSearchValidationInventoryView_Package is

   procedure Initialize_Fields (This : in out AutoSearchValidationInventoryView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out AutoSearchValidationInventoryView'Class; searchRequest : SearchRequest_Access) is
   begin
        InventorySearch_Package.Initialize (This, searchRequest);
   end Initialize;

   function Create (searchRequest : SearchRequest_Access) return AutoSearchValidationInventoryView_Access is
      This : constant AutoSearchValidationInventoryView_Access := new AutoSearchValidationInventoryView;
   begin
      Initialize (This.all, searchRequest);
      return This;
   end Create;

   function isValid (This : in out AutoSearchValidationInventoryView) return Boolean is
   begin
        return True;
   end isValid;

   function toValidationInfoDoc (This : in out AutoSearchValidationInventoryView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out AutoSearchValidationInventoryView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure isValid (This : in out AutoSearchValidationInventoryView) is
      Java_Result : constant Boolean := AutoSearchValidationInventoryView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure toValidationInfoDoc (This : in out AutoSearchValidationInventoryView) is
      Java_Result : constant Document_Access := AutoSearchValidationInventoryView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document : Document_Access) is
      Java_Result : constant Node_Access := AutoSearchValidationInventoryView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure validationInfo (This : in out AutoSearchValidationInventoryView) is
      Java_Result : constant Unbounded_String := AutoSearchValidationInventoryView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

end views.generic_Id.inventory.AutoSearchValidationInventoryView_Package;


