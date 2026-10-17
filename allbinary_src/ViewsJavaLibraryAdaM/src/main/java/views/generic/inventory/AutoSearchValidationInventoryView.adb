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


   procedure Initialize (This : in out AutoSearchValidationInventoryView'Class; searchRequest_Param : access SearchRequest'Class) is
      searchRequest : SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
   begin
        InventorySearch_Package.Initialize (This, searchRequest);
   end Initialize;

   function Create (searchRequest_Param : access SearchRequest'Class) return AutoSearchValidationInventoryView_Access is
      This : constant AutoSearchValidationInventoryView_Access := new AutoSearchValidationInventoryView;
   begin
      AutoSearchValidationInventoryView_Package.Initialize (This.all, searchRequest_Param);
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

   function toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   function validationInfo (This : in out AutoSearchValidationInventoryView) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   procedure toValidationInfoNode (This : in out AutoSearchValidationInventoryView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := AutoSearchValidationInventoryView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.generic_Id.inventory.AutoSearchValidationInventoryView_Package;


