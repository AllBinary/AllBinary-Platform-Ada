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


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package body org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   function "=" (Left, Right : PaintableInterface_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   function "=" (Left, Right : ProgressCanvas_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
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
            ProgressCanvasFactory_Package.PROGRESS_FORM_SCREEN := ProgressCanvas_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return ProgressCanvas_Access (ProgressCanvasFactory_Package.PROGRESS_FORM_SCREEN);
   end getInstance;

   function getLazyInstance return PaintableInterface_Access is
   begin
        return PaintableInterface_Access (NullPaintable_Package.getInstance);
   end getLazyInstance;

begin
   null;
   PROGRESS_FORM_SCREEN := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;


