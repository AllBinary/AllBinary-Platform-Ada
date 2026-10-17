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


package body org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package is

   procedure Initialize_Fields (This : in out CategoryPropertiesValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryPropertiesValidationView'Class; categoryPropertiesInterface : CategoryPropertiesInterface_Access) is
   begin
        CategoryPropertiesView_Package.Initialize (This, categoryPropertiesInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (categoryPropertiesInterface : CategoryPropertiesInterface_Access) return CategoryPropertiesValidationView_Access is
      This : constant CategoryPropertiesValidationView_Access := new CategoryPropertiesValidationView;
   begin
      Initialize (This.all, categoryPropertiesInterface);
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
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation info error"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
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
   function toValidationInfoNode (This : in out CategoryPropertiesValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   procedure isValid (This : in out CategoryPropertiesValidationView) is
      Java_Result : constant Boolean := CategoryPropertiesValidationView'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out CategoryPropertiesValidationView) is
      Java_Result : constant Unbounded_String := CategoryPropertiesValidationView'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out CategoryPropertiesValidationView) is
      Java_Result : constant Document_Access := CategoryPropertiesValidationView'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out CategoryPropertiesValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := CategoryPropertiesValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.properties.CategoryPropertiesValidationView_Package;


