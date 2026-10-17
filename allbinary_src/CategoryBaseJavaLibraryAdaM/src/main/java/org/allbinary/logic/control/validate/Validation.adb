-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.logic.control.validate.Validation_Package is

   procedure Initialize_Fields (This : in out Validation'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out Validation'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Validation_Access is
      This : constant Validation_Access := new Validation;
   begin
      Validation_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function isValid (This : in out Validation) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   --  throws Exception
   function toValidationInfoNode (This : in out Validation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end toValidationInfoNode;

   --  throws Exception
   function toValidationInfoDoc (This : in out Validation) return Document_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end toValidationInfoDoc;

   --  throws Exception
   function validationInfo (This : in out Validation) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end validationInfo;

   procedure toValidationInfoNode (This : in out Validation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := Validation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.logic.control.validate.Validation_Package;


