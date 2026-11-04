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


with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyData_Package; use org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyData_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;

package body org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package is

   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out FontFamilyView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FontFamilyView'Class) is
   begin
        CssPropertyView_Package.Initialize (This, FontFamilyData_Package.getInstance.VALUE);
   end Initialize;

   function Create return FontFamilyView_Access is
      This : constant FontFamilyView_Access := new FontFamilyView;
   begin
      FontFamilyView_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out FontFamilyView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        CssPropertyView_Package.Initialize (This, node);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return FontFamilyView_Access is
      This : constant FontFamilyView_Access := new FontFamilyView;
   begin
      FontFamilyView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;


