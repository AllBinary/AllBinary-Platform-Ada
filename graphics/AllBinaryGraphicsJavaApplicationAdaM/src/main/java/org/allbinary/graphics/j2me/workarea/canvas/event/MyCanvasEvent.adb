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


with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;

package body org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package is

   procedure Initialize_Fields (This : in out MyCanvasEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyCanvasEvent'Class; source_Param : access Java_Object'Class) is
      source : constant Java_Object_Access := Java_Object_Access (source_Param);
   begin
        EventObject_Package.Initialize (This, source);
   end Initialize;

   function Create (source_Param : access Java_Object'Class) return MyCanvasEvent_Access is
      This : constant MyCanvasEvent_Access := new MyCanvasEvent;
   begin
      MyCanvasEvent_Package.Initialize (This.all, source_Param);
      return This;
   end Create;

   function getSource (This : in out MyCanvasEvent) return Java_Object_Access is
   begin
        return EventObject (This).getSource;
   end getSource;

   function toString (This : in out MyCanvasEvent) return Unbounded_String is
   begin
        return EventObject (This).toString;
   end toString;

   function getCommand (This : in out MyCanvasEvent) return Unbounded_String is
      myEventSource : MyCanvasEventSource_Access;
   begin
        myEventSource := MyCanvasEventSource_Access (MyCanvasEvent'Class (This).getSource);
        return myEventSource.getCommand;
   end getCommand;

   function getTreeNode (This : in out MyCanvasEvent) return MutableTreeNode_Access is
      myEventSource : MyCanvasEventSource_Access;
   begin
        myEventSource := MyCanvasEventSource_Access (MyCanvasEvent'Class (This).getSource);
        return myEventSource.getTreeNode;
   end getTreeNode;

   function getAngle (This : in out MyCanvasEvent) return Long_Float is
      myEventSource : MyCanvasEventSource_Access;
   begin
        myEventSource := MyCanvasEventSource_Access (MyCanvasEvent'Class (This).getSource);
        return myEventSource.getAngle;
   end getAngle;

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;


