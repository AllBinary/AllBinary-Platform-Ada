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


package body org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out FontFamilyView'Class; node : Node_Access) is
   begin
        CssPropertyView_Package.Initialize (This, node);
   end Initialize;

   function Create (node : Node_Access) return FontFamilyView_Access is
      This : constant FontFamilyView_Access := new FontFamilyView;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;


