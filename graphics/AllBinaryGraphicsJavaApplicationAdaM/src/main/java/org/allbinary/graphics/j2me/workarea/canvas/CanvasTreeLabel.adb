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



package body org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package is

   procedure Initialize_Fields (This : in out CanvasTreeLabel'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasTreeLabel'Class; str : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.label := str;
   end Initialize;

   function Create (str : Unbounded_String) return CanvasTreeLabel_Access is
      This : constant CanvasTreeLabel_Access := new CanvasTreeLabel;
   begin
      CanvasTreeLabel_Package.Initialize (This.all, str);
      return This;
   end Create;

   function toString (This : in out CanvasTreeLabel) return Unbounded_String is
   begin
        return This.label;
   end toString;

end org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;


