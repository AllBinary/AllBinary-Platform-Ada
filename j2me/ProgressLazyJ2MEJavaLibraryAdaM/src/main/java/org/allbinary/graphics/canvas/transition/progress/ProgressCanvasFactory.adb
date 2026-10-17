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


package body org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package is

   procedure Initialize_Fields (This : in out ProgressCanvasFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ProgressCanvasFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ProgressCanvasFactory_Access is
      This : constant ProgressCanvasFactory_Access := new ProgressCanvasFactory;
   begin
      ProgressCanvasFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ProgressCanvas_Access is
   begin
        if (ProgressCanvasFactory_Package.PROGRESS_FORM_SCREEN) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ProgressCanvasFactory_Package.PROGRESS_FORM_SCREEN := LazyProgressCanvas_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return ProgressCanvas_Access (ProgressCanvasFactory_Package.PROGRESS_FORM_SCREEN);
   end getInstance;

   function getLazyInstance return PaintableInterface_Access is
   begin
        return ProgressCanvasFactory_Package.getInstance;
   end getLazyInstance;

begin
   null;
   PROGRESS_FORM_SCREEN := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;


