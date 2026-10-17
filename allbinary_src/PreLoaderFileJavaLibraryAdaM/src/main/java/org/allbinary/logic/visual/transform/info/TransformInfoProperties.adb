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


package body org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package is

   procedure Initialize_Fields (This : in out TransformInfoProperties'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoProperties'Class; name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.label := label;
        This.description := description;
        This.objectFileName := objectFileName;
        This.templateFileName := templateFileName;
        This.objectConfigFileName := objectConfigFileName;
   end Initialize;

   function Create (name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String) return TransformInfoProperties_Access is
      This : constant TransformInfoProperties_Access := new TransformInfoProperties;
   begin
      Initialize (This.all, name, label, description, objectFileName, objectConfigFileName, templateFileName);
      return This;
   end Create;

   procedure setName (This : in out TransformInfoProperties; value : Unbounded_String) is
   begin
        This.name := value;
   end setName;

   procedure setDescription (This : in out TransformInfoProperties; value : Unbounded_String) is
   begin
        This.description := value;
   end setDescription;

   procedure setViewFile (This : in out TransformInfoProperties; value : Unbounded_String) is
   begin
        This.objectFileName := value;
   end setViewFile;

   procedure setTemplateFile (This : in out TransformInfoProperties; value : Unbounded_String) is
   begin
        This.templateFileName := value;
   end setTemplateFile;

   procedure setObjectConfigFile (This : in out TransformInfoProperties; value : Unbounded_String) is
   begin
        This.objectConfigFileName := value;
   end setObjectConfigFile;

   function getName (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getLabel (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.label;
   end getLabel;

   function getDescription (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.description;
   end getDescription;

   function getViewFile (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.objectFileName;
   end getViewFile;

   function getTemplateFile (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.templateFileName;
   end getTemplateFile;

   function getObjectConfigFile (This : in out TransformInfoProperties) return Unbounded_String is
   begin
        return This.objectConfigFileName;
   end getObjectConfigFile;

   procedure getName (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getLabel (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getLabel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLabel;

   procedure getDescription (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getDescription;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDescription;

   procedure getViewFile (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getViewFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getViewFile;

   procedure getTemplateFile (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getTemplateFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateFile;

   procedure getObjectConfigFile (This : in out TransformInfoProperties) is
      Java_Result : constant Unbounded_String := TransformInfoProperties'Class (This).getObjectConfigFile;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigFile;

end org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;


