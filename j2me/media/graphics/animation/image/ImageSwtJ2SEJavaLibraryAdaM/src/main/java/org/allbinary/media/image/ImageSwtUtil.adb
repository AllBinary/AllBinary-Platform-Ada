-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.eclipse.swt.graphics.Color_Package; use org.eclipse.swt.graphics.Color_Package;
with org.eclipse.swt.graphics.RGB_Package; use org.eclipse.swt.graphics.RGB_Package;
with org.microemu.app.BareMain_Package; use org.microemu.app.BareMain_Package;
with org.eclipse.swt.widgets.Button_Package;
with org.eclipse.swt.widgets.Canvas_Package;
with org.eclipse.swt.widgets.Composite_Package;
with org.eclipse.swt.widgets.Control_Package;
with org.eclipse.swt.widgets.Decorations_Package;
with org.eclipse.swt.graphics.Device_Package;
with org.eclipse.swt.widgets.Display_Package;
with org.eclipse.swt.events.DragDetectEvent_Package;
with org.eclipse.swt.events.DragDetectListener_Package;
with org.eclipse.swt.graphics.Drawable_Package;
with org.eclipse.swt.widgets.Event_Package;
with org.eclipse.swt.graphics.Font_Package;
with org.eclipse.swt.graphics.FontMetrics_Package;
with org.eclipse.swt.graphics.GC_Package;
with org.eclipse.swt.graphics.Image_Package;
with org.eclipse.swt.graphics.ImageData_Package;
with org.eclipse.swt.events.KeyEvent_Package;
with org.eclipse.swt.events.KeyListener_Package;
with org.eclipse.swt.widgets.Layout_Package;
with org.eclipse.swt.widgets.Listener_Package;
with org.eclipse.swt.widgets.Menu_Package;
with org.eclipse.swt.events.MouseEvent_Package;
with org.eclipse.swt.events.MouseListener_Package;
with org.eclipse.swt.events.MouseMoveListener_Package;
with org.eclipse.swt.events.MouseWheelListener_Package;
with org.eclipse.swt.events.PaintEvent_Package;
with org.eclipse.swt.events.PaintListener_Package;
with org.eclipse.swt.graphics.PaletteData_Package;
with org.eclipse.swt.graphics.Point_Package;
with org.eclipse.swt.graphics.RGBA_Package;
with org.eclipse.swt.graphics.Rectangle_Package;
with org.eclipse.swt.graphics.Resource_Package;
with org.eclipse.swt.internal.SWTEventObject_Package;
with org.eclipse.swt.widgets.Scrollable_Package;
with org.eclipse.swt.events.SelectionEvent_Package;
with org.eclipse.swt.events.SelectionListener_Package;
with org.eclipse.swt.widgets.Shell_Package;
with org.eclipse.swt.events.ShellEvent_Package;
with org.eclipse.swt.events.ShellListener_Package;
with org.eclipse.swt.graphics.Transform_Package;
with org.eclipse.swt.events.TypedEvent_Package;
with org.eclipse.swt.widgets.Widget_Package;

package body org.allbinary.media.image.ImageSwtUtil_Package is

   procedure Initialize_Fields (This : in out ImageSwtUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageSwtUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageSwtUtil_Access is
      This : constant ImageSwtUtil_Access := new ImageSwtUtil;
   begin
      ImageSwtUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ImageSwtUtil_Access is
   begin
        return ImageSwtUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := ImageSwtUtil_Package.Create;

end org.allbinary.media.image.ImageSwtUtil_Package;


