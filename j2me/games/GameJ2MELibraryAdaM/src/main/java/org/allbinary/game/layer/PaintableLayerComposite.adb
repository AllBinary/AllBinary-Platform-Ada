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


package body org.allbinary.game.layer.PaintableLayerComposite_Package is

   procedure Initialize_Fields (This : in out PaintableLayerComposite'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaintableLayerComposite'Class; paintableArray : Layer_Access_Array_Access) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.paintableArray := paintableArray;
   end Initialize;

   function Create (paintableArray : Layer_Access_Array_Access) return PaintableLayerComposite_Access is
      This : constant PaintableLayerComposite_Access := new PaintableLayerComposite;
   begin
      PaintableLayerComposite_Package.Initialize (This.all, paintableArray);
      return This;
   end Create;

   procedure paint (This : in out PaintableLayerComposite; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := This.paintableArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.paintableArray (index).paint (graphics);
        end loop;
   end paint;

   procedure paintThreed (This : in out PaintableLayerComposite; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      paintableInterface : PaintableInterface_Access;
      index : Integer;
   begin
        paintableInterface := null;
        index := This.paintableArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            paintableInterface := PaintableInterface_Access (This.paintableArray (index));
            paintableInterface.paintThreed (graphics);
        end loop;
   end paintThreed;

end org.allbinary.game.layer.PaintableLayerComposite_Package;


