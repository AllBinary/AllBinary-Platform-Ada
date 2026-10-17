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


package body org.allbinary.graphics.paint.PaintableComposite_Package is

   procedure Initialize_Fields (This : in out PaintableComposite'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaintableComposite'Class; paintableArray : PaintableInterface_Access_Array_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.paintableArray := paintableArray;
   end Initialize;

   function Create (paintableArray : PaintableInterface_Access_Array_Access) return PaintableComposite_Access is
      This : constant PaintableComposite_Access := new PaintableComposite;
   begin
      PaintableComposite_Package.Initialize (This.all, paintableArray);
      return This;
   end Create;

   procedure paint (This : in out PaintableComposite; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (This.paintableArray'Length) - (1) loop
            This.paintableArray (index).paint (graphics);
        end loop;
   end paint;

   procedure paintThreed (This : in out PaintableComposite; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        for index in reverse 0 .. (This.paintableArray'Length) - (1) loop
            This.paintableArray (index).paintThreed (graphics);
        end loop;
   end paintThreed;

end org.allbinary.graphics.paint.PaintableComposite_Package;


