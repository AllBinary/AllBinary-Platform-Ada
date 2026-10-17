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
      Initialize (This.all, name);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CssPropertyView'Class; node : Node_Access) is
   begin
      Initialize_Fields (This);
        This.cssProperty := CssProperty_Package.Create (node);
   end Initialize;

   function Create (node : Node_Access) return CssPropertyView_Access is
      This : constant CssPropertyView_Access := new CssPropertyView;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   function getProperty (This : in out CssPropertyView) return CssProperty_Access is
   begin
        return This.cssProperty;
   end getProperty;

   --  throws Exception
   function toXmlNode (This : in out CssPropertyView; document : Document_Access) return Node_Access is
   begin
        return This.cssProperty.toXmlNode (document);
   end toXmlNode;

   procedure getProperty (This : in out CssPropertyView) is
      Java_Result : constant CssProperty_Access := CssPropertyView'Class (This).getProperty;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProperty;

   procedure toXmlNode (This : in out CssPropertyView; document : Document_Access) is
      Java_Result : constant Node_Access := CssPropertyView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;


