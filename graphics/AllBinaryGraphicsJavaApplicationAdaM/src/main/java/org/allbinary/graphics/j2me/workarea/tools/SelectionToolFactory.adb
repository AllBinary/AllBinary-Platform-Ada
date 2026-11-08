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


with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package; use org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;

package body org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package is

   subtype CanvasJPanel_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access;
   function "=" (Left, Right : CanvasJPanel_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References."=";
   subtype CanvasJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array;
   function "=" (Left, Right : CanvasJPanel_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References."=";
   subtype CanvasJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access;
   function "=" (Left, Right : CanvasJPanel_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References."=";
   subtype CanvasJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References."=";
   subtype CanvasJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References."=";
   subtype GraphicItemInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access;
   function "=" (Left, Right : GraphicItemInterface_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array;
   function "=" (Left, Right : GraphicItemInterface_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   procedure Initialize_Fields (This : in out SelectionToolFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SelectionToolFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SelectionToolFactory_Access is
      This : constant SelectionToolFactory_Access := new SelectionToolFactory;
   begin
      SelectionToolFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out SelectionToolFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return GraphicItemInterface_Access is
      canvasJPanel : constant CanvasJPanel_Access := CanvasJPanel_Access (canvasJPanel_Param);
   begin
        return GraphicItemInterface_Access (SelectionTool_Package.Create (canvasJPanel));
   end getInstance;

   procedure getInstance (This : in out SelectionToolFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) is
      Java_Result : constant GraphicItemInterface_Access := SelectionToolFactory'Class (This).getInstance (canvasJPanel_Param => canvasJPanel_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.graphics.j2me.workarea.tools.SelectionToolFactory_Package;


