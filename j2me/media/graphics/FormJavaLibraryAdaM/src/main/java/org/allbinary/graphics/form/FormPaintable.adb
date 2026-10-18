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


   procedure Initialize (This : in out FormPaintable'Class; form_Param : access PaintableForm_Package.PaintableForm'Class) is
      form : constant PaintableForm_Access := PaintableForm_Access (form_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.form := form;
   end Initialize;

   function Create (form_Param : access PaintableForm_Package.PaintableForm'Class) return FormPaintable_Access is
      This : constant FormPaintable_Access := new FormPaintable;
   begin
      FormPaintable_Package.Initialize (This.all, form_Param);
      return This;
   end Create;

   procedure paint (This : in out FormPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.form.paint (graphics);
   end paint;

   function getForm (This : in out FormPaintable) return PaintableForm_Access is
   begin
        return This.form;
   end getForm;

end org.allbinary.graphics.form.FormPaintable_Package;


