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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out CategoryPropertiesValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPropertiesValidationView'Class; categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) is
      categoryPropertiesInterface : constant CategoryPropertiesInterface_Access := CategoryPropertiesInterface_Access (categoryPropertiesInterface_Param);
   begin
        CategoryPropertiesView_Package.Initialize (This, categoryPropertiesInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (categoryPropertiesInterface_Param : access CategoryPropertiesInterface_Package.CategoryPropertiesInterface'Class) return CategoryPropertiesValidationView_Access is
      This : constant CategoryPropertiesValidationView_Access := new CategoryPropertiesValidationView;
   begin
      CategoryPropertiesValidationView_Package.Initialize (This.all, categoryPropertiesInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out CategoryPropertiesValidationView) return Boolean is
   begin
        return This.categoryPropertiesInterface.isValid;
   end isValid;

   --  throws Exception
   function validationInfo (This : in out CategoryPropertiesValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.categoryPropertiesInterface.validationInfo);
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation info error"), CategoryPropertiesValidationView_Access'(This'Unchecked_Access), To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Validating Data");
                end;
        end;
   end validationInfo;

   --  throws Exception
   function toValidationInfoDoc (This : in out CategoryPropertiesValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out CategoryPropertiesValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   procedure toValidationInfoNode (This : in out CategoryPropertiesValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CategoryPropertiesValidationView'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package;


