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


package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package is

   procedure Initialize_Fields (This : in out CssPropertyView'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CssPropertyView'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.cssProperty := CssProperty_Package.Create (name);
   end Initialize;

   function Create (name : Unbounded_String) return CssPropertyView_Access is
      This : constant CssPropertyView_Access := new CssPropertyView;
   begin
      CssPropertyView_Package.Initialize (This.all, name);
      return This;
   end Create;

   procedure Initialize (This : in out CssPropertyView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        This.cssProperty := CssProperty_Package.Create (node);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return CssPropertyView_Access is
      This : constant CssPropertyView_Access := new CssPropertyView;
   begin
      CssPropertyView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function getProperty (This : in out CssPropertyView) return CssProperty_Access is
   begin
        return This.cssProperty;
   end getProperty;

   --  throws Exception
   function toXmlNode (This : in out CssPropertyView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return This.cssProperty.toXmlNode (document);
   end toXmlNode;

   procedure toXmlNode (This : in out CssPropertyView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CssPropertyView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;


