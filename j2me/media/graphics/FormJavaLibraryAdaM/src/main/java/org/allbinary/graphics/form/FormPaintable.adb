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


package body org.allbinary.graphics.form.FormPaintable_Package is

   procedure Initialize_Fields (This : in out FormPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out FormPaintable'Class; form : PaintableForm_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.form := form;
   end Initialize;

   function Create (form : PaintableForm_Access) return FormPaintable_Access is
      This : constant FormPaintable_Access := new FormPaintable;
   begin
      Initialize (This.all, form);
      return This;
   end Create;

   procedure paint (This : in out FormPaintable; graphics : Graphics_Access) is
   begin
        This.form.paint (graphics);
   end paint;

   function getForm (This : in out FormPaintable) return PaintableForm_Access is
   begin
        return This.form;
   end getForm;

   procedure getForm (This : in out FormPaintable) is
      Java_Result : constant PaintableForm_Access := FormPaintable'Class (This).getForm;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForm;

end org.allbinary.graphics.form.FormPaintable_Package;


