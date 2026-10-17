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


package body org.allbinary.logic.control.validate.GenericValidator_Package is

   procedure Initialize_Fields (This : in out GenericValidator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericValidator'Class) is
   begin
      ValidatorBase_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericValidator_Access is
      This : constant GenericValidator_Access := new GenericValidator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function toValidationInfoDoc (This : in out GenericValidator) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out GenericValidator; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoDoc (This : in out GenericValidator) is
      Java_Result : constant Document_Access := GenericValidator'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out GenericValidator; document : Document_Access) is
      Java_Result : constant Node_Access := GenericValidator'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.control.validate.GenericValidator_Package;


