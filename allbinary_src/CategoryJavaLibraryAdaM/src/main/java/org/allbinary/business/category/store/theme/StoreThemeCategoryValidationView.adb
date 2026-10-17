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


package body org.allbinary.business.category.store.theme.StoreThemeCategoryValidationView_Package is

   procedure Initialize_Fields (This : in out StoreThemeCategoryValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategoryValidationView'Class; categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) is
      categoryInterface : constant StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (categoryInterface_Param);
   begin
        StoreThemeCategoryView_Package.Initialize (This, StoreThemeCategoryInterface_Access (categoryInterface));
   end Initialize;

   function Create (categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) return StoreThemeCategoryValidationView_Access is
      This : constant StoreThemeCategoryValidationView_Access := new StoreThemeCategoryValidationView;
   begin
      StoreThemeCategoryValidationView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out StoreThemeCategoryValidationView) return Boolean is
   begin
        return True;
   end isValid;

   --  throws Exception
   function toValidationInfoDoc (This : in out StoreThemeCategoryValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out StoreThemeCategoryValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out StoreThemeCategoryValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("Error");
   end validationInfo;

   procedure toValidationInfoNode (This : in out StoreThemeCategoryValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StoreThemeCategoryValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoryValidationView_Package;


