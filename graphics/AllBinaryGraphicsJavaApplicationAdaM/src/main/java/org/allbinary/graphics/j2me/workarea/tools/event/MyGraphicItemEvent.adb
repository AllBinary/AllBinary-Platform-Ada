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


package body org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package is

   procedure Initialize_Fields (This : in out MyGraphicItemEvent'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyGraphicItemEvent'Class; source_Param : access Java_Object'Class) is
      source : Java_Object_Access := Java_Object_Access (source_Param);
   begin
        EventObject_Package.Initialize (This, source);
   end Initialize;

   function Create (source_Param : access Java_Object'Class) return MyGraphicItemEvent_Access is
      This : constant MyGraphicItemEvent_Access := new MyGraphicItemEvent;
   begin
      MyGraphicItemEvent_Package.Initialize (This.all, source_Param);
      return This;
   end Create;

   function getSource (This : in out MyGraphicItemEvent) return Java_Object_Access is
   begin
        return EventObject (This).getSource;
   end getSource;

   function toString (This : in out MyGraphicItemEvent) return Unbounded_String is
   begin
        return EventObject (This).toString;
   end toString;

   function getCommand (This : in out MyGraphicItemEvent) return Unbounded_String is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getCommand;
   end getCommand;

   function getTreeNode (This : in out MyGraphicItemEvent) return MutableTreeNode_Access is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getTreeNode;
   end getTreeNode;

   function getAngle (This : in out MyGraphicItemEvent) return Long_Float is
      myEventSource : MyGraphicItemEventSource_Access;
   begin
        myEventSource := MyGraphicItemEventSource_Access (This.getSource);
        return myEventSource.getAngle;
   end getAngle;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;


